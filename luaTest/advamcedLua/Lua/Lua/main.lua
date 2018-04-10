print("Hello World !")

--Example 1:Lua 调用C++中的函数 
--[[
 print(info("Hello World 2 !")) 
--]]

--Example 2:C++ 调用Lua中的函数
function TestFoo(a,b,c)
	print("test foo",a,b,c)
	return 1,"wath",false
end

