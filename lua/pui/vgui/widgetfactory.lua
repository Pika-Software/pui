local PUI = PUI
local PANEL = {
    Name = "WidgetFactory",
    PanelName = "PUI.WidgetFactory",
    Base = "DFrame",
    Description = "Widget Factory",
}

function PANEL:Init()
    if IsValid(PUI._WidgetFactoryPanel) then
        PUI._WidgetFactoryPanel:Remove()
    end
    PUI._WidgetFactoryPanel = self

    self:SetSize(500, 500)
    self:Center()



    self:MakePopup()
end


PUI:RegisterVGUI(PANEL)