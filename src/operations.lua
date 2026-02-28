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

-- Math Functions

local function do_add(a, b)
    return a + b
end

local function do_sub(a, b)
    return a - b
end

local function do_multi(a, b)
    return a * b
end

local function do_div(a, b)
    return a / b
end

local function do_square(a)
    return a * a
end

local function do_square_root(a)
    return math.sqrt(a)
end

local function do_clear()
    return 0
end
-- Math Functions End
-- A collection of potential operations
local all_operations = {
    [operation_keys.ADD] = { name = "add", symbol = "+", min_numbers = 2, behavior = do_add },
    [operation_keys.SUBTRACT] = { name = "subtract", symbol = "-", min_numbers = 2, behavior = do_sub },
    [operation_keys.MULTIPLY] = { name = "multiply", symbol = "*", min_numbers = 2, behavior = do_multi },
    [operation_keys.DIVIDE] = { name = "divide", symbol = "/", min_numbers = 2, behavior = do_div },
    [operation_keys.SQUARE] = { name = "square", symbol = "^2", min_numbers = 1, behavior = do_square },
    [operation_keys.SQUARE_ROOT] = { name = "square root", symbol = "√", min_numbers = 1, behavior = do_square_root },
    [operation_keys.CLEAR] = { name = "clear", symbol = nil, min_numbers = nil, behavior = do_clear },
}

-- Gets all operations available in the `Operations` module.
function Operations.get_all_operations()
    return all_operations
end

-- Orchestrator that is responsible for choosing the correct functions after receiving input from io.read
function Operations.do_operation(operation_key, n1, n2)
    local op = all_operations[operation_key]
    return op.behavior(n1,n2)
end

return Operations
