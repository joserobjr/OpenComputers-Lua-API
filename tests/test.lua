local component = require("component")
local event = require("event").timer(interval, callback, times)
local api = require("buffer")


---@class A
local A = {}

function A:methodA() end

---@class B : A
local B = {}

function B:methodB() end

---@type B
local x = {}

function x:methodA() end
