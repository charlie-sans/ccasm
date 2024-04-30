local instructions = {
    ['set'] = 'SET',
    ['cpy'] = 'COPY',
    ['mov'] = 'MOVE',
    ['psh'] = 'PUSH',
    ['pop'] = 'POP',
    ['dup'] = 'DUPLICATE',
    ['swp'] = 'SWAP',
    ['ldr'] = 'LOAD',
    ['str'] = 'STORE',
    ['add'] = 'ADD',
    ['sub'] = 'SUBTRACT',
    ['mul'] = 'MULTIPLY',
    ['pow'] = 'POWER',
    ['div'] = 'DIVIDE',
    ['mod'] = 'MODULO',
    ['cmp'] = 'COMPARE',
    ['jmp'] = 'JUMP',
    ['jeq'] = 'JUMP_IF_EQUAL',
    ['jne'] = 'JUMP_NOT_EQUAL',
    ['slp'] = 'SLEEP',
    ['utc'] = 'UTC',
    ['dmp'] = 'DUMP',
    ['key'] = 'KEY',
    ['pos'] = 'POS',
    ['chr'] = 'CHARACTER',
    ['out'] = 'OUTPUT',
    ['hlt'] = 'HALT',
    ['clr'] = 'CLEAR',
    ['stk'] = 'STACK_PRINT',
    ['shl'] = 'SHIFT_LEFT',
    ['shr'] = 'SHIFT_RIGHT',
    ['rdinit'] = 'REDNET-INIT',
    ['rdiopen'] = 'RED-NET-IS-OPEN?',
    ['rdiclose'] = 'REDNET-CLOSE',
    ['rdsend'] = 'REDNET-SEND',
    ['rdrecv'] = 'REDNET-RECEIVE',
    ['rdstat'] = 'REDNET-STATUS',
    ['rdid'] = 'REDNET-ID',
    ['rdname'] = 'REDNET-NAME',
    ['rdaddr'] = 'REDNET-ADDRESS',
    ['rdget'] = 'REDNET-GET',
    ['rdset'] = 'REDNET-SET',
    ['reg'] = 'DUMP_REGISTER',
}

local keywords = {
    ['macro'] = "START",
    ['end'] = "END"
}

return function()
    return instructions, keywords
end