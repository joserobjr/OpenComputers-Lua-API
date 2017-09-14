---@class component.redstone : component_proxy
local redstone = {}

---Gets the current ingoing redstone signal from the specified side. Note that the side is relative to the computer's orientation, i.e. sides.south is in front of the computer, not south in the world. Likewise, sides.left is to the left of the computer, so when you look at the computer's front, it'll be to your right.
---If you use mods such as RedLogic the input may exceed the vanilla values of [0, 15].
---@param side number
---@return number
function redstone.getInput(side) end

---Gets the currently set output on the specified side.
---@param side number
---@return number
function redstone.getOutput(side) end

---Sets the strength of the redstone signal to emit on the specified side. Returns the new value.
---This can be an arbitrarily large number for mods that support this. For vanilla interaction it is clamped to the interval [0, 15].
---@param side number
---@return number
function redstone.getComparatorInput(side) end

---Get the comparator input on the specified side.
---@param side number
---@param color number
---@return number
function redstone.getBundledInput(side, color) end

---Like getInput, but for bundled input, reading the value for the channel with the specified API/Colors.
---As of OC 1.3: only available on a tier two redstone card.
---@param side number
---@param color number
---@return number
function redstone.getBundledOutput(side, color) end

---Like getOutput, but for bundled output, getting the value for the channel with the specified API/Colors.
---As of OC 1.3: only available on a tier two redstone card.
---@param side number
---@param color number
---@param value number
---@return number
function redstone.setBundledOutput(side, color, value) end

---Like setOutput, but for bundled output, setting the value for the channel with the specified API/Colors.
---As of OC 1.3: only available on a tier two redstone card.
---@param side number
---@param values table
---@return boolean
function redstone.setBundledOutput(side, values) end

---Shortcut to set the value of all colors at once. Expects a table with 16 fields, where the index corresponds with the number of the color as documented in API/Colors. Always returns true.
---Warning: By default, Lua starts indexing tables with 1, so when you enter something along the lines of {15,0,0,[…],0} it doesn't activate white as expected, but orange.
---Manually set your indices to circumvent this.
---As of OC 1.3: only available on a tier two redstone card.
---@return number
function redstone.getWirelessInput() end

---Get the wireless redstone output.
---Added in OC 1.3. Only available on tier two redstone cards.
---@return boolean
function redstone.getWirelessOutput() end

---Set the wireless redstone output.
---Added in OC 1.3. Only available on tier two redstone cards.
---@param value boolean
---@return boolean
function redstone.setWirelessOutput(value) end

---Get the currently set wireless redstone frequency.
---Added in OC 1.3. Only available on tier two redstone cards.
---@return number
function redstone.getWirelessFrequency() end

---Set the wireless redstone frequency to use.
---Added in OC 1.3. Only available on tier two redstone cards.
---@param frequency number
---@return number
function redstone.setWirelessFrequency(frequency) end

---Gets the current wake-up threshold.
---@return number
function redstone.getWakeThreshold() end

---Sets the wake-up threshold to the specified number.
---@param threshold number
---@return number
function redstone.setWakeThreshold(threshold) end

return redstone