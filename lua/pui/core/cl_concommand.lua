local concommand = concommand
local ipairs = ipairs
local vgui = vgui
local IsValid = IsValid
local string = string
local tostring = tostring
local PLib = PLib

concommand.Add("pui_cleanup", function()
    local removed = 0
    for _, pnl in ipairs(vgui.GetWorldPanel():GetChildren()) do
        if not IsValid(pnl) then continue end

        local name = pnl:GetName()
        local class = pnl:GetClassName()

        if not string.StartWith(name, "PUI.") and not string.StartWith(class, "PUI.") then continue end

        PLib:Log("Pika UI", "Removed ", tostring(pnl))
        pnl:Remove()
        removed = removed + 1
    end

    PLib:Log("Pika UI", "Totally removed ", removed, " panels")
end)

concommand.Add("pui_widgetfactory", function()
    vgui.Create("PUI.WidgetFactory")
end)