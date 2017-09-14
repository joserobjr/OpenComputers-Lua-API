---@class component.note_block : component_proxy
local note_block = {}

---Get the currently set pitch on this note block.
---@return boolean
function note_block.getPitch() end

---Set the pitch for this note block. Must be in the interval [1, 25].
---@param value number
---@return boolean
function note_block.setPitch(value) end

---Triggers the note block if possible. Allows setting the pitch for to save a tick.
---@param optional pitch number
---@return boolean
function note_block.trigger(pitch) end

return note_block