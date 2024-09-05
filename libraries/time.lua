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

function time:GetTimeScale()
    return timeScale
end

function time:SetTimeScale(Scale)
    timeScale = Scale
end

function time.load()

end

function time.update(dt)
    gameTime = gameTime + (dt * timeScale)
end

function time.draw()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.graphics.print(GetGameTime(), love.graphics.getWidth() / 2, love.graphics.getHeight() / 2)
end

return time