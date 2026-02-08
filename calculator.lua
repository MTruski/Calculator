-- functions
local function exit_application(input)
    if input == "0" then
        os.exit()
    end
end
local function do_add()
    print("Enter number")
    local n1 = io.read()
    print("Enter a second number")
    local n2 = io.read()
    return (n1+n2)
end

local function do_sub()
    print("Enter number")
    local n1 = io.read()
    print("Enter a second number")
    local n2 = io.read()
    return (n1-n2)
end

local function do_multi()
    print("Enter number")
    local n1 = io.read()
    print("Enter a second number")
    local n2 = io.read()
    return (n1 * n2)
end

local function do_div()
    print("Enter number")
    local n1 = io.read()
    print("Enter a second number")
    local n2 = io.read()
    return (n1 / n2)
end

local function do_square()
    print("Enter number")
    local n1 = io.read()
    return (n1 * n1 )
end

local function do_square_root()
    print("Enter number")
    local n1 = io.read()
    return math.sqrt(n1)
end

local function do_operation(input)
  if input == "1" then
    return do_add()
  elseif input == "2" then
    return do_sub()
  elseif input == "3" then
    return do_multi()
  elseif input == "4" then
    return do_div()
  elseif input == "5" then
    return do_square()
  elseif input == "6" then
    return do_square_root()
  end
end

local function main_menu()
  local input = nil
  while not exit_application(input) do
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
    if (number == "0") then
      input = "0"
    elseif number ~= nil then
      local output = do_operation(number)
      print("your result is " .. (output or "NaN"))
    end
  end
end

-- program

--while not should_exit_application() do
  -- variables
  -- functions
  main_menu()
--end