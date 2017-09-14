---@class component.me_exportbus : component_proxy
local me_exportbus = {}


---DEPRECATED, use getExportConfiguration.
---@param side number
---@param optional slot number
---@return boolean
function me_exportbus.getConfiguration(side, slot) end

---DEPRECATED, use setExportConfiguration.
---@param side number
---@param slot number
---@param database address
---@param entry number
---@return boolean
function me_exportbus.setConfiguration(side, slot, database, entry) end

---DEPRECATED, use setExportConfiguration.
---@param side number
---@param optional slot number
---@return boolean
function me_exportbus.setConfiguration(side, slot) end

---Get the configuration of the export bus pointing in the specified direction.
---@param side number
---@param optional slot
---@return boolean
function me_exportbus.getExportConfiguration(side, slot) end

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side number
---@param slot number
---@param database address
---@param entry number
---@return boolean
function me_exportbus.setExportConfiguration(side, slot, database, entry) end

---Configure the export bus pointing in the specified direction to export item stacks matching the specified descriptor.
---@param side number
---@param optional slot number
---@return boolean
function me_exportbus.setExportConfiguration(side, slot) end

---Make the export bus facing the specified direction perform a single export operation into the specified slot.
---@param side number
---@param slot number
---@return boolean
function me_exportbus.exportIntoSlot(side, slot) end

return me_exportbus