require "members"


for k,v in pairs(Guns) do
	print(k,v.name,v.attack)
	if v.attack == 20 then
		Tom.weapon = v
		break
	end
end

print("Tom's weapon = ",Tom.weapon.name,Tom.weapon.attack)
