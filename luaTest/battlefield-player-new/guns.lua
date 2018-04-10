

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


