local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3'))()

local w = library:CreateWindow("A") -- Creates the window

local b = w:CreateFolder("B") -- Creates the folder (You will put your buttons, etc. here)

b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
}) 

b:Button("Button", function()
    while true do
        wait(5)
        local args = {
            [1] = "Fight",
            [2] = 4,
            [3] = 4
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(args))
    end
end)

b:Toggle("Toggle", function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Slider("Slider", {
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
}, function(value)
    print(value)
end)

b:Dropdown("Dropdown", {"A", "B", "C"}, true, function(mob) -- true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind", Enum.KeyCode.C, function() -- Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker", Color3.fromRGB(255, 0, 0), function(color) -- Default color
    print(color)
end)

b:Box("Box", "number", function(value) -- "number" or "string"
    print(value)
end)

-- Commented out for now, since DestroyGui will immediately close the GUI
-- b:DestroyGui()
