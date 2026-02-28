local Colors = require('src.colors')
local Buttons = require('src.buttons')

Input = {}

function Input.pressed_button(x, y, button, istouch)
    if button == 1 then
        return
    end
end

function Input.released_button(x, y, mouse_button)
    for _, btn in ipairs(Buttons.get_all_buttons()) do
        if btn:released(x, y, mouse_button) then
            return true
        end
    end
end

function Input.detect_movement(x, y, dx, dy)
    print("Mouse moved to: (" .. x .. ", " .. y .. ")")
    print("Movement: (" .. dx .. ", " .. dy .. ")")
end

return Input