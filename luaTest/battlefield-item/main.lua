require "log"
require "members"
require "item"
require "guns"
require "function"
require "player"

local tom = Player.New()
tom.name = "Tom"
--print("tom.name",tom.name,"tom.life",tom.life)
local doris = Player.New()
doris.name = "Doris"

local gun = Gun.New()
D.debug(gun:GetName()," ",gun:GetType()," ",gun:GetDamage())

