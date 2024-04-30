local lex = require "CCasm.Lexer.lex"
local Token = require "CCasm.Lexer.Token"
local parse = require "CCasm.Parser.parse"
register = {
    --[[ General Purpose Registers ]]--
    ['a'] = Token('NULL'),
    ['b'] = Token('NULL'),
    ['c'] = Token('NULL'),
    ['d'] = Token('NULL'),
    ['e'] = Token('NULL'),
    ['f'] = Token('NULL'),
    ['g'] = Token('NULL'),
    ['h'] = Token('NULL'),
    ['i'] = Token('NULL'),
    ['j'] = Token('NULL'),
    ['k'] = Token('NULL'),
    ['l'] = Token('NULL'),
    ['m'] = Token('NULL'),
    ['n'] = Token('NULL'),
    ['o'] = Token('NULL'),
    ['p'] = Token('NULL'),

    ['rax']  = Token('NULL'),
    ['rbx']  = Token('NULL'),
    ['rcx']  = Token('NULL'),
    ['rdx']  = Token('NULL'),
    ['rsp']  = Token('NULL'),
    ['rbp']  = Token('NULL'),
    ['rsi']  = Token('NULL'),
    ['rdi']  = Token('NULL'),
    ['rip']  = Token('NULL'),

    ['aax']  = Token('NULL'),
    ['abx']  = Token('NULL'),
    ['acx']  = Token('NULL'),
    ['adx']  = Token('NULL'),
    ['asp']  = Token('NULL'),
    ['abp']  = Token('NULL'),
    ['asi']  = Token('NULL'),
    ['adi']  = Token('NULL'),
    ['aip']  = Token('NULL'),

    ['bax']  = Token('NULL'),
    ['bbx']  = Token('NULL'),
    ['bcx']  = Token('NULL'),
    ['bdx']  = Token('NULL'),
    ['bsp']  = Token('NULL'),
    ['bbp']  = Token('NULL'),
    ['bsi']  = Token('NULL'),
    ['bdi']  = Token('NULL'),
    ['bip']  = Token('NULL'),
    ['cc']  = Token('NULL'),
    ['temp']  = Token('NULL'),

    --[[ Instruction Pointer ]]--
    ['ip'] = 1,
}

stack = {}
labels = {}
macros = {}

local args = {...}
if #args > 1 then
    error("Usage: CCasm [path]", 0)
end
_G.report = function(line, message)
    error('[Line: ' .. line .. '] Error: ' .. message .. '\n', 0)
end

local function repl()
    while true do
        write(">: ")
        local input = read()
        register['ip'] = 1
        parse( lex(input) )
    end
end

local function run_file()
    local asm = fs.open(args[1], 'r')
    local code = asm.readAll()
    print(code)
    asm.close()
    parse( lex(code) )
end

if #args == 0 then
    repl()
else
    run_file()
end