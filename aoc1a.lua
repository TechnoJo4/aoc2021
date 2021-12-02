local fs = require("fs")
local input = fs.readFileSync("aoc1.txt")

local t = {}
for s in input:gmatch("(.-)\r\n") do
	t[#t+1] = tonumber(s)
end

local n = 0
for i=2,#t do
	if t[i] > t[i-1] then
		n = n + 1
	end
end

print(n)
