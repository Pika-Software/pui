local PUI = PUI
local PLib = PLib

function PUI:RegisterVGUI(PANEL)
    assert(type(PANEL) == "table", "bad argument #1 (expected table)")
    assert(type(PANEL.Name) == "string", "Not found field 'Name'")

    vgui.Register(PANEL.PanelName or PANEL.Name, PANEL, PANEL.Base)
    PLib:Log("Pika UI", "Registered VGUI: ", PLib._C.cl, PANEL.Name)
end

function PUI:CreateSKIN(name, desc, base)
    local SKIN = derma.GetNamedSkin(name) or {}
    SKIN.Base = base

    derma.DefineSkin(name, desc, SKIN)
    PLib:Log("Pika UI", "Registered skin: ", PLib._C.cl, name)

    return SKIN
end

for _, fl in ipairs( file.Find("pui/skins/*.lua", "LUA") ) do
    PLib:CL("pui/skins", fl)
end

for _, fl in ipairs( file.Find("pui/vgui/*.lua", "LUA") ) do
    PLib:CL("pui/vgui", fl)
end