local Operations = {}

-- A collection of all keys for operations
local operation_keys = {
    ADD = 1,
    SUBTRACT = 2,
    MULTIPLY = 3,
    DIVIDE = 4,
    SQUARE = 5,
    SQUARE_ROOT = 6,
    CLEAR = 7,
    QUIT = 8,
}

local function request_numbers(input, output)
    -- if there isnt an output or output is 0, ask for both numbers. Otherwise, ask only for 1 to do OPERATION with OUTPUT
    if not output or output == 0 then
        print("Enter number")
    end
    -- assign output to n1 as long as it doesnt = 0. if 0 then use io.read()
    local n1 = output ~= 0 and output or io.read()
    if input == operation_keys.SQUARE or input == operation_keys.SQUARE_ROOT then
        return { n1 }
    end

    print("Enter a second number")
    local n2 = io.read()
    return { n1, n2 }
end

-- Math Functions

local function do_add(input, output)
    local result = request_numbers(input, output)
    return result[1] + result[2]
end

local function do_sub(input, output)
    local result = request_numbers(input, output)
    return result[1] - result[2]
end

local function do_multi(input, output)
    local result = request_numbers(input, output)
    return result[1] * result[2]
end

local function do_div(input, output)
    local result = request_numbers(input, output)
    return result[1] / result[2]
end

local function do_square(input, output)
    local result = request_numbers(input, output)
    return result[1] * result[1]
end

local function do_square_root(input, output)
    local result = request_numbers(input, output)
    return math.sqrt(result[1])
end

local function do_clear()
    return 0
end

local function do_exit()
    print("Nighty night")
    os.exit()
end

-- A collection of potential operations
local all_operations = {
    [operation_keys.ADD] = { name = "add", symbol = "+", min_numbers = 2, behavior = do_add },
    [operation_keys.SUBTRACT] = { name = "subtract", symbol = "-", min_numbers = 2, behavior = do_sub },
    [operation_keys.MULTIPLY] = { name = "multiply", symbol = "*", min_numbers = 2, behavior = do_multi },
    [operation_keys.DIVIDE] = { name = "divide", symbol = "/", min_numbers = 2, behavior = do_div },
    [operation_keys.SQUARE] = { name = "square", symbol = "^2", min_numbers = 1, behavior = do_square },
    [operation_keys.SQUARE_ROOT] = { name = "square root", symbol = "√", min_numbers = 1, behavior = do_square_root },
    [operation_keys.CLEAR] = { name = "clear", symbol = nil, min_numbers = nil, behavior = do_clear },
    [operation_keys.QUIT] = { name = "quit", symbol = nil, min_numbers = nil, behavior = do_exit },
}

-- Math Functions End

-- Gets all operations available in the `Operations` module.
function Operations.get_all_operations()
    return all_operations
end

-- Orchestrator that is responsible for choosing the correct functions after receiving input from io.read
function Operations.do_operation(input, output)
    local operation_key = tonumber(input)
    return all_operations[operation_key] and all_operations[operation_key].behavior(input, output) or 0
end

return Operations