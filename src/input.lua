local Colors = require('src.colors')
local Buttons = require('src.buttons')

Input = {}

function Input.pressed_button(x, y, button, istouch)
    if button == 1 then
    end
end

function Input.released_button(x, y, button, istouch)
    if button == 2 then
    end
end

function Input.detect_movement(x, y, dx, dy)

    print("Mouse moved to: (" .. x .. ", " .. y .. ")")
    print("Movement: (" .. dx .. ", " .. dy .. ")")
end

return Input