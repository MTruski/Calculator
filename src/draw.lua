local Draw = {}
local Colors = require('src.colors')

-- Variables

local window_width, window_height = love.window.getDesktopDimensions()
local calculator_width = 1000
local calculator_height = 800

local operations = {
    [0] = "0",
    [1] = "1",
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
    [6] = "6",
    [7] = "7",
    [8] = "8",
    [9] = "9",
    [10] = "+",
    [11] = "-",
    [12] = "*",
    [13] = "/",
    [14] = "=",
    [15] = "√",
    [16] = "x²"

}

-- Functions

function Draw.operation_buttons()
    local starting_x = 725
    local starting_y = 212.5
    local x = starting_x
    local y = starting_y
    local width = 150
    local height = 75
    local x_gutter = 50
    local y_gutter = 25
    for i = 1, 5, 1 do
        -- sets default rectangle constructor and color
        love.graphics.rectangle("fill", x, y, width, height)
        love.graphics.setColor(Colors.purple)
        love.graphics.print(operations[i],(x +(width/2)), (y +(height/2)),nil,nil,nil,5,5)
        love.graphics.setColor(Colors.white)
        y = (y+height) + y_gutter
    end
end

function Draw.main_buttons()
    local starting_x = 125
    local starting_y = 312.5
    local x = starting_x
    local y = starting_y
    local width = 150
    local height = 75
    local x_gutter = 50
    local y_gutter = 25
    
    for i = 1, 12, 1 do
        -- sets default rectangle constructor and color
        love.graphics.rectangle("fill", x, y, width, height)
        love.graphics.setColor(Colors.purple)
        -- print corresponding symbols on the main num pad as well as clear and decimal
       -- if i < 10 then
            love.graphics.print(operations[i],(x +(width/2)), (y +(height/2)),nil,nil,nil,5,5)
       -- elseif i == 10 then
       --     love.graphics.print("Clear",(x +(width/2)), (y +(height/2)),nil,nil,nil,15,5)
      --  elseif i == 11 then
        --    love.graphics.print("0",(x +(width/2)), (y +(height/2)),nil,nil,nil,5,5)
     --   else
       --     love.graphics.print("•",(x +(width/2)), (y +(height/2)))
        --end
        love.graphics.setColor(Colors.white)
        x = (x+width) + x_gutter
        if i % 3 == 0 then
            y = (y+height) + y_gutter
            x = starting_x
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