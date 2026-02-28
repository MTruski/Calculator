local Operations = require("src.operations")

local Calculator = {}

local all_operations = Operations.get_all_operations()

function Operations.current_value()
  -- whats on display.
  -- User clicks 1, 2 ,3 -> current_value becomes 123
  -- User clicks = and current value becomes result
  -- user clicks clear and current value should reset
end

function Operations.stored_value()
  -- What is the stored value that will be added onto e.g Calcualtor.current_value + 5 = 15. The previous number
  -- user clicks 12
  -- user clicks + 
  --- stored value becomes 12
  --- current value becomes resets/... becomes nil? so user can type the next number
end

function Operations.pending_operation()
  -- a way to break out fo the cycle of current and stored values? Right?
  -- User clicks 12
  -- User clicks +
  --- pending_operation = add
  -- user clicks 5
  -- user clicks *
  --- calculator should perform 12+5 = 17
  --- calc should set store value to 17
  --- pending_operation = multiply
end

return Calculator