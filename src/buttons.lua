local Colors = require('src.colors')

local Buttons = {}
Buttons.__index = Buttons

local all_buttons = {}

-- operations table
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

-- starting position of all button creation
local start_x = 125
local start_y = 212.5
-- default size of all clickable buttons
local width = 150
local height = 75

function Buttons.init()
    local x_gutter = 50
    local y_gutter = 25
    local x = start_x
    local y = start_y

    print("drawing buttons - starting x pos: " .. x .. "starting y pos: " .. y)

    for i, operation in ipairs(operations) do
        print("New button created at x: " .. x .. "and y: " .. y .. "for: " .. operation)
        local new_button = Buttons.new(operation, x, y, width, height)
        x = (x + width) + x_gutter
        -- updates position for new row
        if i % 4 == 0 then
            print("New row with coordinates x: " .. x .. "and y: " .. y)
            y = (y + height) + y_gutter
            x = start_x
        end
        table.insert(all_buttons, new_button)
    end
end

function Buttons.new(label, x, y, width, height)
    -- sets a metatable to collect button details
    local self = setmetatable({}, Buttons)
    self.label = label
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    return self
end

function Buttons:draw()
    love.graphics.setColor(Colors.purple)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    love.graphics.setColor(Colors.white)
    love.graphics.print(self.label, (self.x + (self.width / 2)), (self.y + (self.height / 2)), nil, nil, nil, 5, 5)
end

function Buttons.get_all_buttons()
    return all_buttons
end

return Buttons
