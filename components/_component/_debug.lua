---@class component.debug : component_proxy
local debug = {}

---@class debug_world
local _db_worlddata = {}

---
---@param x number
---@param y number
---@param z number
---@return number
function _db_worlddata.getMetadata(x, y, z) end

---
---@param x number
---@param y number
---@param z number
---@return number
function _db_worlddata.getBlockId(x, y, z) end

---
---@return number
function _db_worlddata.getDimensionId() end

---
---@param x number
---@param y number
---@param z number
---@return number
function _db_worlddata.isLoaded(x, y, z) end

---
---@return number
function _db_worlddata.getSeed() end

---
---@param amount number
---@param x number
---@param y number
---@param z number
---@param side number
---@return boolean
function _db_worlddata.removeFluid(amount, x, y, z, side) end

---
---@param id string
---@param amount number
---@param x number
---@param y number
---@param z number
---@param side number
---@return boolean
function _db_worlddata.insertFluid(id, amount, x, y, z, side) end

---
---@return string
function _db_worlddata.getDimensionName() end

---
---@return number
function _db_worlddata.getTime() end

---
---@param value number
---@return void
function _db_worlddata.setTime(value) end

---
---@param x number
---@param y number
---@param z number
---@return number
function _db_worlddata.getLightValue(x, y, z) end

---
---@return boolean
function _db_worlddata.isRaining() end

---
---@param value number
---@return void
function _db_worlddata.setRaining(value) end

---
---@return boolean
function _db_worlddata.isThundering() end

---
---@param value boolean
---@return void
function _db_worlddata.setThundering(value) end

---
---@param x number
---@param y number
---@param z number
---@param id number|string
---@param meta number
---@return number
function _db_worlddata.setBlock(x, y, z, id, meta) end

---
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param id number|string
---@param meta number
---@return number
function _db_worlddata.setBlocks(x1, y1, z1, x2, y2, z2, id, meta) end

---
---@param x number
---@param y number
---@param z number
---@param slot number
---@param optional count number
---@return number
function _db_worlddata.removeItem(x, y, z, slot, count) end

---
---@param id string
---@param count number
---@param damage number
---@param nbt string
---@param x number
---@param y number
---@param z number
---@param side number
---@return boolean
function _db_worlddata.insertItem(id, count, damage, nbt, x, y, z, side) end

---
---@return number, number, number
function _db_worlddata.getSpawnPoint() end

---
---@param x number
---@param y number
---@param z number
---@return void
function _db_worlddata.setSpawnPoint(x, y, z) end

---
---@param x number
---@param y number
---@param z number
---@return number
function _db_worlddata.canSeeSky(x, y, z) end

---
---@param x number
---@param y number
---@param z number
---@return number
function _db_worlddata.getLightOpacity(x, y, z) end

---
---@param x number
---@param y number
---@param z number
---@return number
function _db_worlddata.hasTileEntity(x, y, z) end

---@class debug_player
local _db_playerdata = {}

---
---@return debug_world
function _db_playerdata.getWorld() end


---
---@return string
function _db_playerdata.getGameType() end

---
---@param gameType string
---@return void
function _db_playerdata.setGameType(gameType) end

---
---@return number
function _db_playerdata.getHealth() end

---
---@param health number
---@return void
function _db_playerdata.setHealth(health) end

---
---@return number
function _db_playerdata.getMaxHealth() end

---
---@return number, number, number
function _db_playerdata.getPosition() end

---
---@param x number
---@param y number
---@param z number
---@return void
function _db_playerdata.setPosition(x, y, z) end

---
---@param value number
---@return number
function debug.changeBuffer(value) end

---
---@param x number
---@param y number
---@param z number
---@return boolean
function debug.connectToBlock(x, y, z) end

---
---@param name string
---@return debug_player
function debug.getPlayer(name) end

---
---@return table
function debug.getPlayers() end

---
---@param optional id number
---@return debug_world
function debug.getWorld(id) end

---
---@return table
function debug.getWorlds() end

---
---@return number
function debug.getX() end

---
---@return number
function debug.getY() end

---
---@return number
function debug.getZ() end

---
---@param name string
--- @return boolean
function debug.isModLoaded(name) end

---
---@param command string
---@return number
function debug.runCommand(command) end

---
---@return userdata
function debug.test() end

return debug
