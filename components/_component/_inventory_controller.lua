---@class component.inventory_controller : component_proxy
local inventory_controller = {}

---@class _item_stack
_item_stack = {
    ---The current damage value of the item.
    damage = 0,
    ---the maximum damage this item can have before it breaks.
    maxDamage = 0,
    ---the current stack size of the item.
    size = 0,
    ---the maximum stack size of this item.
    maxSize = 0,
    ---the Minecraft id of the item. Note that this depends on the server's config setting and can vary between servers!
    id = 0,
    ---the untranslated item name, which is an internal Minecraft value like oc:item.FloppyDisk
    name = "",
    ---whether or not the item has an NBT tag associated with it.
    hasTag = false
}

---Returns the size of the inventory at the specified side. side - must be a valid side.
---Returns: the size of the inventory, or nil followed by a description why this function failed (usually no inventory).
---@param side number
---@return number|nil, string
function inventory_controller.getInventorySize(side) end

---Returns a table describing the item in the specified slot or nil. Deprecated for getting info about robot's own inventory, see getStackInInternalSlot.
---side - must be a valid side.
---Gets Itemstack description of item in specified or selected slot (if no input provided) of robot inventory.slot - the slot to analyze. This does not check the inventory size and will consider slots outside the inventory bounds to be empty.
---Gets Itemstack description of item in specified or selected slot (if no input provided) of robot inventory.Returns: nil if the slot was empty (or outside the inventory's bounds), a table otherwise with the following
---@param side number
---@param slot number
---@return _item_stack|nil
function inventory_controller.getStackInSlot(side, slot) end

---Gets Itemstack description of item in specified or selected slot (if no input provided) of robot inventory.
---@param slot number
---@return _item_stack|nil
function inventory_controller.getStackInInternalSlot(slot) end

---Puts up to count items from the currently selected slot into the specified slot of the inventory at the specified side.
---side - a valid side.
---slot - the slot to drop the item into.
---count - how many items to transfer.
---Returns: true if at least one item was moved, false and a secondary result that describes the error otherwise.
---Note that the robot cannot drop items into it's own inventory, attempting to do so will cause this to throw an error. You need to use robot.transferTo from the Robot API to do so.
---@param side number
---@param slot number
---@param optional count number
---@return boolean, string
function inventory_controller.dropIntoSlot(side, slot, count) end

---Takes up to count items from the specified slot of the inventory at the specified side and puts them into the currently selected slot.
---side - a valid side.
---slot - the slot to take the item from.
---count - how many items to transfer.
---Returns: true if at least one item was moved, false otherwise.
---If the currently selected slot is occupied, then the items will be stacked with similar items in the robot's inventory or moved to the next free slot if available. If no slot is available this operation will fail.
---Note that the robot cannot suck items from it's own inventory, attempting to do so will cause this to throw an error. You need to use robot.transferTo from the Robot API to do so.
---@param side number
---@param slot number
---@param optional count number
---@return boolean
function inventory_controller.suckFromSlot(side, slot, count) end

---Swaps the content of the robot's tool slot with the content of the currently selected inventory slot.
---Returns: true if the items were swapped, false otherwise. This operation usually succeeds.
---Note that you can put any kind of item into the robot's tool slot, not only tools, even items that the robot cannot use at all.
---@return void
function inventory_controller.equip() end

---Stores the Itemstack description of the item from the specified slot in an inventory on the specified side, into a specified database slot with the specified address.
---@param side number
---@param slot number
---@param dbAddress string
---@param dbSlot number
---@return boolean
function inventory_controller.store(side, slot, dbAddress, dbSlot) end

---Stores Itemstack description of item in specified robot inventory slot into specified database slot with the specified database address.
---@param slot number
---@param dbAddress string
---@param dbSlot number
---@return boolean
function inventory_controller.storeInternal(slot, dbAddress, dbSlot) end

---Compare Itemstack description in specified slot with one in specified slot of a database with specified address. Returns true if items match.
---@param slot number
---@param dbAddress string
---@param dbSlot number
---@return boolean
function inventory_controller.compareToDatabase(slot, dbAddress, dbSlot) end

---Checks to see if Itemstack descriptions in specified slotA and slotB of inventory on specified side match. Returns true if identical.
---@param side number
---@param slotA number
---@param slotB number
---@return boolean
function inventory_controller.compareStacks(side, slotA, slotB) end

---Gets maximum number of items in specified slot in inventory on the specified side.
---@param side number
---@param slot number
---@return number
function inventory_controller.getSlotMaxStackSize(side, slot) end

---Gets number of items in specified slot in inventory on the specified side.
---@param side number
---@param slot number
---@return number
function inventory_controller.getSlotStackSize(side, slot) end

return inventory_controller
