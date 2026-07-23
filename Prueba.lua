local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vhhvwvvchvvydvbff-wq/Script-/refs/heads/main/To%C3%B1itax%20librari"))()
local Window = Library:AddWindow("SC'S PV VERSION | Welcome " .. LocalPlayer.DisplayName, {
    main_color = Color3.fromRGB(0, 0, 0),
    min_size = Vector2.new(580, 870),
    can_resize = true
})

getgenv().AutoRepFarm = false
getgenv().AutoSpinWheel = false
getgenv().AutoFarming = false
getgenv().FastPunch = false
getgenv().AutoTouch = false
getgenv().AutoGroundSlam = false
getgenv().AutoScripts = false
getgenv().HideFrames = false
getgenv().whitelistedPlayers = {}
getgenv().blacklist = {}

local FarmTab = Window:AddTab("Farm Op")

FarmTab:AddSwitch("Strength Op", function(state)
    getgenv().AutoRepFarm = state
end)

task.spawn(function()
    while task.wait(0.01) do
        if getgenv().AutoRepFarm then
            local muscle = LocalPlayer:FindFirstChild("muscleEvent")
            if muscle then
                for i = 1, 40 do
                    muscle:FireServer("rep")
                end
            end
        end
    end
end)

FarmTab:AddSwitch("Auto Eat Egg 30 Minuts", function(state)
    if state then
        task.spawn(function()
            while state do
                local egg = LocalPlayer.Backpack:FindFirstChild("Protein Egg") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Protein Egg"))
                if egg then egg.Parent = LocalPlayer.Character end
                task.wait(1800)
            end
        end)
    end
end)

FarmTab:AddSwitch("Spin Fortune Wheel", function(state)
    getgenv().AutoSpinWheel = state
    if state then
        task.spawn(function()
            while getgenv().AutoSpinWheel do
                ReplicatedStorage.rEvents.openFortuneWheelRemote:InvokeServer("openFortuneWheel", ReplicatedStorage.fortuneWheelChances["Fortune Wheel"])
                task.wait(0.1)
            end
        end)
    end
end)

FarmTab:AddSwitch("Hide All Frames", function(state)
    getgenv().HideFrames = state
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("GuiObject") and v.Name:match("Frame$") then
            v.Visible = not state
        end
    end
end)

FarmTab:AddButton("Anti Lag", function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") or v:IsA("PointLight") or v:IsA("SpotLight") then
            v.Enabled = false
        end
    end
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9000000000
    Lighting.Brightness = 0
    settings().Rendering.QualityLevel = 1
    StarterGui:SetCore("SendNotification", {Title = "Anti Lag", Text = "Full optimization applied!", Duration = 5})
end)

FarmTab:AddButton("Full Optimization", function()
    for _, v in pairs(LocalPlayer.PlayerGui:GetChildren()) do if v:IsA("ScreenGui") then v:Destroy() end end
    for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
    local sky = Instance.new("Sky") sky.Parent = Lighting
    Lighting.Brightness = 0 Lighting.ClockTime = 0
end)

FarmTab:AddButton("Equip Swift Samurai", function()
    for _, folder in pairs(LocalPlayer.petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                if pet.Name == "Swift Samurai" then
                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
                end
            end
        end
    end
end)

local StatsTab = Window:AddTab("Stats")

local strengthLabel = StatsTab:AddLabel("Strength: 0")
local gemsLabel = StatsTab:AddLabel("Gems: 0")
local rebirthsLabel = StatsTab:AddLabel("Rebirths: 0")
local killsLabel = StatsTab:AddLabel("Kills: 0")
local enemyLifeLabel = StatsTab:AddLabel("Enemy life: N/A")
local yourDamageLabel = StatsTab:AddLabel("Your damage: N/A")
local blowsLabel = StatsTab:AddLabel("Blows to kill him: N/A")

-- Fast Rebirth
StatsTab:AddSwitch("Fast Rebirth", function(state)
    getgenv().AutoFarming = state
    if state then
        task.spawn(function()
            while getgenv().AutoFarming do
                -- Unequip all + equip Swift Samurai
                for _, f in pairs(LocalPlayer.petsFolder:GetChildren()) do
                    if f:IsA("Folder") then
                        for _, p in pairs(f:GetChildren()) do
                            ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", p)
                        end
                    end
                end
                task.wait(0.1)
                for _, f in pairs(LocalPlayer.petsFolder:GetChildren()) do
                    if f:IsA("Folder") then
                        for _, p in pairs(f:GetChildren()) do
                            if p.Name == "Swift Samurai" or p.Name == "Tribal Overlord" then
                                ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", p)
                            end
                        end
                    end
                end

                local needed = 10000 + 5000 * LocalPlayer.leaderstats.Rebirths.Value
                while LocalPlayer.leaderstats.Strength.Value < needed and getgenv().AutoFarming do
                    LocalPlayer.muscleEvent:FireServer("rep")
                    task.wait()
                end

                local old = LocalPlayer.leaderstats.Rebirths.Value
                ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                repeat task.wait(0.1) until LocalPlayer.leaderstats.Rebirths.Value > old
            end
        end)
    end
end)

local KillTab = Window:AddTab("Kill")

KillTab:AddSwitch("Auto Touch Players", function(state)
    getgenv().AutoTouch = state
    if state then
        task.spawn(function()
            while getgenv().AutoTouch do
                local char = LocalPlayer.Character
                if char and char:FindFirstChild("RightHand") and char:FindFirstChild("LeftHand") then
                    for _, plr in pairs(Players:GetPlayers()) do
                        if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and not table.find(getgenv().whitelistedPlayers, plr.Name) then
                            firetouchinterest(char.RightHand, plr.Character.HumanoidRootPart, 1)
                            firetouchinterest(char.LeftHand, plr.Character.HumanoidRootPart, 1)
                            task.wait(0.01)
                            firetouchinterest(char.RightHand, plr.Character.HumanoidRootPart, 0)
                            firetouchinterest(char.LeftHand, plr.Character.HumanoidRootPart, 0)
                        end
                    end
                end
                task.wait(0.01)
            end
        end)
    end
end)

KillTab:AddSwitch("Fast Punch", function(state)
    getgenv().FastPunch = state
    if state then
        task.spawn(function()
            while getgenv().FastPunch do
                local punch = LocalPlayer.Backpack:FindFirstChild("Punch") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch"))
                if punch then
                    if punch.Parent ~= LocalPlayer.Character then punch.Parent = LocalPlayer.Character end
                    punch:Activate()
                end
                task.wait(0.01)
            end
        end)
    end
end)

KillTab:AddSwitch("Auto Ground Slam", function(state)
    getgenv().AutoGroundSlam = state
    if state then
        task.spawn(function()
            while getgenv().AutoGroundSlam do
                local slam = LocalPlayer.Backpack:FindFirstChild("Ground Slam") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Ground Slam"))
                if slam then
                    if slam.Parent ~= LocalPlayer.Character then slam.Parent = LocalPlayer.Character end
                    slam:Activate()
                    LocalPlayer.muscleEvent:FireServer("slam")
                end
                task.wait(0.1)
            end
        end)
    end
end)

local whitelistDropdown = KillTab:AddDropdown("Whitelist Player", {})
local function refreshPlayers()
    whitelistDropdown:Clear()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then whitelistDropdown:Add(plr.DisplayName) end
    end
end
refreshPlayers()
Players.PlayerAdded:Connect(refreshPlayers)

KillTab:AddButton("Add to Whitelist", function()
end)

KillTab:AddSwitch("Auto Brawl", function(state)
    if state then
        task.spawn(function()
            while state do
                ReplicatedStorage.rEvents.brawlEvent:FireServer("joinBrawl")
                task.wait(1)
            end
        end)
    end
end)

local TpTab = Window:AddTab("Teleports")

local locations = {
    ["Spawn"] = Vector3.new(2, 8, 115),
    ["Secret Area"] = Vector3.new(1947, 2, 6191),
    ["Tiny Island"] = Vector3.new(-34, 7, 1903),
    ["Frozen Island"] = Vector3.new(-2600.00244, 3.67686558, -403.884369),
    ["Mythical Island"] = Vector3.new(2255, 7, 1071),
    ["Hell Island"] = Vector3.new(-6768, 7, -1287),
    ["Legend Island"] = Vector3.new(4604, 991, -3887),
    ["Muscle King"] = Vector3.new(-8659, 6, 2384),
    ["Jungle Island"] = Vector3.new(-8659, 6, 2384),
    ["Brawl Lava"] = Vector3.new(4471, 119, -8836),
    ["Brawl Desert"] = Vector3.new(960, 17, -7398),
    ["Brawl Regular"] = Vector3.new(-1849, 20, -6335),
}

for name, pos in pairs(locations) do
    TpTab:AddButton(name, function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
            StarterGui:SetCore("SendNotification", {Title = "Teletransporte", Text = "Teleported to " .. name, Duration = 3})
        end
    end)
end)

local AutoTab = Window:AddTab("Auto Scripts")

AutoTab:AddSwitch("Auto Use Tools (Punch + Eggs + Shake)", function(state)
    getgenv().AutoScripts = state
    if state then
        task.spawn(function()
            while getgenv().AutoScripts do
                -- Auto Punch
                local punch = LocalPlayer.Backpack:FindFirstChild("Punch") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Punch"))
                if punch then punch.Parent = LocalPlayer.Character end
                
                -- Protein Egg & Tropical Shake
                for _, tool in pairs({"Protein Egg", "Tropical Shake"}) do
                    local item = LocalPlayer.Backpack:FindFirstChild(tool) or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(tool))
                    if item then item.Parent = LocalPlayer.Character end
                end
                task.wait(0.3)
            end
        end)
    end
end)

local TimeTab = Window:AddTab("Time of Day")

local times = {"Morning", "Noon", "Afternoon", "Sunset", "Night", "Midnight", "Dawn", "Early Morning"}
local timeDropdown = TimeTab:AddDropdown("Change Time", {})
for _, t in pairs(times) do timeDropdown:Add(t) end

timeDropdown:SetCallback(function(selected)
    if selected == "Morning" then Lighting.ClockTime = 6 Lighting.Brightness = 2
    elseif selected == "Noon" then Lighting.ClockTime = 12 Lighting.Brightness = 3
    elseif selected == "Afternoon" then Lighting.ClockTime = 16 Lighting.Brightness = 2.5
    elseif selected == "Sunset" then Lighting.ClockTime = 18 Lighting.Brightness = 2 Lighting.FogEnd = 500
    elseif selected == "Night" then Lighting.ClockTime = 20 Lighting.Brightness = 1.5
    elseif selected == "Midnight" then Lighting.ClockTime = 0 Lighting.Brightness = 1
    elseif selected == "Dawn" then Lighting.ClockTime = 4 Lighting.Brightness = 1.8
    elseif selected == "Early Morning" then Lighting.ClockTime = 2 Lighting.Brightness = 1.2
    end
end)

task.spawn(function()
    while task.wait(1) do
        if LocalPlayer.leaderstats then
            strengthLabel.Text = "Strength: " .. LocalPlayer.leaderstats.Strength.Value
            gemsLabel.Text = "Gems: " .. (LocalPlayer:FindFirstChild("Gems") and LocalPlayer.Gems.Value or 0)
            rebirthsLabel.Text = "Rebirths: " .. LocalPlayer.leaderstats.Rebirths.Value
            killsLabel.Text = "Kills: " .. LocalPlayer.leaderstats.Kills.Value
        end
    end
end)
