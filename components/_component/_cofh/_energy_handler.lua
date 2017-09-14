---@class component.energy_handler : component_proxy
local energy_handler = {}

---Returns the amount of stored energy for the given side.
---@param optional direction number
---@return number
function energy_handler.getEnergyStored(direction) end

---Returns the maximum amount of stored energy for the given side
---@param optional direction number
---@return number
function energy_handler.getMaxEnergyStored(direction) end

return energy_handler