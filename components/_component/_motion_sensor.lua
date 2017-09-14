---@class component.motion_sensor : component_proxy
local motion_sensor = {}

---
---@return number
function motion_sensor.getSensitivity() end

---
---@param value number
---@return number
function motion_sensor.setSensitivity(value) end

return motion_sensor