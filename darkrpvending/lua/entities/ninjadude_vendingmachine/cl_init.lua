include("shared.lua")



function ENT:Draw()
    self:DrawModel()

    local ang = self:GetAngles()
    local pos = self:GetPos()

    -- Move text to front surface of machine
    pos = pos + self:GetForward() * 17
    pos = pos + self:GetUp() * 55

    -- Rotate text onto the surface
    ang:RotateAroundAxis(ang:Up(), 90)
    ang:RotateAroundAxis(ang:Forward(), 90)

    cam.Start3D2D(pos, ang, 0.1)
        draw.SimpleTextOutlined(
            "Vending Machine",
            "DermaLarge",
            0,
            0,
            Color(255, 255, 255),
            TEXT_ALIGN_CENTER,
            TEXT_ALIGN_CENTER,
            2,
            Color(0, 0, 0)
        )
    cam.End3D2D()
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