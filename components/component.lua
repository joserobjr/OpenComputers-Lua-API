---@class component_proxy
---@field address string
---@field slot number
---@field type string

---@class bios_component
local component = {}

---@param address string
---@param method string
---@return string|nil
function component.doc(address, method) end

---@param filter string
---@param optional exact boolean
---@return table
function component.list(filter, exact) end

---@param filter string
---@return table
function component.list(filter) end

---@param address string
---@return table
function component.fields(address) end

---@param address string
---@param method string
---@param optional args any
---@return any
function component.invoke(address, method, args, ...) end

---@param address string
---@return string|nil, string
function component.type(address) end


---@param address string
---@return _cmp_prx|nil,string
function component.proxy(address) end

---@param address string
---@return table|nil, string
function component.methods(address) end

---@param address string
---@return number|nil, string
function component.slot(address) end

---@class direct_component : bios_component
---@field public printer3d component.printer3d
---@field public access_point component.access_point
---@field public chunkloader component.chunkloader
---@field public crafting component.crafting
---@field public data component.data
---@field public database component.database
---@field public debug component.debug
---@field public drone component.drone
---@field public drive component.drive
---@field public eeprom component.eeprom
---@field public experience component.experience
---@field public filesystem component.filesystem
---@field public generator component.generator
---@field public geolyzer component.geolyzer
---@field public gpu component.gpu
---@field public hologram component.hologram
---@field public internet component.internet
---@field public inventory_controller component.inventory_controller
---@field public leash component.leash
---@field public modem component.modem
---@field public motion_sensor component.motion_sensor
---@field public navigation component.navigation
---@field public piston component.piston
---@field public redstone component.redstone
---@field public robot robot
---@field public screen component.screen
---@field public sign component.sign
---@field public tank_controller component.tank_controller
---@field public tractor_beam component.tractor_beam
---@field public tunnel component.tunnel
---@field public world_sensor component.world_sensor
---@field public beacon component.beacon
---@field public brewing_stand component.brewing_stand
---@field public command_block component.command_block
---@field public comparator component.comparator
---@field public fluid_handler component.fluid_handler
---@field public fluid_tank component.fluid_tank
---@field public mob_spawner component.mob_spawner
---@field public note_block component.note_block
---@field public mass_fab component.mass_fab
---@field public reactor component.reactor
---@field public energy_sink component.energy_sink
---@field public energy_source component.energy_source
---@field public energy_storage component.energy_storage
---@field public reactor_chamber component.reactor_chamber
---@field public me_controller component_proxy
---@field public me_interface component.me_interface
---@field public me_importbus component.me_importbus
---@field public me_exportbus component.me_exportbus
---@field public bee_housing component.bee_housing
---@field public forestry_analyzer component.forestry_analyzer
---@field public lamp component.lamp
---@field public drawbridge component.drawbridge
---@field public steam_turbine component.steam_turbine
---@field public boiler_firebox component.boiler_firebox
---@field public deep_storage_unit component.deep_storage_unit
---@field public ender_fluid component.ender_fluid
---@field public ender_item component.ender_item
---@field public energy_handler component.energy_handler
---@field public gt_energyContainer component.gt_energyContainer

---@class primary_component : direct_component
local component = {}

---@param componentType string
---@return _cmp
function component.getPrimary(componentType) end

---@param address string
---@return boolean
function component.isPrimary(address) end

---@param address string
---@param optional componentType string
---@return string|nil, string
function component.get(address, componentType) end

---@param componentType string
---@param optional address string
---@return void
function component.setPrimary(componentType, address) end

---@param componentType string
---@return boolean
function component.isAvailable(componentType) end

return component
