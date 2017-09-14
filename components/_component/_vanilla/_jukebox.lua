---@class component.jukebox : component_proxy
local jukebox = {}

---Get the title of the record currently in the jukebox.
---@return string
function jukebox.getRecord() end

---Start playing the record currently in the jukebox.
---@return boolean
function jukebox.play() end

---Stop playing the record currently in the jukebox
---@return void
function jukebox.stop() end

return jukebox