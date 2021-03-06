---@class component.sign : component_proxy
local sign = {}

---Gets the text currently displayed on the sign in front of the robot, or nil and an error message if there is no sign in front of the robot.
---@return string | nil, string
function sign.getValue() end

---Sets the text of the sign in front of the robot. Returns the new text on the sign (which may be a truncated version of the passed argument) or nil and an error message if there is no sign in front of the robot.
---@param value string
---@return string | nil, string
function sign.setValue(value) end

return sign
