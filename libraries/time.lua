-- Time based script, handles all in-game times, and time manipulation related things

local time = {}

gameTime = 0
timeScale = 1

function GetGameTime()
    local hours = math.floor(gameTime / 3600) % 60
    local minutes = math.floor(gameTime / 60) % 60
    local seconds = math.floor(gameTime) % 60

    return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

function time.load()

end

function time.update(dt)
    gameTime = gameTime + (dt * timeScale)
end

function time.draw()
    love.graphics.print(GetGameTime(), 0, 0)
end

return time