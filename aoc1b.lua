local fs = require("fs")
local input = fs.readFileSync("aoc1.txt")

local t = {}
for s in input:gmatch("(.-)\r\n") do
	t[#t+1] = tonumber(s)
end

local n = 0
for i=4,#t do
	local a,b,c,d = t[i-3],t[i-2],t[i-1],t[i]
	if (b+c+d) > (a+b+c) then
		n = n + 1
	end
end

print(n)
