local SUIT = require("libraries/suit")
local Time = require("")

local UI = {}

function UI.load()
end

function UI.update(dt)
    if SUIT.Button("Set Time Scale", SUIT.layout.row()).hit then
        love.graphics.print("Clicked time scale", 0, 2)
    end
end

function UI.draw()
    SUIT.layout.draw()
end

return UI