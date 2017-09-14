---@class component.ender_fluid : component_proxy
local ender_fluid = {}


---Returns whether the tile entity can receive fluids.
---@return boolean
function ender_fluid.canReceiveFluid() end

---Returns whether the tile entity can send fluids.
---@return boolean
function ender_fluid.canSendFluid() end

---Returns the frequency.
---@return number
function ender_fluid.getFrequency() end

---Returns the name of the channel.
---@return string
function ender_fluid.getChannelString() end

---Sets the frequency to the given value. Returns whether the frequency change was successful
---@param frequency number
---@return boolean
function ender_fluid.setFrequency(frequency) end

return ender_fluid