local Operations = require ("operations")

local function main_menu()
  local should_exit = false
  local output = 0
  while not Operations.exit_application(should_exit) do
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Square")
    print("6. Square Root")
    print("9. Clear")
    print("0. Quit")
    local number = io.read()
    if number == "0" then
      should_exit = true
    elseif number ~= nil then
      output = Operations.do_operation(number, output)
      print("your result is " .. (output or "NaN"))
    end
  end
end

main_menu()