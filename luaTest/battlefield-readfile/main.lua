require "log"
require "members"
require "item"
require "guns"
require "function"
require "player"

local gun = Gun.New()

local input = io.open("guns.txt","r")
--local data = input:read("*all")
--local data = input:read("*line")
while true do
	local data = input:read("*line")
	if data then
		--D.debug(data)

		if data == "Doland" then
			--D.debug("find gun : doland")
			gun.name = data

			data = input:read("*line")
			gun.damage = tonumber(data)
			break
		end
	else
		break
	end
end
input:close()
D.debug("gun info :",gun:GetName(),gun:GetType(),gun:GetDamage())

--[[
local gun = Gun.New()
D.debug(gun:GetName()," ",gun:GetType()," ",gun:GetDamage())
--]]

