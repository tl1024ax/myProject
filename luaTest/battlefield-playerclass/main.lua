require "members"
require "guns"
require "function"
require "player"

local tom = Player.New()
tom.name = "Tom"
--print("tom.name",tom.name,"tom.life",tom.life)
local doris = Player.New()


for k,v in pairs(Guns) do
	--print(k,v.name,v.attack)
	if v.attack == 20 then
		tom.weapon = v
		break
	end
end

--[[
-- tom -> meta table -> __index -> "Attack" field or method
-- tom 里面没有 Attack 方法，则找原表 meta table  中的 __index 方法中的 Attack 方法
--]]
tom.Attack(doris)

--[[
print("tom's weapon :",tom.weapon.name)
print("before attack",doris.life)
Guns.Attack(tom.weapon,doris)
print("doris's life",doris.life)
--]]
