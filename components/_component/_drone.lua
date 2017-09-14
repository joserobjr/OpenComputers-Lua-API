---@class component.drone : component.robot_base
local drone = {}

---
---@return string
function drone.getStatusText() end

---
---@return string
function drone.setStatusText(value) end

---
---@return void
function drone.move(dx, dy, dz) end

---
---@return number
function drone.getOffset() end

---
---@return number
function drone.getVelocity() end

---
---@return number
function drone.getMaxVelocity() end

---
---@return number
function drone.getAcceleration() end

---
---@param value number
---@return number
function drone.setAcceleration(value) end

---
---@return number
function drone.getLightColor() end

---
---@param value number
---@return number
function drone.setLightColor(value) end

return drone
