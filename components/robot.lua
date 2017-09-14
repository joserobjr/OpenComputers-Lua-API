---@class robot
local robot = {}
---
---@return string
function robot.name() end
---
---@return string|boolean
function robot.detect() end
---
---@return string|boolean
function robot.detectUp() end
---
---@return string|boolean
function robot.detectDown() end
---
---@param optional slot number
---@return number
function robot.select(slot) end
---
---@return number
function robot.inventorySize() end
---
---@param optional slot number
---@return number
function robot.count(slot) end
---
---@param optional slot number
---@return number
function robot.space(slot) end
---
---@param slot number
---@param optional count number
---@return boolean
function robot.transferTo(slot, count) end
---
---@param slot number
---@return boolean
function robot.compareTo(slot) end
---
---@param fuzzy boolean
---@return boolean
function robot.compare(fuzzy) end
---
---@param fuzzy boolean
---@return boolean
function robot.compareUp(fuzzy) end
---
---@param fuzzy boolean
---@return boolean
function robot.compareDown(fuzzy) end
---
---@param optional count number
---@return boolean
function robot.drop(count) end
---
---@return boolean
function robot.dropUp() end
---
---@return boolean
function robot.dropDown() end
---
---@param optional count number
---@return boolean
function robot.suck(count) end
---
---@param optional count number
---@return boolean
function robot.suckUp(count) end
---
---@param optional count number
---@return boolean
function robot.suckDown(count) end
---
---@param side number
---@param optional sneaky boolean
---@return boolean, string
function robot.place(side, sneaky) end
---
---@param optional side number
---@param optional sneaky boolean
---@return boolean, string
function robot.placeUp(side, sneaky) end
---
---@param optional side number
---@param optional sneaky boolean
---@return boolean, string
function robot.placeDown(side, sneaky) end
---
---@return number, number, number|nil, string
function robot.durability() end
---
---@param optional side number
---@param optional sneaky boolean
---@return boolean, string
function robot.swing(side, sneaky) end
---
---@param optional side number
---@param optional sneaky boolean
---@return boolean, string
function robot.swingUp(side, sneaky) end
---
---@param optional side number
---@param optional sneaky boolean
---@return boolean, string
function robot.swingDown(side, sneaky) end
---
---@param optional side number
---@param optional sneaky boolean
---@param optional duration number
---@return boolean, string
function robot.use(side, sneaky, duration) end
---
---@param optional side number
---@param optional sneaky boolean
---@param optional duration number
---@return boolean, string
function robot.useUp(side, sneaky, duration) end
---
---@param optional side number
---@param optional sneaky boolean
---@param optional duration number
---@return boolean, string
function robot.useDown(side, sneaky, duration) end
---
---@return boolean, string
function robot.forward() end
---
---@return boolean, string
function robot.back() end
---
---@return boolean, string
function robot.up() end
---
---@return boolean, string
function robot.down() end
---
---@return void
function robot.turnLeft() end
---
---@return void
function robot.turnRight() end
---
---@return void
function robot.turnAround() end
---
---@return number
function robot.level() end
---
---@return number
function robot.tankCount() end
---
---@param tank number
---@return void
function robot.selectTank(tank) end
---
---@param optional tank number
---@return number
function robot.tankLevel(tank) end
---
---@return number
function robot.tankSpace() end
---
---@param tank number
---@return boolean
function robot.compareFluidTo(tank) end
---
---@param tank number
---@param optional count number
---@return boolean
function robot.transferFluidTo(tank, count) end
---
---@return boolean
function robot.compareFluid() end
---
---@return boolean
function robot.compareFluidUp() end
---
---@return boolean
function robot.compareFluidDown() end
---
---@param optional count number
---@return boolean
function robot.drain(count) end
---
---@param optional count number
---@return boolean
function robot.drainUp(count) end
---
---@param optional count number
---@return boolean
function robot.drainDown(count) end
---
---@param optional count number
---@return boolean
function robot.fill(count) end
---
---@param optional count number
---@return boolean
function robot.fillUp(count) end
---
---@param optional count number
---@return boolean
function robot.fillDown(count) end

return robot
