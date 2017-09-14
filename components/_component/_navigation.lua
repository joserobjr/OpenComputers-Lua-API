---@class component.navigation : component_proxy
local navigation = {}

---
---@return number number number, nil string
function navigation.getPosition() end

---
---@return number
function navigation.getFacing() end

---
---@return number
function navigation.getRange() end

---
---@return table
function navigation.findWaypoints(range) end

return navigation
