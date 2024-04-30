local githubraw = "https://raw.githubusercontent.com/charlie-sans/ccasm/main/CCasm"

if fs.exists("/CCasm.lua") then shell.run("rm", "/CCasm.lua") end
if fs.exists("/CCasm/") then shell.run("rm", "/CCasm/") end

fs.makeDir("/CCasm")
fs.makeDir("/CCasm/Lexer")
fs.makeDir("/CCasm/Parser")
fs.makeDir("/CCasm/util")

shell.run("wget", githubraw .. "https://raw.githubusercontent.com/charlie-sans/ccasm/main/CCasm/cc.lua", "/cc.lua")


shell.run("wget", githubraw .. "/Lexer/lex.lua", "/CCasm/Lexer/lex.lua")
shell.run("wget", githubraw .. "/Lexer/Token.lua", "/CCasm/Lexer/Token.lua")

shell.run("wget", githubraw .. "/Parser/parse.lua", "/CCasm/Parser/parse.lua")

shell.run("wget", githubraw .. "/util/switch.lua", "/CCasm/util/switch.lua")
shell.run("wget", githubraw .. "/util/consts.lua", "/CCasm/util/consts.lua")
shell.run("wget", githubraw .. "/editasm", "/editasm")