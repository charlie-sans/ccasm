
local string = ""
local args = {...}

if #args > 0 then
    string = args[1]
end

local outputfile = args[2]
print (outputfile)

file = io.open(args[1], "r")
contents = file:read("*all")
file:close()

file = io.open(outputfile, "wb")
for i=0, #contents do
    line = string.sub(contents, i, i)
    file:write(string.byte(line))
    file:write("\n")
end
file:close()




-- ccbuilder.lua