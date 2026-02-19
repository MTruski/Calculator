local Calculator = require('src.calculator')
local Colors = require('src.colors')
local Draw = require('src.draw')

local calculator_width = 1000
local calculator_height = 800

function love.load()
    love.window.setMode(calculator_width,calculator_height,{fullscreen = false, resizable = true})
    --Calculator.main_menu()
    -- load up everything once before drawing
end



function love.draw()
    Draw.diag_grid()
    Draw.buttons()
    --Draw.main_buttons()
    --Draw.operation_buttons()
    -- general box
    love.graphics.setLineWidth(3)
    love.graphics.setColor(Colors.purple)
    love.graphics.rectangle("line", 100, 100, 800, 600)
    love.graphics.setColor(Colors.white)
    love.graphics.setLineWidth(1)

    -- display box
    love.graphics.rectangle("fill", 125, 110, 565, 80)

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
    Draw.window_width = w
    Draw.window_height = h
    -- handle user resizing window
end