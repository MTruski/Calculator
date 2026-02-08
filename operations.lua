local Operations = {}

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

function Operations.exit_application(should_exit)
  if should_exit then
      os.exit()
  end
end

function Operations.do_operation(input)
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

return Operations