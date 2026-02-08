local Operations = require ("operations")

local function main_menu()
  local should_exit = false
  while not Operations.exit_application(should_exit) do
    print("See the menu below and enter a number")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Square")
    print("6. Square Root")
    print("0. Quit")
    local number = io.read()
    print("You chose " .. number)
    print("")
    if number == "0" then
      should_exit = true
    elseif number ~= nil then
      local output = Operations.do_operation(number)
      print("your result is " .. (output or "NaN"))
    end
  end
end

main_menu()