---@class component.robot_base : component_proxy
local robot = {}

---
---@param side number
---@param optional fuzzy boolean
---@return boolean
function robot.compare(side, fuzzy) end

---
---@param side number
---@return boolean
function robot.compareFluid(side) end

---
---@param tank number
---@return boolean
function robot.compareFluidTo(tank) end

---
---@param otherSlot number
---@return boolean
function robot.compareTo(otherSlot) end

---
---@param optional slot number
---@return boolean
function robot.count(slot) end

---
---@param side number
---@return boolean
function robot.detect(side) end

---
---@param optional count number
---@return boolean
function robot.drain(count) end

---
---@param side number
---@param optional count number
---@return boolean
function robot.drop(side, count) end

---
---@return number
function robot.durability() end

---
---@param optional count number
---@return boolean
function robot.fill(count) end

---
---@return number
function robot.getLightColor() end

---
---@return number
function robot.inventorySize() end

---
---@return string
function robot.name() end

---
---@param side number
---@param optional sneaky boolean
---@return boolean, string
function robot.place(side, sneaky) end

---
---@param optional slot number
---@return number
function robot.select(slot) end

---
---@param tank number
---@return void
function robot.selectTank(tank) end

---
---@param value number
---@return number
function robot.setLightColor(value) end

---
---@param optional slot number
---@return number
function robot.space(slot) end

---
---@param side number
---@param optional count number
---@return boolean
function robot.suck(side, count) end

---
---@param side number
---@return boolean, string
function robot.swing(side) end

---
---@return number
function robot.tankCount() end

---
---@param optional tank number
---@return number
function robot.tankLevel(tank) end

---
---@param optional tank number
---@return number
function robot.tankSpace(tank) end

---
---@param tank number
---@param optional count number
---@return boolean
function robot.transferFluidTo(tank, count) end

---
---@param side number
---@param sneaky boolean
---@param optional duration boolean
---@return boolean, string
function robot.use(side, sneaky, duration) end

---
---@param side number
---@param optional sneaky boolean
---@return boolean, string
function robot.use(side, sneaky) end

return robot