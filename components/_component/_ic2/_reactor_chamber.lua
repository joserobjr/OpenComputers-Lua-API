---@class  component.reactor_chamber : component_proxy
local reactor_chamber = {}

---Get the reactor's heat.
---@return number
function reactor_chamber.getHeat() end

---Get the reactor's maximum heat before exploding.
---@return number
function reactor_chamber.getMaxHeat() end

---Get the reactor's energy output. Not multiplied with the base EU/t value.
---@return number
function reactor_chamber.getReactorEnergyOutput() end

---Get the reactor's base EU/t value.
---@return number
function reactor_chamber.getReactorEUOutput() end

---Get whether the reactor is active and supposed to produce energy.
---@return boolean
function reactor_chamber.producesEnergy() end

return reactor_chamber