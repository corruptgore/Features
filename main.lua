-- Main
local Time = require("libraries/time")
local UI = require("libraries/UI/init")
local Sounds = require("libraries/sounds/init")
local Sprites = require("libraries/sprites/init")

debug_mode = true

function love.load()
    UI.load()
    Sounds.load()
    Sprites.load()
end

function love.update(dt)
    Time.update(dt)
    UI.update(dt)
    Sounds.update(dt)
    Sprites.update(dt)
end

function love.draw()
    UI.draw()
    Sprites.draw()
    if debug_mode then
        Time.draw()
    end
end