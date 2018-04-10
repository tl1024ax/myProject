Player = {}
Player.__index = Player

function Player.New(name)
	local obj = {name = name,life = 100}
	setmetatable(obj,Player)
	return obj
end

-- 双冒号":" 语法糖，参数中默认带了 self 指针。
-- 调用的时，必须要使用 ":" 调用。调用时 self 指毡浑塞到默认函数参数列表中的第一个参数，是隐形的
function Player:Attack(target)
	D.info(self.name, "start attack",target.name)
	target.life = target.life - self.weapon:GetDamage()
	D.debug("target life left",target.life)
end



