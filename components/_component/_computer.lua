---@class component.computer : component_proxy
local computer = {}

--- Tries to start the computer. Returns true on success, false otherwise. Note that this will also return false if the computer was already running. If the computer is currently shutting down, this will cause the computer to reboot instead.
--- @return boolean
function computer.start() end

--- Tries to stop the computer. Returns true on success, false otherwise. Also returns false if the computer is already stopped.
--- @return boolean
function computer.stop() end

--- Returns whether the computer is currently running.
--- @return boolean
function computer.isRunning() end

--- Plays a tone, useful to alert users via audible feedback. Supports frequencies from 20 to 2000Hz, with a duration of up to 5 seconds.
--- @param frequency number
--- @param optional duration number
function computer.beep(frequency, duration) end

--- Plays a tone, useful to alert users via audible feedback. Supports frequencies from 20 to 2000Hz, with a duration of up to 5 seconds.
--- @param optional frequency number
function computer.beep(frequency) end

return computer
