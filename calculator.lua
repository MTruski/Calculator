local Operations = require("operations")

local all_operations = Operations.get_all_operations()

local function main_menu()
  -- a rolling total
  local output = 0

  -- loop calculator input always unless exiting
  while true do
    -- print out all operations for the user
    for op, op_data in ipairs(all_operations) do
      print(op..". "..op_data.name)
    end
    -- read the operation requested, then perform it
    local number = io.read()
    output = Operations.do_operation(number, output)
    print("your result is " .. (output or "NaN"))
  end
end

main_menu()