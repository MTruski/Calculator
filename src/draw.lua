local Colors = require('src.colors')
local Buttons = require('src.buttons')

local Draw = {}

local window_width, window_height = love.window.getDesktopDimensions()

-- Functions

function Draw.buttons()
    local all_buttons = Buttons.get_all_buttons()
    for _, button in ipairs(all_buttons) do
        button:draw()
    end
end

-- Function to help with aligning the design
function Draw.diag_grid()
    love.graphics.setColor(Colors.dark_grey)
    -- columns - y
    for i = 0, window_height, 100 do
        love.graphics.print(i, 10, i + 10)
        love.graphics.line(0, i, window_width, i)
    end
    -- rows - x
    for i = 0, window_width, 100 do
        love.graphics.print(i, i + 10, 10)
        love.graphics.line(i, 0, i, window_height)
    end
    love.graphics.setColor(Colors.white)
end

return Draw