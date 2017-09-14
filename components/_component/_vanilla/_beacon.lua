---@class component.beacon : component_proxy
local beacon = {}

---Get the number of levels for this beacon.
---@return number
function beacon.getLevels() end

---Get the name of the active primary effect.
---@return string
function beacon.getPrimaryEffect() end

---Get the name of the active secondary effect.
---@return string
function beacon.getSecondaryEffect() end

return beacon