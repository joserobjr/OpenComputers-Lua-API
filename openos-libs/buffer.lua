local computer = require("computer")
local unicode = require("unicode")

---@class api.buffer.stream
local _stream = {}

--- Close handles, release resources, disconnect – and return success
---@return boolean, string
function _stream.close() end

--- Write arg as bytes, assume a string of plain unformatted chars. Return falsey and reason on failure.
---@param arg string
---@return boolean, string
function _stream.write(arg) end

--- Return n bytes, and not n unicode-aware chars. Assume your data is binary data and let the buffer library manage the mode and the unicode string packaging (if applicable). Note that this is exactly how the filesystem library operates.The caller assumes there is more data to read until nil is returned. A empty string or a string shorter than n chars long is a valid return, but the caller may assume there is more data to request until nil is returned.
---@param n number
---@return boolean, string
function _stream.read(n) end

--- Refer to b:seek() for details. In short, move the stream position to offset from whence, and return the offset from the start of the stream of the position after the seek operation. Note that seek("cur", 0) is a valid request, typical of the caller wanting to determine the current position of the stream. Your stream is not required to support seek, in such case (or in any case of failure) you should return nil, and the reason (as a string) for the failure.
---@param optional whence string
---@param optional offset number
---@return number|boolean, string
function _stream.seek(whence, offset) end

---@class buffer : file
local buffer = {}
local metatable = {
  __index = buffer,
  __metatable = "file"
}

---@param optional mode string
---@param stream api.buffer.stream
---@return api.buffer
function buffer.new(mode, stream)
  local result = {
    mode = {},
    stream = stream,
    bufferRead = "",
    bufferWrite = "",
    bufferSize = math.max(512, math.min(8 * 1024, computer.freeMemory() / 8)),
    bufferMode = "full",
    readTimeout = math.huge
  }
  mode = mode or "r"
  for i = 1, unicode.len(mode) do
    result.mode[unicode.sub(mode, i, i)] = true
  end
  return setmetatable(result, metatable)
end

---@return void
function buffer:close()
  if self.mode.w or self.mode.a then
    self:flush()
  end
  self.closed = true
  return self.stream:close()
end

---@return void
function buffer:flush()
  if #self.bufferWrite > 0 then
    local tmp = self.bufferWrite
    self.bufferWrite = ""
    local result, reason = self.stream:write(tmp)
    if result then
      self.bufferWrite = ""
    else
      if reason then
        return nil, reason
      else
        return nil, "bad file descriptor"
      end
    end
  end

  return self
end

---@param optional line_formats
---@return array
function buffer:lines(...)
  local args = table.pack(...)
  return function()
    local result = table.pack(self:read(table.unpack(args, 1, args.n)))
    if not result[1] and result[2] then
      error(result[2])
    end
    return table.unpack(result, 1, result.n)
  end
end

local function readChunk(self)
  if computer.uptime() > self.timeout then
    error("timeout")
  end
  local result, reason = self.stream:read(math.max(1,self.bufferSize))
  if result then
    self.bufferRead = self.bufferRead .. result
    return self
  else -- error or eof
    return nil, reason
  end
end

function buffer:readLine(chop, timeout)
  self.timeout = timeout or (computer.uptime() + self.readTimeout)
  local start = 1
  while true do
    local buf = self.bufferRead
    local i = buf:find("[\r\n]", start)
    local c = i and buf:sub(i,i)
    local is_cr = c == "\r"
    if i and (not is_cr or i < #buf) then
      local n = buf:sub(i+1,i+1)
      if is_cr and n == "\n" then
        c = c .. n
      end
      local result = buf:sub(1, i - 1) .. (chop and "" or c)
      self.bufferRead = buf:sub(i + #c)
      return result
    else
      start = #self.bufferRead - (is_cr and 1 or 0)
      local result, reason = readChunk(self)
      if not result then
        if reason then
          return nil, reason
        else -- eof
          local result = #self.bufferRead > 0 and self.bufferRead or nil
          self.bufferRead = ""
          return result
        end
      end
    end
  end
end

function buffer:read(...)
  if not self.mode.r then
    return nil, "read mode was not enabled for this stream"
  end

  if self.mode.w or self.mode.a then
    self:flush()
  end

  local formats = table.pack(...)
  if formats.n == 0 then
    return self:readLine(true)
  end
  return require("tools/buffered_read").read(self, readChunk, formats)
end

---@param optional whence string
---@param optional offset number
function buffer:seek(whence, offset)
  return require("tools/buffered_read").seek(self, whence, offset)
end

---@param optional mode string
---@param optional size number
function buffer:setvbuf(mode, size)
  mode = mode or self.bufferMode
  size = size or self.bufferSize

  assert(mode == "no" or mode == "full" or mode == "line",
    "bad argument #1 (no, full or line expected, got " .. tostring(mode) .. ")")
  assert(mode == "no" or type(size) == "number",
    "bad argument #2 (number expected, got " .. type(size) .. ")")

  self.bufferMode = mode
  self.bufferSize = size

  return self.bufferMode, self.bufferSize
end

function buffer:getTimeout()
  return self.readTimeout
end

function buffer:setTimeout(value)
  self.readTimeout = tonumber(value)
end

function buffer:write(...)
  if self.closed then
    return nil, "bad file descriptor"
  end
  if not self.mode.w and not self.mode.a then
    return nil, "write mode was not enabled for this stream"
  end
  local args = table.pack(...)
  for i = 1, args.n do
    if type(args[i]) == "number" then
      args[i] = tostring(args[i])
    end
    checkArg(i, args[i], "string")
  end

  for i = 1, args.n do
    local arg = args[i]
    local result, reason

    if self.bufferMode == "no" then
      result, reason = self.stream:write(arg)
    else
      result, reason = require("tools/buffered_write").write(self, arg)
    end

    if not result then
      return nil, reason
    end
  end

  return self
end

return buffer
