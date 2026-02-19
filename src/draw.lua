local Draw = {}
local Colors = require('src.colors')

-- Variables
local window_width, window_height = love.window.getDesktopDimensions()

local main_numpad_starting_x = 125
local main_numpad_starting_y = 312.5
local operations_starting_x = 725
local operations_starting_y = 212.5
local width = 150
local height = 75
local x_gutter = 50
local y_gutter = 25

local operations = {
    [1] = "%",
    [2] = "√",
    [3] = "x²",
    [4] = "/",
    [5] = "1",
    [6] = "2",
    [7] = "3",
    [8] = "*",
    [9] = "4",
    [10] = "5",
    [11] = "6",
    [12] = "-",
    [13] = "7",
    [14] = "8",
    [15] = "9",
    [16] = "+",
    [17] = "Clear",
    [18] = "0",
    [19] = "•",
    [20] = "="

}

-- Functions

function Draw.buttons()

    local x = 125
    local y = 212.5
    for i = 1, 20, 1 do
        -- sets default rectangle constructor and color
        love.graphics.rectangle("fill", x, y, width, height)
        love.graphics.setColor(Colors.purple)
        love.graphics.print(operations[i],(x +(width/2)), (y +(height/2)),nil,nil,nil,5,5)
        love.graphics.setColor(Colors.white)
        x = (x+width) + x_gutter
        if i % 4 == 0 then
            y = (y+height) + y_gutter
            x = main_numpad_starting_x
        end
    end
end

-- Function to help with aligning the design
function Draw.diag_grid()
    love.graphics.setColor(Colors.dark_grey)
    -- columns - y
    for i = 0, window_height, 100 do
        love.graphics.print(i,10, i+10)
        love.graphics.line(0,i,window_width,i)
    end
    -- rows - x
    for i = 0, window_width, 100 do
        love.graphics.print(i,i+10, 10)
        love.graphics.line(i,0,i,window_height)
    end
    love.graphics.setColor(Colors.white)
end

return Draw