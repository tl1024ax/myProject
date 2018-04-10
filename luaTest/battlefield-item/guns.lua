

Gun = {}
Gun.__index = Gun
setmetatable(Gun,Item)

function Gun.New()
	local obj = {}
	setmetatable(obj,Gun)
	obj.type = "gun"
	obj.name = "gun_name"
	return obj
end

function Gun:GetDamage()
	return self.damage
end

--[[
grayGun = {attack = 10,name = "Cookie"}
greenGun = {attack = 20,name = "Doland"}
blueGun = {attack = 30,name = "Arc"}

Guns = {grayGun,greenGun,blueGun}

function Guns.Attack(weapon,who)
	who.life = who.life - weapon.attack
end
--]]
