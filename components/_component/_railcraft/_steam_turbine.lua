---@class component.steam_turbine : component_proxy
local steam_turbine = {}

---Returns the output of the steam turbine
---@return number
function steam_turbine.getTurbineOutput() end

---Returns the durability of the rotor in percent.
---@return number
function steam_turbine.getTurbineRotorStatus() end

return steam_turbine