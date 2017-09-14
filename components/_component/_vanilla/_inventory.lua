---@class component.inventory : component_proxy
local inventory = {}

---Get the name of this inventory.
---@return string
function inventory.getInventoryName() end

---Get the number of slots in this inventory.
---@return number
function inventory.getInventorySize() end

---Get the stack size of the item stack in the specified slot.
---@param slot number
---@return number
function inventory.getSlotStackSize(slot) end

---Get the maximum stack size of the item stack in the specified slot.
---@param slot number
---@return number
function inventory.getSlotMaxStackSize(slot) end

---Compare the two item stacks in the specified slots for equality.
---@param slotA number
---@param slotB number
---@return boolean
function inventory.compareStacks(slotA, slotB) end

---Move up to the specified number of items from the first specified slot to the second.
---@param slotA number
---@param slotB number
---@param optional count number
---@return boolean
function inventory.transferStack(slotA, slotB, count) end

---Get a description of the item stack in the specified slot.
---@param slot number
---@return _item_stack
function inventory.getStackInSlot() end

---Get a list of descriptions for all item stacks in this inventory.
---@return table
function inventory.getAllStacks() end

return inventory
