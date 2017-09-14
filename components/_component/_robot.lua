---@class component.component_robot : component.robot_base
local robot = {}

---
---@param direction number
---@return boolean
function robot.move(direction) end

---
---@param clockwise boolean
---@return boolean
function robot.turn(clockwise) end

return robot
