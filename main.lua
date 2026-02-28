local Calculator = require('src.calculator')
local Colors = require('src.colors')
local Draw = require('src.draw')
local Buttons = require('src.buttons')
local Input = require('src.input')

local calculator_width = 1000
local calculator_height = 800

function love.load()
    -- load up everything once before drawing
    love.window.setMode(calculator_width, calculator_height, { fullscreen = false, resizable = true })
    Buttons.init()
end

function love.draw()
    Draw.diag_grid()
    Draw.buttons()
    
    -- general box, temporary for display
    love.graphics.setLineWidth(3)
    love.graphics.setColor(Colors.purple)
    love.graphics.rectangle("line", 100, 100, 800, 600)
    love.graphics.setColor(Colors.white)
    love.graphics.setLineWidth(1)

    -- display box
    love.graphics.rectangle("fill", 125, 110, 565, 80)
end

function love.update(dt)
    
    -- update everything
end

function love.mousepressed(x, y, button, istouch)
    Input.pressed_button(x, y, button, istouch)
end

function love.mousereleased(x, y, button, istouch)
    Input.released_button(x, y, button)
end

function love.mousemoved(x, y, dx, dy)
    --lua not ready yet, used for testing position of the mouse 
    --Input.detect_movement(x, y, dx, dy)
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
