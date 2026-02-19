local Calculator = require('src.calculator')
local Colors = require('src.colors')

local window_width, window_height = love.window.getDesktopDimensions()
local calculator_width = 1000
local calculator_height = 800

function love.load()
    love.window.setMode(calculator_width,calculator_height,{fullscreen = false, resizable = true})
    --Calculator.main_menu()
    -- load up everything once before drawing
end

local function draw_operation_buttons()
    local starting_x = 125
    local x = starting_x
    local starting_y = 312.5
    local y = starting_y
    local width = 150
    local height = 75
    
    local x_gutter = 50
    local y_gutter = 25
    for i = 1, 10, 1 do
    

    end
end

local function draw_main_buttons()
    -- 4 rows, 4 columns
    local starting_x = 125
    local x = starting_x
    local starting_y = 312.5
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
        if i ~= 10 and i ~= 12 then
            love.graphics.print(i,(x +(width/2)), (y +(height/2)),nil,nil,nil,5,5)
        elseif i == 10 then
            love.graphics.print("Clear",(x +(width/2)), (y +(height/2)),nil,nil,nil,15,5)
        elseif i == 11 then
            love.graphics.print("0",(x +(width/2)), (y +(height/2)),nil,nil,nil,5,5)
        else
            love.graphics.print("•",(x +(width/2)), (y +(height/2)))
        end
        love.graphics.setColor(Colors.white)
        x = (x+width) + x_gutter
        if i % 3 == 0 then
            y = (y+height) + y_gutter
            x = starting_x
        end
    end 
end
-- Function to help with aligning the design
local function diag_draw_grid()
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

function love.draw()
    diag_draw_grid()
    draw_main_buttons()
    -- general box
    love.graphics.setLineWidth(3)
    love.graphics.setColor(Colors.purple)
    love.graphics.rectangle("line", 100, 100, 800, 600)
    love.graphics.setColor(Colors.white)
    love.graphics.setLineWidth(1)

    -- display box
    love.graphics.rectangle("fill", 110, 110, 580, 80)

    -- display text
    love.graphics.setColor(Colors.blue)
    love.graphics.print("test",150, 130)
    love.graphics.setColor(Colors.white)
end

function love.update(dt)
    -- update everything
end

function love.mousepressed(x, y, button, istouch)
    -- handle mouse presses
end

function love.mousereleased(x, y, button, istouch)
    -- handle mouse releases
end

function love.mousemoved(x, y, dx, dy)
    -- handle mouse movements
end

function love.wheelmoved(x, y)
    -- handle mouse wheel movements
end

function love.keypressed(key)
    -- handle key presses
end

function love.resize(w, h)
    window_width = w
    window_height = h
    -- handle user resizing window
end