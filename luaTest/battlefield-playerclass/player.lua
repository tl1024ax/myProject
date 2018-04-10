Player = {}
Player.__index = Player

function Player.New()
	local obj = {name = "unkown",life = 100}
	setmetatable(obj,Player)
	return obj
end

function Player.Attack(target)
	print("attack",target.name)
end
