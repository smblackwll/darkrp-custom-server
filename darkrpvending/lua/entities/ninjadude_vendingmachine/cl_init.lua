include("shared.lua")

-- Client-side draw function for the Entity
function ENT:Draw()
    self:DrawModel() -- Draws the model of the Entity. This function is called every frame.
end

net.Receive("OpenVendingMachineGUI", function()
    local ent = net.ReadEntity()

    local frame = vgui.Create("DFrame")
    frame:SetSize(400, 300)
    frame:Center()
    frame:SetTitle("Vending Machine")
    frame:MakePopup()

    local button = vgui.Create("DButton", frame)
    button:SetText("Button LOL")
    button:SetSize(200, 40)
    button:SetPos(100, 100)

    button.DoClick = function()
        chat.AddText("You clicked the test button")
    end

end)