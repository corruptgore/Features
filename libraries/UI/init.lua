local suit = require("libraries/suit")
local Time = require("libraries/time")

local UI = {}

local function DebugText(Text)
    local offset = 15
    love.graphics.print(tostring(Text), 0, love.graphics.getHeight() - offset)
end

function UI.load()

end

local Debug_Text = ""
local savedTC = nil

function UI.update(dt)
    suit.layout:reset(10, 10, 2, 2)

    if suit.Button("Add Time Scale", suit.layout:row(100, 50)).hit then
        Time:SetTimeScale(timeScale + 1)
        Debug_Text = "Added to timeScale, new timeScale: " .. timeScale
    end

    if suit.Button("Sub Time Scale", suit.layout:row(100, 50)).hit then
        local rate = 1

        if timeScale > rate then
            Time:SetTimeScale(timeScale - rate)
            Debug_Text = "Subtracted from timeScale, new timeScale: " .. timeScale
        else
            Debug_Text = "Cannot subtract from current timeScale, will nullify to zero (0)"
        end
    end

    if suit.Button("Nullify Time Scale", suit.layout:row(100, 50)).hit then
        savedTC = timeScale
        timeScale = 0
        Time:SetTimeScale(timeScale)
        Debug_Text = "Nullified timeScale, new timeScale: " .. timeScale .. "\nSaved timeScale: " .. savedTC
    end

    if suit.Button("Return Time Scale", suit.layout:row(100, 50)).hit then
        if savedTC == nil then
            Debux_Text = "Saved timeScale is already normal timeScale, returned normally"
            return
        end
        
        timeScale = savedTC
        
        Time:SetTimeScale(timeScale)
        Debug_Text = "Returned timeScale, new timeScale: " .. timeScale
    end
end

function UI.draw()
    suit:draw()
    DebugText(Debug_Text)
end

return UI