---@class component.reactor : component_proxy
local reactor = {}

---Get the reactor's heat.
---@return number
function reactor.getHeat() end

---Get the reactor's maximum heat before exploding.
---@return number
function reactor.getMaxHeat() end

---Get the reactor's energy output. Not multiplied with the base EU/t value.
---@return number
function reactor.getReactorEnergyOutput() end

---Get the reactor's base EU/t value.
---@return number
function reactor.getReactorEUOutput() end

---Get whether the reactor is active and supposed to produce energy.
---@return number
function reactor.producesEnergy() end

return reactor
