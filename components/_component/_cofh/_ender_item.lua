---@class component.ender_item : component_proxy
local ender_item = {}

---Returns whether the tile entity can receive items.
---@return boolean
function ender_item.canReceiveItems() end

---Returns whether the tile entity can send items.
---@return boolean
function ender_item.canSendItems() end

---Returns the frequency.
---@return number
function ender_item.getFrequency() end

---Sets the frequency to the given value. Returns whether the frequency change was successful
---@param frequency number
---@return boolean
function ender_item.setFrequency(frequency) end

---Returns the name of the channel.
---@return string
function ender_item.getChannelString() end

return ender_item