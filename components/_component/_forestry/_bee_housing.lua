---@class component.bee_housing : component_proxy
local bee_housing = {}

---Can the bees breed?
---@return boolean
function bee_housing.canBreed() end

---Get the drone
---@return _item_stack
function bee_housing.getDrone() end

---Get the queen
---@return _item_stack
function bee_housing.getQueen() end

---Get the full breeding list thingy.
---@return table
function bee_housing.getBeeBreedingData() end

--- Get all known bees mutations
---@return table
function bee_housing.listAllSpecies() end

---Get the parents for a particular mutation
---@param beeName string
---@return table
function bee_housing.getBeeParents(beeName) end

return bee_housing