---@class component.energy_conductor : component_proxy
local energy_conductor = {}

---@return number
function energy_conductor.getConductionLoss() end
---@return number
function energy_conductor.getConductorBreakdownEnergy() end
---@return number
function energy_conductor.getInsulationBreakdownEnergy() end
---@return number
function energy_conductor.getInsulationEnergyAbsorption() end

return energy_conductor