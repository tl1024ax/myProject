#include <iostream>
using namespace std;
extern "C"
{
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
}

int info(lua_State *L)
{
	printf("[info]:%s\n",lua_tostring(L,1));
	lua_pushstring(L,"111111111111111111111111111 -- ");
	lua_pushstring(L,"222222222222222222222222222222 -- ");
	return 2;
}

//////////////////////////////////////////////////////////////////////////
/// Example 1:Lua 调用C++中的函数 
void LuaCallFunc()
{
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	lua_register(L,"info",info);
	if (0 != luaL_dofile(L,"main.lua"))
	{
		printf("%s",lua_tostring(L,-1));
	}
}

//////////////////////////////////////////////////////////////////////////
/// Example 2:C++ 调用Lua中的函数 
void CallLuaFunc()
{
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	
	if (0 != luaL_dofile(L,"main.lua"))
	{
		printf("%s",lua_tostring(L,-1));
	}

	printf("lua engin,stack size = %d \n",lua_gettop(L));

	// 从Lua中获取函数TestFoo
	lua_getglobal(L,"TestFoo");
	if (lua_isfunction(L,-1))
	{
		printf("1.get test foo sucess!statck size = %d\n",lua_gettop(L));
		lua_pushnumber(L,1.3);
		lua_pushstring(L,"hello form C++");
		lua_pushboolean(L,1);
		printf("2.get test foo sucess!statck size = %d\n",lua_gettop(L));

		// 调用Lua中的函数(虚拟机,3个参数,3个返回值,错误代码)
		if (lua_pcall(L,3,3,0)!= 0)
		{
			// 如果发生错误！则进入到此逻辑。错误代码在栈顶
			printf("error:%s\n",lua_tostring(L,-1));
		}
		else
		{
			// 如果调用成功！获取函数返回值。
			printf("test foo invoke sucess!statck size %d\n",lua_gettop(L));
			printf("test foo return value type = %s,%s,%s\n",
				lua_typename(L,lua_type(L,-1)),lua_typename(L,lua_type(L,-2)),lua_typename(L,lua_type(L,-3)));
		}
	} 
	else
	{
		printf("get test fool fail \n");
	}
}

int main(int agrc,char **agrv)
{
	//LuaCallFunc();
	
	//CallLuaFunc();

	printf("------------- ---------------------------\n");

	lua_State *L = luaL_newstate();
	luaL_openlibs(L);

	lua_pushstring(L, "luaNet_objects");
	lua_newtable(L);
    lua_pushvalue(L, -1);
	printf("1.------------- statck size %d\n",lua_gettop(L));
	/// LUA_REGISTRYINDEX
    int weakTableRef = luaL_ref(L, LUA_REGISTRYINDEX);
	printf("2.------------- statck size %d\n",lua_gettop(L));
    lua_pushvalue(L, -1);
	printf("3.------------- statck size %d\n",lua_gettop(L));

	/*
	printf("1------------- statck size %d\n",lua_gettop(L));
	lua_newtable(L);     

	printf("2------------- statck size %d\n",lua_gettop(L));
	lua_setglobal(L, "luanet");

	 //lua_pushvalue(L, LUA_GLOBALSINDEX); 
		printf("3------------- statck size %d\n",lua_gettop(L));
	lua_getglobal(L, "luanet");

	printf("4------------- statck size %d\n",lua_gettop(L));
	*/


	return 0;
}