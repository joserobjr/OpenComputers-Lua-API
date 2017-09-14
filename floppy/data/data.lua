--local component = require("component")

local data = {}

-------------------------------------------------------------------------------
--- Converts binary data into hexadecimal string.
---@param data string
---@return string
function data.toHex(data)
    return (data:gsub('.', function (c)
        return string.format('%02X', string.byte(c))
    end))
end

--- Converts hexadecimal string into binary data.
---@param hex string
---@return string
function data.fromHex(hex)
    return (hex:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))
end

-- Forward everything else to the primary data card.
-- setmetatable(data, { __index = function(_, key) return component.data[key] end })

data.address = ""
---Computes CRC-32 hash of the data. Result is in binary format
--- @param data string
--- @return string
function data.crc32(data) end

---Applies base64 decoding to the data.
--- @param data string
--- @return string
function data.decode64(data) end

---Applies base64 encoding to the data.
--- @param data string
--- @return string
function data.encode64(data) end

---Computes MD5 hash of the data. Result is in binary format
--- @param data string
--- @return string
function data.md5(data) end

---Computes SHA2-256 hash of the data. Result is in binary format.
--- @param data string
--- @return string
function data.sha256(data) end

---Applies deflate compression to the data.
--- @param data string
--- @return string
function data.deflate(data) end

---Applies inflate decompression to the data.
--- @param data string
--- @return string
function data.inflate(data) end

---The maximum size of data that can be passed to other functions of the card.
--- @return number
function data.getLimit() end

---Applies AES encryption to the data using the key and (preferably) random IV.
--- @param data string
--- @param key string
--- @param iv string
--- @return string
function data.encrypt(data, key, iv) end

---Reverses AES encryption on the data using the key and the IV.
--- @param data string
--- @param key string
--- @param iv string
--- @return string
function data.decrypt(data, key, iv) end

---Generates a random binary string of len length.
--- @param len number
--- @return string
function data.random(len) end

--- Generates a public/private key pair for various cryptiographic functions.
--- Optional second parameter specifies key length, 256 or 384 bits accepted.
--- Key types include “ec-public” and “ec-private”. Keys can be serialized with
--- key.serialize():string Keys also contain the function key.isPublic():boolean
--- @param optional bitLen number
--- @return table, table
function data.generateKeyPair(bitLen) end

--- Generates a signiture of data using a private key. If signature is present
--- verifies the signature using the public key and the previously generated
--- generated signature string. and the original string.
---@param data string
---@param key userdata
---@param sig string
--- @return string | boolean
function data.ecdsa(data, key, sig) end

--- Generates a Diffie-Hellman shared key using the first user's private key and
--- the second user's public key. An example of a basic key relation:
---@param privateKey userdata
---@param publicKey userdata
---@return string
function data.ecdh(privateKey, publicKey) end

--- Transforms a key from string to it's arbitrary type.
---@param data string
---@param type string
---@return table
function data.deserializeKey(data, type) end

-------------------------------------------------------------------------------

return data