Player = {}
Player.__index = Player

function Player.New()
	local obj = {name = "unkown",life = 100}
	setmetatable(obj,Player)
	return obj
end

-- ˫ð��":" �﷨�ǣ�������Ĭ�ϴ��� self ָ�롣
-- ���õ�ʱ������Ҫʹ�� ":" ����
function Player:Attack(target)
	print("attack",target.name)
	target.life = target.life - self.weapon.attack
end
