require "members"
require "guns"
require "function"


for k,v in pairs(Guns) do
	print(k,v.name,v.attack)
	if v.attack == 20 then
		Tom.weapon = v
		break
	end
end

print("Tom's weapon = ",Tom.weapon.name,Tom.weapon.attack)

--[[
for k,v in pairs(MathES) do
	print("k = ",k)
end
--]]
print("1 + 3 = ",MathES.Add(1,3))
