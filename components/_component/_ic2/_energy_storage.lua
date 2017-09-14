---@class component.energy_storage : component_proxy
local energy_storage = {}

---@return number
function energy_storage.getCapacity() end
---@return number
function energy_storage.getOutput() end
---@return number
function energy_storage.getStored() end

return energy_storage