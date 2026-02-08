-- functions
local function should_exit_application()
    local input = io.read()
    return input == "0"
end

local function main_menu()
  print("See the menu below and enter a number")
  print("1. Addition")
  print("2. Subtraction")
  print("3. Multiplication")
  print("4. Division")
  print("5. Square Root")   
  print("0. Quit")
  local number = io.read()
  print("You chose " .. number)
  print("")
  if number == 0 then
      should_exit_application()
  elseif number ~= nil then
    do_operation()
  end
end

local function do_operation()
  local number = nil
  if (input == 1) then
    print("Enter number")
    local n1 = io.read()
    print("Enter a second number")
    local n2 = io.read()
    local number = n1 + n2    
  end
end
-- program

while not should_exit_application() do
  -- variables
  local display_number = 0
  -- functions
  main_menu()
end