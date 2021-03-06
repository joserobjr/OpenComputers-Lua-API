---@class component.chunkloader : component_proxy
local chunkloader = {}

---Returns whether the chunkloader is currently active.
--- @return boolean
function chunkloader.isActive() end

---Enables or disables the chunkloader. Returns the new state, which may be false if no chunk loading ticket could be acquired.
--- @param enabled boolean
function chunkloader.setActive(enabled) end

return chunkloader
