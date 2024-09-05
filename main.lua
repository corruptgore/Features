-- Main
local Time = require("libraries/time")
local UI = require("libraries/UI/init")
local Sounds = require("sounds/init")
local Sprites = require("sprites/init")

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
end