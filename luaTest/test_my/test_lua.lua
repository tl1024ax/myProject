--print("AAAAAAAAAAAAAAAAAAA")



--[[
function AddTest( num)
	--error(str)
	print("------------- num = " .. tostring(num))
	return num + num
end

function traceback( msg )
    print("----------------------------------------")
    print("LUA ERROR: " .. tostring(msg) .. "\n")
    print(debug.traceback())
    print("----------------------------------------")
end

--AddTest(100)

local sta,val = pcall(AddTest,10)
print("--------------------- sta = "..tostring(sta).." val = " .. tostring(val))

xpcall(AddTest,traceback,10)

--]]

--[[
function NewCounter()
	local i = 0

	return function()
		i = i+1
		return i
	end
end

local count1 = NewCounter()
local count2 = NewCounter()

print("count1 = " .. count1())
print("count1 = " .. count1())

print("count2 = " .. count2())
print("count2 = " .. count2())
--]]


--[[
print ("math.sin = "..math.sin(math.pi))
do
	local oldsin = math.sin
	local k = math.pi /180
	math.sin = function(x)
		print("-----------------------")
		return oldsin(x*k)
	end
end

print ("math.sin = "..math.sin(180))
--]]

--[[
function foo(n)
	if(n == 0) then
		return 1
	else
		return n* foo(n-1)
	end
end

print("foo(n) = "..foo(5))
--]]

--[[
local fac
fac = function(n)
	if(n == 0) then
		return 1
	else
		return n* fac(n-1)
	end
end

print("

print("fac(n) = "..fac(5))
--]]

--[[
local a = true
local b = 4
local c = 5
local va = 0 and 1
print("va = "..tostring(false or nil))
--]]




