Player = {}
Player.__index = Player

function Player.New(name)
	local obj = {name = name,life = 100}
	setmetatable(obj,Player)
	return obj
end

-- ˫ð��":" �﷨�ǣ�������Ĭ�ϴ��� self ָ�롣
-- ���õ�ʱ������Ҫʹ�� ":" ���á�����ʱ self ָձ������Ĭ�Ϻ��������б��еĵ�һ�������������ε�
function Player:Attack(target)
	D.info(self.name, "start attack",target.name)
	target.life = target.life - self.weapon:GetDamage()
	D.debug("target life left",target.life)
end



