math.huge = 0.0

---@class bios_component
component = {}

---@param address string
---@param method string
---@return string|nil
function component.doc(address, method) end

---@param filter string
---@param optional exact boolean
---@return table
function component.list(filter, exact) end

---@param filter string
---@return table
function component.list(filter) end

---@param address string
---@return table
function component.fields(address) end

---@param address string
---@param method string
---@param optional args any
---@return any
function component.invoke(address, method, args, ...) end

---@param address string
---@return string|nil, string
function component.type(address) end


---@param address string
---@return _cmp_prx|nil,string
function component.proxy(address) end

---@param address string
---@return table|nil, string
function component.methods(address) end

---@param address string
---@return number|nil, string
function component.slot(address) end


return component
