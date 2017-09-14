---@class component.gpu : component_proxy
local gpu = {}

---Tries to bind the GPU to a screen with the specified address. Returns true on success, false and an error message on failure. Resets the screen's settings if reset is 'true'. A GPU can only be bound to one screen at a time. All operations on it will work on the bound screen. If you wish to control multiple screens at once, you'll need to put more than one graphics card into your computer.
---@param address string
---@param optional reset boolean
---@return boolean, string
function gpu.bind(address, reset) end

---Get the address of the screen the GPU is bound to. Since 1.3.2.
---@return string
function gpu.getScreen() end

---Gets the current background color. This background color is applied to all “pixels” that get changed by other operations.
---Note that the returned number is either an RGB value in hexadecimal format, i.e. 0xRRGGBB, or a palette index. The second returned value indicates which of the two it is (true for palette color, false for RGB value).
---@return number, boolean
function gpu.getBackground() end

---Sets the background color to apply to “pixels” modified by other operations from now on. The returned value is the old background color, as the actual value it was set to (i.e. not compressed to the color space currently set). The first value is the previous color as an RGB value. If the color was from the palette, the second value will be the index in the palette. Otherwise it will be nil. Note that the color is expected to be specified in hexadecimal RGB format, i.e. 0xRRGGBB. This is to allow uniform color operations regardless of the color depth supported by the screen and GPU.
---@param color number
---@param optional isPalleteIndex boolean
---@return number, index
function gpu.setBackground(color, isPalleteIndex) end

---Like getBackground, but for the foreground color.
---@return number, boolean
function gpu.getForeground() end

---Like setBackground, but for the foreground color.
---@param color number
---@param optional isPalleteIndex boolean
---@return number, index
function gpu.setForeground(color, isPalleteIndex) end

---Gets the RGB value of the color in the palette at the specified index.
---@param index number
---@return number
function gpu.getPalleteColor(index) end

---Sets the RGB value of the color in the palette at the specified index.
---@param index number
---@param value number
---@return number
function gpu.setPalleteColor(index, value) end

---Gets the maximum supported color depth supported by the GPU and the screen it is bound to (minimum of the two).
---@return number
function gpu.maxDepth() end

---The currently set color depth of the GPU/screen, in bits. Can be 1, 4 or 8.
---@return number
function gpu.getDepth() end

---Sets the color depth to use. Can be up to the maximum supported color depth. If a larger or invalid value is provided it will throw an error. Returns true if the depth was set, false otherwise.
---@param bit number
---@return boolean
function gpu.setDepth(bit) end

---Gets the maximum resolution supported by the GPU and the screen it is bound to (minimum of the two).
---@return number, number
function gpu.maxResolution() end

---Gets the currently set resolution.
---@return number, number
function gpu.getResolution() end

---Sets the specified resolution. Can be up to the maximum supported resolution. If a larger or invalid resolution is provided it will throw an error. Returns true if the resolution was set, false otherwise.
---@param width number
---@param height number
---@return boolean
function gpu.setResolution(width, height) end

---Gets the size in blocks of the screen the graphics card is bound to. For simple screens and robots this will be one by one.
---Deprecated use screen.getAspectRatio() instead.
---@return number number
function gpu.getSize() end

---Gets the character currently being displayed at the specified coordinates. The second and third returned values are the fore- and background color, as hexvalues. If the colors are from the palette, the fourth and fifth values specify the palette index of the color, otherwise they are nil.
---@param x number
---@param y number
---@return string, number, number, number|nil, number|nil
function gpu.get(x, y) end

---Writes a string to the screen, starting at the specified coordinates. The string will be copied to the screen's buffer directly, in a single row. This means even if the specified string contains line breaks, these will just be printed as special characters, the string will not be displayed over multiple lines. Returns true if the string was set to the buffer, false otherwise.
---The optional fourth argument makes the specified text get printed vertically instead, if true.
---@param x number
---@param y number
---@param value string
---@param optional vertical boolean
---@return boolean
function gpu.set(x, y, value, vertical) end

---Copies a portion of the screens buffer to another location. The source rectangle is specified by the x, y, width and height parameters. The target rectangle is defined by x + tx, y + ty, width and height. Returns true on success, false otherwise.
---@param x number
---@param y number
---@param width number
---@param height number
---@param tx number
---@param ty number
---@return boolean
function gpu.copy(x, y, width, height, tx, ty) end

---Fills a rectangle in the screen buffer with the specified character. The target rectangle is specified by the x and y coordinates and the rectangle's width and height. The fill character char must be a string of length one, i.e. a single character. Returns true on success, false otherwise.
---Note that filling screens with spaces ( ) is usually less expensive, i.e. consumes less energy, because it is considered a “clear” operation (see config).
---@param x number
---@param y number
---@param width number
---@param height number
---@param char string
---@return boolean
function gpu.fill(x, y, width, height, char) end

return gpu
