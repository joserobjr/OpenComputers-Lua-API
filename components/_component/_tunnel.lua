---@class component.tunnel : component_proxy
local tunnel = {}

---Sends the specified data to the card this one is linked to.
function tunnel.send(data, ...) end

---Gets the maximum packet size (config setting).
---@return number
function tunnel.maxPacketSize() end

return tunnel