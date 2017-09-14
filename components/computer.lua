---@class bios_computer
local computer = {}

---The component address of this computer.
---@return string
function computer.address() end
---The component address of the computer's temporary file system (if any), used for mounting it on startup.
---@return string
function computer.tmpAddress() end
---The amount of memory currently unused, in bytes. If this gets close to zero your computer will probably soon crash with an out of memory error. Note that for OpenOS, it is highly recommended to at least have 1x tier 1.5 RAM stick or more. The os will boot on a single tier 1 ram stick, but quickly and easily run out of memory.
---@return number
function computer.freeMemory() end
---The total amount of memory installed in this computer, in bytes.
---@return number
function computer.totalMemory() end
---The amount of energy currently available in the network the computer is in. For a robot this is the robot's own energy / fuel level.
---@return number
function computer.energy() end
---The maximum amount of energy that can be stored in the network the computer is in. For a robot this is the size of the robot's internal buffer (what you see in the robot's GUI).
---@return number
function computer.maxEnergy() end
---The time in real world seconds this computer has been running, measured based on the world time that passed since it was started - meaning this will not increas
---@return number
function computer.uptime() end
---Shuts down the computer. Optionally reboots the computer, if reboot is true, i.e. shuts down, then starts it again automatically. This function never returns.
---@param optional reboot boolean
---@return void
function computer.shutdown(reboot) end
---Get the address of the filesystem component from which to try to boot first. New since OC 1.3.
---@return string
function computer.getBootAddress() end
---Set the address of the filesystem component from which to try to boot first. Call with nil / no arguments to clear. New since OC 1.3.
---@param optional address string
---@return void
function computer.setBootAddress(address) end
---A list of all users registered on this computer, as a tuple. To iterate the result as a list, use table.pack on it, first.
---@return string,...
function computer.users() end
---Registers a new user with this computer. Returns true if the user was successfully added. Returns nil and an error message otherwise.
---The user must be currently in the game. The user will gain full access rights on the computer. In the shell, useradd USER is a command line option to invoke this method.
---@param name string
---@return boolean|nil, string
function computer.addUser(name) end
---Unregisters a user from this computer. Returns true if the user was removed, false if they weren't registered in the first place.
---The user will lose all access to this computer. When the last user is removed from the user list, the computer becomes accessible to all players. userdel USER is a command line option to invoke this method.
---@param name string
---@return boolean
function computer.removeUser(name) end
---Pushes a new signal into the queue. Signals are processed in a FIFO order. The signal has to at least have a name. Arguments to pass along with it are optional. Note that the types supported as signal parameters are limited to the basic types nil, boolean, number and string, tables and functions are not supported.
---@param name string
---@param optional data any
---@return void
function computer.pushSignal(name, data, ...) end
---Tries to pull a signal from the queue, waiting up to the specified amount of time before failing and returning nil. If no timeout is specified waits forever.
---Pushes a new signal into the queue. Signals are processed in a FIFO order. The signal has to at least have a name. Arguments to pass along with it are optional. Note that the types supported as signal parameters are limited to the basic types nil, boolean, number and string, tables and functions are not supported.The first returned result is the signal name, following results correspond to what was pushed in pushSignal, for example. These vary based on the even type.
---Pushes a new signal into the queue. Signals are processed in a FIFO order. The signal has to at least have a name. Arguments to pass along with it are optional. Note that the types supported as signal parameters are limited to the basic types nil, boolean, number and string, tables and functions are not supported.important Please use event.pull instead. It returns the same data, provides a more advanced API, and does not interfere with proper driver operation. Do not call this method unless
---Pushes a new signal into the queue. Signals are processed in a FIFO order. The signal has to at least have a name. Arguments to pass along with it are optional. Note that the types supported as signal parameters are limited to the basic types nil, boolean, number and string, tables and functions are not supported.You do not have the event library available, or
---Your intent is to disable driver code from functioning normally (such as component, filesystem, keyboard, and term)
---@param optional timeout
---@return string, any, ...
function computer.pullSignal(timeout) end

---@class os_computer : bios_computer
local computer = {}

---Returns the current runlevel the computer is in. Current Runlevels in OpenOS are:
---
---S: Single-User mode, no components or filesystems initialized yet
---1: Single-User mode, filesystems and components initialized - OpenOS finished booting
---@return string|number
function computer.runlevel() end

return computer