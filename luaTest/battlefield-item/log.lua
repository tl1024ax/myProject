
D = {}

local function writeMsgToFile(filepath,msg)

end

function D.debug(...)
	local arg = {...}
	local msg = "[".. os.date("%Y/%m/%d %X",os.time()) .. " debug] "
	for k,v in pairs(arg) do
		msg = msg .. tostring(v) .. " "
	end

	if release then
		-- write msg to file
		writeMsgToFile("log.txt",msg)
	else
		--print
		print(msg)
	end
end


function D.info(...)
	local arg = {...}
	local msg = "[".. os.date("%Y/%m/%d %X",os.time()) .. " info] "
	for k,v in pairs(arg) do
		msg = msg .. tostring(v) .. " "
	end

	if release then
		-- write msg to file
		writeMsgToFile("log.txt",msg)
	else
		--print
		print(msg)
	end
end
