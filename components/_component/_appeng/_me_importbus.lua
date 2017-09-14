---@class component.me_importbus : component_proxy
local me_importbus = {}

---Get the configuration of the import bus pointing in the specified direction.
---@param side number
---@param optional slot number
---@return boolean
function me_importbus.getImportConfiguration(side, slot) end

---Configure the import bus pointing in the specified direction to import item stacks matching the specified descriptor.
---@param side number
---@param slot number
---@param database address
---@param entry number
---@return boolean
function me_importbus.setImportConfiguration(side, slot, database, entry) end

---Configure the import bus pointing in the specified direction to import item stacks matching the specified descriptor.
---@param side number
---@param optional slot number
---@return boolean
function me_importbus.setImportConfiguration(side, slot) end

return me_importbus