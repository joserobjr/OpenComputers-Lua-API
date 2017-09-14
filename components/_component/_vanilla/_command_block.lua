---@class component.command_block : component_proxy
local command_block = {}

---Get the command currently set in this command block.
---@return string
function command_block.getCommand() end

---Set the specified command for the command block.
---@param value string
---@return boolean
function command_block.setCommand(value) end

---Execute the currently set command. This has a slight delay to allow the command block to properly update.
---@return number, string
function command_block.executeCommand() end

return command_block