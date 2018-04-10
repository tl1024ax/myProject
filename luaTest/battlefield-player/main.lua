require "members"
require "guns"
require "function"
require "player"

local tom = Player.New()
tom.name = "Tom"
print("tom.name",tom.name,"tom.life",tom.life)
local doris = Player.New()


for k,v in pairs(Guns) do
	--print(k,v.name,v.attack)
	if v.attack == 20 then
		tom.weapon = v
		break
	end
end

print("tom's weapon :",tom.weapon.name)
print("before attack",doris.life)
Guns.Attack(tom.weapon,doris)
print("doris's life",doris.life)


--[[
print("Tom's weapon = ",Tom.weapon.name,Tom.weapon.attack)
--]]

--[[
for k,v in pairs(MathES) do
	print("k = ",k)
end
--]]
--print("1 + 3 = ",MathES.Add(1,3))
