

grayGun = {attack = 10,name = "Cookie"}
greenGun = {attack = 20,name = "Doland"}
blueGun = {attack = 30,name = "Arc"}

Guns = {grayGun,greenGun,blueGun}

function Guns.Attack(weapon,who)
	who.life = who.life - weapon.attack
end
