---@class component.geolyzer : component_proxy
local geolyzer = {}

---Analyzes the density of the column at the specified relative coordinates. This will return a list of hardness values for the blocks in the specified range. The coordinates are relative to the location of the geolyzer. Hardness values for blocks further away from the geolyzer are more noisy than those for blocks nearby.
---@param x number
---@param z number
---@return table
function geolyzer.scan(x,z) end
---Analyzes the density of the column at the specified relative coordinates. This will return a list of hardness values for the blocks in the specified range. The coordinates are relative to the location of the geolyzer. Hardness values for blocks further away from the geolyzer are more noisy than those for blocks nearby.
---@param x number
---@param z number
---@param y number
---@param w number
---@param d number
---@param h number
---@return table
function geolyzer.scan(x,z,y,w,d,h) end
---Analyzes the density of the column at the specified relative coordinates. This will return a list of hardness values for the blocks in the specified range. The coordinates are relative to the location of the geolyzer. Hardness values for blocks further away from the geolyzer are more noisy than those for blocks nearby.
---@param x number
---@param z number
---@param y number
---@param w number
---@param d number
---@param h number
---@param ignoreReplaceable boolean
---@return table
function geolyzer.scan(x,z,y,w,d,h, ignoreReplaceable) end
---Analyzes the density of the column at the specified relative coordinates. This will return a list of hardness values for the blocks in the specified range. The coordinates are relative to the location of the geolyzer. Hardness values for blocks further away from the geolyzer are more noisy than those for blocks nearby.
---@param x number
---@param z number
---@param y number
---@param w number
---@param d number
---@param h number
---@param options table
---@return table
function geolyzer.scan(x,z,y,w,d,h, options) end

---Get some information on a directly adjacent block. By default the returned table returns the string ID of the block (e.g. minecraft:dirt, metadata, hardness and some more information). Note that a single call to this consumes the same amount of energy a call to scan does!
---This method can be disabled with the misc.allowItemStackInspection setting in the config.
---@param side number
---@param optional table
---@return
function geolyzer.analyze(side, options) end

---Stores an item stack representation of the block on the specified side of the geolyzer to the specified slot of a database component with the specified address. Do not expect this to work (well) for every block in existence, in particular not for mod's blocks that are differentiated by NBT data (such as robots).
---@param side number
---@param dbAddress string
---@param dbSlot number
---@return
function geolyzer.store(side, dbAddress, dbSlot) end

return geolyzer
