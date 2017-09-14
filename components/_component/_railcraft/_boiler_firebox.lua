---@class  component.boiler_firebox : component_proxy
local boiler_firebox = {}

---Get whether the boiler is active or not
---@return boolean
function boiler_firebox.isBurning() end

---Get the temperature of the boiler.
---@return number
function boiler_firebox.getTemperature() end

---Get the maximum temperature of the boiler.
---@return number
function boiler_firebox.getMaxHeat() end

return boiler_firebox