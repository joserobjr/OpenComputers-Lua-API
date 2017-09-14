---@class component.me_interface : component_proxy
local me_interface = {}

---
---@param optional slot
---@return table
function me_interface.getInterfaceConfiguration(slot) end

---Configure the interface.
---@param optional slot number
---@param database address
---@param entry number
---@param optional size number
---@return boolean
function me_interface.setInterfaceConfiguration(slot, database, entry, size) end

---Configure the interface.
---@param optional slot number
---@return boolean
function me_interface.setInterfaceConfiguration(slot, database, entry, size) end

return me_interface