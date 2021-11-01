local ipairs = ipairs
local file = file
local PLib = PLib

PLib:CL("pui/core", "cl_vgui.lua")
PLib:CL("pui/core", "cl_concommand.lua")

for _, fl in ipairs( file.Find("pui/skins/*.lua", "LUA") ) do
    PLib:CL("pui/skins", fl)
end

for _, fl in ipairs( file.Find("pui/vgui/*.lua", "LUA") ) do
    PLib:CL("pui/vgui", fl)
end