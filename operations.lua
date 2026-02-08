local Operations = {}

local function request_numbers(input, output)
    -- if there isnt an output or output is 0, ask for both numbers. Otherwise, ask only for 1 to do OPERATION with OUTPUT
    if not output or output == 0 then 
        print("Enter number")
    end
    -- assign output to n1 as long as it doesnt = 0. if 0 then use io.read()
    local n1 = output ~= 0 and output or io.read()
    if input == "5" or input == "6" then
        local Numbers = { n1 }
        return Numbers
    else
        print("Enter a second number")
        local n2 = io.read()
        local Numbers = { n1, n2 }
        return Numbers
    end
end

-- Math Functions

local function do_add(output)
    local result = request_numbers(output)
    return result[1] + result [2]
end

local function do_sub(output)
    local result = request_numbers(output)
    return result[1] - result [2]
end

local function do_multi(output)
    local result = request_numbers(output)
    return result[1] * result [2]
end

local function do_div(output)
    local result = request_numbers(output)
    return result[1] / result [2]
end

local function do_square(output)
    local result = request_numbers(output)
    return result[1] * result [1]
end

local function do_square_root(output)
    local result = request_numbers(output)
    return math.sqrt(result[1])
end

-- Math Functions End

function Operations.exit_application(should_exit)
  if should_exit then
    print("Night Night")
      os.exit()
  end
end

-- Orchestrator - responsible for choosing the correct functions after receiving input from io.read
function Operations.do_operation(input, output)
    if input == "1" then
        return do_add(output)
    elseif input == "2" then
        return do_sub(output)
    elseif input == "3" then
        return do_multi(output)
    elseif input == "4" then
        return do_div(output)
    elseif input == "5" then
        return do_square(output)
    elseif input == "6" then
        return do_square_root(output)
    --Clear
    elseif input == "9" then
        return 0
    end
end

return Operations