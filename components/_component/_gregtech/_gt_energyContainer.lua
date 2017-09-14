---@class component.gt_energyContainer : component_proxy
local gt_energyContainer = {}

---Returns the amount of electricity contained in this Block, in EU units!
---@return number
function gt_energyContainer.getStoredEU() end

---Returns the amount of electricity containable in this Block, in EU units!
---@return number
function gt_energyContainer.getEUCapacity() end

---Returns the amount of Steam containable in this Block, in EU units!
---@return number
function gt_energyContainer.getSteamCapacity() end

---Returns the amount of Steam contained in this Block, in EU units!
---@return number
function gt_energyContainer.getStoredSteam() end

---Gets the Output in EU/p.
---@return number
function gt_energyContainer.getOutputVoltage() end

---Gets the amount of Energy Packets per tick.
---@return number
function gt_energyContainer.getOutputAmperage() end

---Gets the maximum Input in EU/p.
---@return number
function gt_energyContainer.getInputVoltage() end

---Returns the amount of Electricity, accepted by this Block the last 5 ticks as Average.
---@return number
function gt_energyContainer.getAverageElectricInput() end

---Returns the amount of Electricity, outputted by this Block the last 5 ticks as Average.
---@return number
function gt_energyContainer.getAverageElectricOutput() end

return gt_energyContainer