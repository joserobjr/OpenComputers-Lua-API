---@class component.forestry_analyzer : component_proxy
local forestry_analyzer = {}

---Get whether the analyzer can work.
---@return boolean
function forestry_analyzer.isWorking() end

---Get the progress of the current operation.
---@return number
function forestry_analyzer.getProgress() end

---Get info on the currently present bee.
---@return table
function forestry_analyzer.getIndividualOnDisplay() end

return forestry_analyzer