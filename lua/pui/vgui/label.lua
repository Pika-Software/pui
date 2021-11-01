local PUI = PUI
local PANEL = {
    Name = "Label",
    PanelName = "PUI.Label",
    Base = "DLabel",
    Description = "Basic label",
}

function PANEL:Init()
    self:SetSkin( PUI:GetCurrentSkin() )
end

PUI:RegisterVGUI(PANEL)