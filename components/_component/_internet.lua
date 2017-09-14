---@class component.internet : component_proxy
local internet = {}

---Tries to read data from the response. Returns the read byte array.
---@param n number
---@return string
function http_request.read(n) end

---Get response code, message and headers.
---@return number, string, table
function http_request.response() end

---Closes an open socket stream.
function http_request.close() end

---Ensures a response is available. Errors if the connection failed.
---@return boolean
function http_request.finishConnect() end

---Tries to read data from the socket stream. Returns the read byte array.
---@param n number
---@return string
function tcp_socket.read(n) end

---Closes an open socket stream.
function tcp_socket.close() end

---Tries to write data to the socket stream. Returns the number of bytes written.
---@param data string
---@return number
function tcp_socket.write(data) end

---Ensures a socket is connected. Errors if the connection failed.
---@return boolean
function tcp_socket.finishConnect() end

---Returns whether TCP connections can be made (config setting).
---@return boolean
function internet.isTcpEnabled() end

---Returns whether HTTP requests can be made (config setting).
---@return boolean
function internet.isHttpEnabled() end

---Opens a new TCP connection. Returns the handle of the connection.
---@param address string
---@param optional port number
---@return tcp_socket
function internet.connect(address, port) end

---Sends a new HTTP request. Returns the handle of the connection.
---@param url string
---@param postData string
---@param optional headers table
---@return http_request
function internet.request(url, postData, headers) end

---Sends a new HTTP request. Returns the handle of the connection.
---@param url string
---@param optional postData string
---@return http_request
function internet.request(url, postData) end

return internet