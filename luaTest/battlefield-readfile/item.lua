
Item = {name = "unkown",type = "unkown"}
Item.__index = Item

function Item:GetType()
	return self.type
end


function Item:GetName()
	return self.name
end
