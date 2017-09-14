---@class component.deep_storage_unit : component_proxy
local deep_storage_unit = {}

---
---@return number
function deep_storage_unit.getMaxStoredCount() end

---
---@return number
function deep_storage_unit.getStoredCount() end

---
---@return table|void, string
function deep_storage_unit.getStoredItemType() end

return deep_storage_unit