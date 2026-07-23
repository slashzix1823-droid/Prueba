
local genv = getgenv()
local fenv = getfenv()
local _5 = loadstring(game:HttpGet('https://raw.githubusercontent.com/vhhvwvvchvvydvbff-wq/Script-/refs/heads/main/To%C3%B1itax%20librari'))()
local _call11 = _5:AddWindow('SERAPH HUB | Clan Z3R SCRIPT - By BL4Z3RxW1LL', {
    min_size = Vector2.new(444, 520),
    main_color = Color3.fromRGB(120, 0, 0),
    can_minimize = true,
})
local _call13 = _call11:AddTab('Rock')

_call13:AddSwitch('Isla Peque\u{f1}a (Como la tuya) - 0-1k Fuerza', function(_16, _16_2, _16_3, _16_4)
    fenv.selectrock = 'Tiny Island Rock'
    genv.autoFarm = _16

    spawn(function(_18, _18_2, _18_3)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Gran Roca - Requiere: 100+ Durabilidad', function(_27)
    fenv.selectrock = 'Starter Island Rock'
    genv.autoFarm = _27

    spawn(function(_29, _29_2, _29_3, _29_4)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Roca Dorada - Requiere: 5k+ Durabilidad', function(_38, _38_2, _38_3)
    fenv.selectrock = 'Legend Beach Rock'
    genv.autoFarm = _38

    spawn(function(_40, _40_2, _40_3, _40_4)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Roca / Gimnasio Helado - 1 Renacimientos', function(_49, _49_2)
    fenv.selectrock = 'Frost Gym Rock'
    genv.autoFarm = _49

    spawn(function(_51, _51_2)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Roca / Gimnasio Mitico - 3 Renacimientos', function(_60, _60_2, _60_3, _60_4)
    fenv.selectrock = 'Mythical Gym Rock'
    genv.autoFarm = _60

    spawn(function(_62, _62_2, _62_3)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Roca / Gimnasio Eterno - 15 Renacimientos', function(_71)
    fenv.selectrock = 'Eternal Gym Rock'
    genv.autoFarm = _71

    spawn(function(_73)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Roca / Gimnasio de Leyendas - 30 Renacimientos', function(_82, _82_2, _82_3, _82_4, _82_5, _82_6)
    fenv.selectrock = 'Legend Gym Rock'
    genv.autoFarm = _82

    spawn(function(_84, _84_2, _84_3)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Roca / Rey Muscular - 5 Renacimientos', function(_93, _93_2, _93_3)
    fenv.selectrock = 'Muscle King Gym Rock'
    genv.autoFarm = _93

    spawn(function(_95, _95_2, _95_3, _95_4)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddSwitch('Roca / Gimnacio Jungla - 60 Renacimientos', function(_104, _104_2, _104_3, _104_4)
    fenv.selectrock = 'Ancient Jungle Rock'
    genv.autoFarm = _104

    spawn(function(_106)
        local _ = genv.autoFarm

        task.wait()

        local _ = game:GetService('Players').LocalPlayer.Durability.Value

        error('line 1: attempt to compare number <= table')
    end)
end)
_call13:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Aqui puedes Golpear TODAS las ROCAS \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

local _call116 = _call11:AddTab('Settings')

_call116:AddLabel(' \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Configuraciones Generales \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

local _ = game:GetService('Players').LocalPlayer

_call116:AddSwitch('Anti AFK', function(_124, _124_2)
    loadstring(game:HttpGet('https://pastebin.com/raw/r37Ct26d', true))()
    print('[\u{2705}] Anti AFK activado correctamente.')
end)
_call116:AddButton('Boost FPS', function(_132, _132_2)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/juywvm/-Roblox-Projects-/main/____Anti_Afk_Remastered_______'))()
end)
_call13:AddSwitch('Golpear TODAS las Rocas', function(_139, _139_2)
    genv.FarmAllRocks = _139

    local _LocalPlayer142 = game:GetService('Players').LocalPlayer
    local _call144 = game:GetService('Workspace')

    task.spawn(function()
        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character149 = _LocalPlayer142.Character

        _Character149:FindFirstChild('LeftHand')
        _Character149:FindFirstChild('RightHand')

        for _157, _157_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _157_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character160 = _LocalPlayer142.Character

        _Character160:FindFirstChild('LeftHand')
        _Character160:FindFirstChild('RightHand')

        for _168, _168_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _168_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character171 = _LocalPlayer142.Character

        _Character171:FindFirstChild('LeftHand')
        _Character171:FindFirstChild('RightHand')

        for _179, _179_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _179_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character182 = _LocalPlayer142.Character

        _Character182:FindFirstChild('LeftHand')
        _Character182:FindFirstChild('RightHand')

        for _190, _190_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _190_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character193 = _LocalPlayer142.Character

        _Character193:FindFirstChild('LeftHand')
        _Character193:FindFirstChild('RightHand')

        for _201, _201_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _201_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character204 = _LocalPlayer142.Character

        _Character204:FindFirstChild('LeftHand')
        _Character204:FindFirstChild('RightHand')

        for _212, _212_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _212_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character215 = _LocalPlayer142.Character

        _Character215:FindFirstChild('LeftHand')
        _Character215:FindFirstChild('RightHand')

        for _223, _223_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _223_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character226 = _LocalPlayer142.Character

        _Character226:FindFirstChild('LeftHand')
        _Character226:FindFirstChild('RightHand')

        for _234, _234_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _234_2.Name
        end

        local _ = genv.FarmAllRocks

        task.wait(0.01)

        local _Character237 = _LocalPlayer142.Character

        _Character237:FindFirstChild('LeftHand')
        _Character237:FindFirstChild('RightHand')

        for _245, _245_2 in pairs(_call144.machinesFolder:GetDescendants())do
            local _ = _245_2.Name
        end

        local _ = genv.FarmAllRocks

        error('internal 557: <25ms: infinitelooperror>')
    end)
end)
_call13:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Puedes Activar ANTI REBIRTH \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

local _call258 = game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui'):FindFirstChild('ObserverGui'):FindFirstChild('BlockerFrame')

_call13:AddSwitch('Activar ANTI REBIRTH', function(_261, _261_2, _261_3, _261_4)
    _call258.Visible = true

    local _ = _5.Notification

    _5:Notification('ANTI TOUCH Activado \u{2014} pantalla protegida.')
end)
_call13:AddSwitch('Desactivar ANTI REBIRTH', function(_267, _267_2, _267_3, _267_4, _267_5)
    _call258.Visible = false

    local _ = _5.Notification

    _5:Notification('ANTI TOUCH Desactivado \u{2014} pantalla libre.')
end)
_call13:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Fly / Swim \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call13:AddButton('Ejecutar OMEGA FLY', function(_275, _275_2, _275_3)
    loadstring(game:HttpGet('https://pastebin.com/raw/92uVadU5'))()

    local _ = _5.Notification

    _5:Notification('Script ejecutado correctamente.')
end)
game:GetService('UserInputService')

local _call288 = game:GetService('Players')
local _ = workspace.Gravity
local _LocalPlayer290 = _call288.LocalPlayer

_call13:AddButton('Activar SWIM MODE', function()
    local _ = _LocalPlayer290.Character
    local _call297 = _LocalPlayer290.Character:FindFirstChildWhichIsA('Humanoid')

    workspace.Gravity = 0

    _call297.Died:Connect(function(_302, _302_2, _302_3, _302_4, _302_5)
        workspace.Gravity = workspace.Gravity
    end)

    local _call305 = Enum.HumanoidStateType:GetEnumItems()
    local _308, _308_2, _308_3 = table.find(_call305, Enum.HumanoidStateType.None)

    table.remove(_call305, _308, _308_2, _308_3)

    for _310, _310_2 in pairs(_call305)do
        _call297:SetStateEnabled(_310_2, false)
    end

    _call297:ChangeState(Enum.HumanoidStateType.Swimming)
    game:GetService('RunService').Heartbeat:Connect(function(_320, _320_2, _320_3, _320_4, _320_5) end)

    local _ = _5.Notification

    _5:Notification('SWIM MODE Activado \u{2014} \u{a1}a nadar!')
end)
_call13:AddButton('Desactivar SWIM MODE', function(_327, _327_2, _327_3, _327_4) end)
_call116:AddSwitch('Lock Position', function(_330) end)
_call116:AddSwitch('Caminar en el Agua', function() end)

local _call335 = _call116:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Isla para Farmear BUGS \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

_call335.TextSize = 17

_call116:AddSwitch('TP Isla Peque\u{f1}a', function(_338, _338_2) end)
Vector3.new(308.86, 133.52, -1993.983)
_call116:AddSwitch('Modo Huir (La Confiable)', function(_343) end)
Vector3.new(153.256, 133.52, -1536.33)
Vector3.new(-251.423, 133.52, -1536.33)
Vector3.new(-251.423, 133.52, -1993.983)
Vector3.new(308.86, 133.52, -1993.983)

local _call353 = _call11:AddTab('Gift')
local _call355 = _call353:AddLabel('Gifting Protein egg:')

_call355.TextSize = 22

local _call357 = _call353:AddLabel('Protein Eggs: 0')

_call357.TextSize = 20

local _call359 = _call353:AddDropdown('Player to Gift Eggs', function(_360, _360_2, _360_3, _360_4) end)

for _363, _363_2 in ipairs(_call288:GetPlayers())do
    local _ = _363_2 == _call288.LocalPlayer

    _call359:Add(_363_2.DisplayName)
end

_call288.PlayerAdded:Connect(function(_372, _372_2, _372_3) end)
_call353:AddTextBox('Amount of Eggs', function(_375) end)
_call353:AddButton('Gift Eggs', function(_378, _378_2, _378_3) end)

local _call380 = _call353:AddLabel('Gifting Tropical Shakes:')

_call380.TextSize = 22

local _call382 = _call353:AddLabel('Tropical Shakes: 0')

_call382.TextSize = 18

local _call384 = _call353:AddDropdown('Player to Gift Tropical Shakes', function(_385, _385_2) end)

for _388, _388_2 in ipairs(_call288:GetPlayers())do
    local _ = _388_2 == _call288.LocalPlayer

    _call384:Add(_388_2.DisplayName)
end

_call288.PlayerAdded:Connect(function(_397, _397_2) end)
_call353:AddTextBox('Tropical Shakes gift', function(_400, _400_2) end)
_call353:AddButton('Gift Tropical Shakes', function() end)
task.spawn(function(_406, _406_2, _406_3, _406_4) end)
_call353:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Cerrar el Juego \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call353:AddButton('Exit Game', function() end)
_call116:AddButton('Tama\u{f1}o NaN', function(_414, _414_2, _414_3, _414_4) end)
_call116:AddButton('Tama\u{f1}o 2', function(_417, _417_2, _417_3, _417_4, _417_5) end)
_call116:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Comando IY/Yield Dezz/HUB \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call116:AddButton('Commands Omegadezz YIELD', function(_422, _422_2) end)
_call116:AddSwitch('Apagar Trade', function(_425, _425_2, _425_3, _425_4) end)
_call116:AddSwitch('Ocultar Pets', function(_428, _428_2, _428_3) end)

local _call430 = _call11:AddTab('Pets')

game:GetService('ReplicatedStorage')
_call430:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Comprar PET y AURAS \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

local _call436 = _call430:AddDropdown('Seleccionar PET', function(_437, _437_2, _437_3, _437_4, _437_5, _437_6) end)

_call436:Add('Blue Birdie (Basic)')
_call436:Add('Orange Hedgehog (Basic)')
_call436:Add('Red Kitty (Basic)')
_call436:Add('Blue Bunny (Basic)')
_call436:Add('Silver Dog (Basic)')
_call436:Add('Dark Vampy (Advanced)')
_call436:Add('Dark Golem (Advanced)')
_call436:Add('Green Butterfly (Advanced)')
_call436:Add('Yellow Butterfly (Advanced)')
_call436:Add('Crimson Falcon (Rare)')
_call436:Add('Purple Dragon (Rare)')
_call436:Add('Orange Pegasus (Rare)')
_call436:Add('Purple Falcon (Rare)')
_call436:Add('Red Dragon (Rare)')
_call436:Add('White Pegasus (Rare)')
_call436:Add('Frostwave Legends Penguin (Rare)')
_call436:Add('Phantom Genesis Dragon (Rare)')
_call436:Add('Eternal Strike Leviathan (Rare)')
_call436:Add('Blue Pheonix (Epic)')
_call436:Add('Blue Firecaster (Epic)')
_call436:Add('Golden Pheonix (Epic)')
_call436:Add('Red Firecaster (Epic)')
_call436:Add('Green Firecaster (Epic)')
_call436:Add('White Pheonix (Epic)')
_call436:Add('Dark Legends Manticore (Epic)')
_call436:Add('Ultimate Supernova Pegasus (Epic)')
_call436:Add('Lightning Strike Phantom (Epic)')
_call436:Add('Golden Viking (Epic)')
_call436:Add('Infernal Dragon (Unique)')
_call436:Add('Ultra Birdie (Unique)')
_call436:Add('Magic Butterfly (Unique)')
_call436:Add('Aether Spirit Bunny (Unique)')
_call436:Add('Cybernetic Showdown Dragon (Unique)')
_call436:Add('Darkstar Hunter (Unique)')
_call436:Add('Muscle Sensei (Unique)')
_call436:Add('Neon Guardian (Unique)')

local _call511 = _call430:AddDropdown('Seleccionar AURA', function(_512, _512_2, _512_3, _512_4, _512_5) end)

_call511:Add('Blue Aura (Basic)')
_call511:Add('Green Aura (Basic)')
_call511:Add('Purple Aura (Basic)')
_call511:Add('Red Aura (Basic)')
_call511:Add('Yellow Aura (Basic)')
_call511:Add('Ultra Inferno  (Rare)')
_call511:Add('Azure Tundra (Epic)')
_call511:Add('Grand Supernova (Epic)')
_call511:Add('Muscle King (Unique)')
_call511:Add('Entropic Blast (Unique)')
_call511:Add('Eternal Megastrike (Unique)')
_call430:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Sistema para Comprar \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call430:AddSwitch('Auto Comprar PETS', function(_539) end)
_call430:AddSwitch('Auto Comprar AURA', function(_542, _542_2, _542_3, _542_4, _542_5, _542_6) end)
_call430:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Equipar Pet de FARM \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call430:AddButton('Equipar 8 Neon Guardian', function() end)
_call430:AddButton('Equipar 8 Darkstar Hunter', function(_550, _550_2) end)
_call430:AddButton('Auto Vender Mascotas', function(_553, _553_2) end)
_call430:AddButton('Auto Vender Neon y Dark', function(_556, _556_2, _556_3, _556_4) end)
_call430:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Equipar Pet PACKS \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call430:AddButton('Equipar 8 Mighty Monster', function(_561, _561_2, _561_3) end)
_call430:AddButton('Equipar 8 Tribal Overlord', function() end)
_call430:AddButton('Equip 8 Swift Samurai', function(_567) end)
_call430:AddButton('Equip 8 Wild Wizard', function(_570, _570_2, _570_3) end)

local _call572 = _call11:AddTab('Misc')
local _call574 = _call572:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Aqui puedes elegir tu TAG \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

_call574.TextSize = 17

local _LocalPlayer577 = game:GetService('Players').LocalPlayer

_LocalPlayer577.CharacterAdded:Connect(function(_581, _581_2, _581_3, _581_4, _581_5) end)

local _ = _LocalPlayer577.Character
local _Character583 = _LocalPlayer577.Character

task.wait(0.5)
_Character583:FindFirstChild('Head')
_Character583.Head:FindFirstChild('CustomTag'):Destroy()

local _call592 = Instance.new('BillboardGui')

_call592.Name = 'CustomTag'
_call592.Size = UDim2.new(0, 200, 0, 50)
_call592.StudsOffset = Vector3.new(0, 4.5, 0)
_call592.AlwaysOnTop = true
_call592.Parent = _Character583.Head

local _call599 = Instance.new('TextLabel')

_call599.Parent = _call592
_call599.BackgroundTransparency = 1
_call599.Size = UDim2.new(1, 0, 1, 0)
_call599.Text = 'HonnyDezz'
_call599.TextColor3 = Color3.fromRGB(255, 255, 255)
_call599.TextStrokeTransparency = 0.2
_call599.TextScaled = true
_call599.Font = Enum.Font.GothamBold

task.spawn(function(_608, _608_2, _608_3) end)
_LocalPlayer577.CharacterAdded:Connect(function(_612, _612_2, _612_3, _612_4, _612_5) end)

local _ = _LocalPlayer577.Character
local _Character614 = _LocalPlayer577.Character

task.wait(0.5)
_Character614:FindFirstChild('Head')
_Character614.Head:FindFirstChild('CustomTag'):Destroy()

local _call623 = Instance.new('BillboardGui')

_call623.Name = 'CustomTag'
_call623.Size = UDim2.new(0, 200, 0, 50)
_call623.StudsOffset = Vector3.new(0, 4.5, 0)
_call623.AlwaysOnTop = true
_call623.Parent = _Character614.Head

local _call630 = Instance.new('TextLabel')

_call630.Parent = _call623
_call630.BackgroundTransparency = 1
_call630.Size = UDim2.new(1, 0, 1, 0)
_call630.Text = 'HonnyDezz'
_call630.TextColor3 = Color3.fromRGB(255, 255, 255)
_call630.TextStrokeTransparency = 0.2
_call630.TextScaled = true
_call630.Font = Enum.Font.GothamBold

task.spawn(function(_639, _639_2, _639_3) end)
_call572:AddButton('\u{1f525} Clan HZ', function(_642, _642_2) end)
_call572:AddButton('\u{274c} Quitar Tag', function(_645, _645_2) end)

local _call647 = _call572:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Aqui puedes Teletransportarte \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

_call647.TextSize = 17

_call572:AddButton('Secret Area', function(_650, _650_2, _650_3, _650_4, _650_5) end)
_call572:AddButton('Spawn', function(_653, _653_2, _653_3, _653_4, _653_5) end)
_call572:AddButton('Muscle King Island', function(_656, _656_2, _656_3) end)
_call572:AddButton('Jungle Island', function() end)
_call572:AddButton('Brawl Lava', function(_662, _662_2) end)
_call572:AddButton('Brawl Desert', function(_665, _665_2, _665_3) end)
_call116:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Elimina todos los batidos \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
task.spawn(function(_670, _670_2) end)
_call116:AddSwitch('Auto Eliminar Inventory', function(_673) end)
_call116:AddButton('Eliminar Animacion de Pu\u{f1}os', function(_676, _676_2, _676_3, _676_4, _676_5) end)

fenv.RecoveryPunch = function(_677, _677_2, _677_3, _677_4, _677_5) end

_call116:AddButton('Colocar Animacion de Pu\u{f1}os', function() end)

local _call682 = _call11:AddTab('Stats')
local _LocalPlayer684 = game.Players.LocalPlayer
local _call686 = _LocalPlayer684:WaitForChild('leaderstats')
local _call694 = _call682:AddLabel('\u{23f1} Tiempo de Repetici\u{f3}n: 0d 0h 0m 0s')

_call694.TextSize = 20

local _call696 = _call682:AddLabel('\u{1f4c8} Fuerza: 0/Hora | 0/D\u{ed}a | 0/Semana | 0/Mes')

_call696.TextSize = 17

local _call698 = _call682:AddLabel('\u{1f4c9} Durabilidad: 0/Hora | 0/D\u{ed}a | 0/Semana | 0/Mes')

_call698.TextSize = 17

local _call700 = _call682:AddLabel('\u{1f4c8} Rebirths: 0/Hora | 0/D\u{ed}a | 0/Semana | 0/Mes')

_call700.TextSize = 17

_call682:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

local _call704 = _call682:AddLabel('Estad\u{ed}sticas Personales')

_call704.TextSize = 17

local _call706 = _call682:AddLabel('Fuerza: 0 | Ganado: 0')

_call706.TextSize = 17

local _call708 = _call682:AddLabel('Durabilidad: 0 | Ganado: 0')

_call708.TextSize = 17

local _call710 = _call682:AddLabel('Rebirths: 0 | Ganado: 0')

_call710.TextSize = 17

local _ = _call686:WaitForChild('Strength').Value
local _ = _LocalPlayer684:WaitForChild('Durability').Value
local _ = _call686:WaitForChild('Rebirths').Value

task.spawn(function(_716, _716_2, _716_3, _716_4) end)
_call682:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

local _call720 = _call682:AddLabel('Ver Estad\u{ed}sticas de Otros Jugadores')

_call720.TextSize = 17

local _call722 = game:GetService('Players')
local _ = _call722.LocalPlayer
local _call725 = _call682:AddDropdown('Seleccionar Jugador', function(_726, _726_2, _726_3) end)

for _729, _729_2 in ipairs(_call722:GetPlayers())do
    _call725:Add(_729_2.DisplayName .. ' | ' .. _729_2.Name)
end

_call722.PlayerAdded:Connect(function(_739, _739_2, _739_3, _739_4, _739_5) end)
_call682:AddLabel('Jugador seleccionado: Ninguno')
_call682:AddLabel('Fuerza: N/A')
_call682:AddLabel('Durabilidad: N/A')
_call682:AddLabel('Renacimientos: N/A')
task.spawn(function(_750) end)
game.Players.PlayerAdded:Connect(function(_755, _755_2, _755_3) end)

local _LocalPlayer757 = game.Players.LocalPlayer
local _call761 = Instance.new('ScreenGui')

_call761.Name = 'OMEGADEZZ_STATS'
_call761.Parent = _LocalPlayer757:WaitForChild('PlayerGui')
_call761.ResetOnSpawn = false
_call761.Enabled = false

local _call763 = Instance.new('Frame', _call761)

_call763.Size = UDim2.new(0, 250, 0, 100)
_call763.Position = UDim2.new(0.02, 0, 0.8, 0)
_call763.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_call763.BorderSizePixel = 0
_call763.BackgroundTransparency = 0.15
_call763.Visible = true
_call763.Active = true
_call763.Draggable = true

local _call771 = Instance.new('UIStroke', _call763)

_call771.Color = Color3.fromRGB(255, 255, 255)
_call771.Thickness = 1.5

local _call775 = Instance.new('TextLabel', _call763)

_call775.Size = UDim2.new(1, 0, 0, 25)
_call775.BackgroundTransparency = 1
_call775.Text = 'Tus Estad\u{ed}sticas'
_call775.Font = Enum.Font.GothamBold
_call775.TextColor3 = Color3.fromRGB(255, 255, 255)
_call775.TextScaled = true

local _call783 = Instance.new('TextLabel', _call763)

_call783.Size = UDim2.new(1, 0, 1, -25)
_call783.Position = UDim2.new(0, 0, 0, 25)
_call783.BackgroundTransparency = 1
_call783.TextColor3 = Color3.fromRGB(0, 255, 0)
_call783.Font = Enum.Font.Gotham
_call783.TextScaled = true
_call783.Text = 'Cargando...'

task.spawn(function() end)

local _call796 = game:GetService('Players')

game:GetService('RunService')
game:GetService('TweenService')

local _ = _call796.LocalPlayer

_call796.PlayerAdded:Connect(function(_805, _805_2, _805_3, _805_4, _805_5) end)
_call796.PlayerRemoving:Connect(function(_809, _809_2, _809_3) end)
_call682:AddButton('Estadisticas/Players', function(_812) end)

local _call814 = _call11:AddTab('Kills')
local _call816 = game:GetService('Players')
local _LocalPlayer818 = _call816.LocalPlayer

_call814:AddSwitch('NO Matar a mis Amigos', function(_820, _820_2, _820_3, _820_4) end)
_call814:AddSwitch('Auto kill a Todos', function(_823, _823_2) end)

local _call825 = _call814:AddDropdown('Selecciona Jugador', function(_826, _826_2, _826_3, _826_4, _826_5, _826_6) end)

for _829, _829_2 in ipairs(_call816:GetPlayers())do
    local _ = _829_2 == _LocalPlayer818

    _call825:Add(_829_2.Name)

    local _ = _829_2.Name
end

_call816.PlayerAdded:Connect(function(_838, _838_2, _838_3, _838_4) end)
_call816.PlayerRemoving:Connect(function(_842, _842_2, _842_3, _842_4, _842_5) end)
_call814:AddSwitch('Kill al jugador seleccionado', function(_845) end)

local _call847 = _call814:AddDropdown('Espectear Jugador Seleccionado', function(_848, _848_2, _848_3, _848_4) end)

for _851, _851_2 in ipairs(_call816:GetPlayers())do
    local _ = _851_2 == _LocalPlayer818

    _call847:Add(_851_2.Name)
end

_call816.PlayerAdded:Connect(function(_859, _859_2, _859_3, _859_4) end)
_call816.PlayerRemoving:Connect(function(_863, _863_2) end)
_call814:AddSwitch('Espectear Jugador', function(_866, _866_2, _866_3, _866_4) end)

local _ = game:GetService('Players').LocalPlayer

_call814:AddLabel('\u{2501}\u{2501}\u{2501} Solo funciona con PACK \u{2501}\u{2501}\u{2501}')
_call814:AddButton('DuraDezz System', function(_874, _874_2) end)
_call814:AddSwitch('Auto Punch', function(_877, _877_2, _877_3) end)

local _call879 = game:GetService('Players')

fenv.followPlayer = function(_881, _881_2, _881_3, _881_4, _881_5) end

local _call883 = _call814:AddDropdown('Seguir Jugador (TP)', function(_884, _884_2) end)

for _887, _887_2 in ipairs(_call879:GetPlayers())do
    local _ = _887_2 == _call879.LocalPlayer

    _call883:Add(_887_2.Name)
end

_call879.PlayerAdded:Connect(function(_895, _895_2, _895_3, _895_4) end)
_call879.PlayerRemoving:Connect(function(_899, _899_2, _899_3, _899_4) end)
_call814:AddButton('Dejar de Seguir', function(_902, _902_2, _902_3) end)
task.spawn(function() end)
_call814:AddSwitch('Auto Pisoton', function(_908, _908_2, _908_3, _908_4) end)
_call814:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Aqui puedes Activar Matar Muerto \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call814:AddButton('Pegar Muerto', function(_913, _913_2) end)

local _ = game:GetService('Players').LocalPlayer

_call814:AddTextBox('Tama\u{f1}o de Aura', function(_919, _919_2) end)
_call814:AddSwitch('Aura Kill', function(_922, _922_2, _922_3, _922_4, _922_5) end)

genv.killNearby = false

_call814:AddButton('Panel Scanner/Stats', function(_925, _925_2) end)
_call814:AddButton('Panel Scanner/Dead', function(_928, _928_2, _928_3) end)

local _call930 = _call11:AddTab('Farm')

_call930:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Farmeo para PACKS \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call930:AddSwitch('Mega Fast FARM / No LAG (Puedes usarlo SIN PACKS tambien)', function(_935, _935_2) end)
_call930:AddSwitch('Mega Fast REBIRTH / 1 SEG (Solo funciona con PACKS)', function(_938) end)
_call930:AddSwitch('Auto EGG / x2 Strength (Puedes usarlo, no requiere PACKS)', function(_941, _941_2, _941_3, _941_4) end)
_call930:AddSwitch('Hide All Frames (Oculta los efectos de estadisticas, reduce el LAG)', function(_944, _944_2, _944_3) end)
_call930:AddButton('Anti Lag', function(_947, _947_2, _947_3) end)
_call930:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Rebirth Normal SIN Pack \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call930:AddTextBox('Objetivo de Rebirths', function(_952) end)
_call930:AddSwitch('Auto Rebirth hasta objetivo', function(_955, _955_2, _955_3) end)
_call930:AddSwitch('Auto Rebirth infinito', function(_958, _958_2, _958_3) end)
_call930:AddSwitch('Auto Tama\u{f1}o 2', function(_961, _961_2, _961_3, _961_4, _961_5, _961_6) end)
_call930:AddButton('Rebirth Scanner', function() end)
_call930:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Auto Agarrar Maquinas Jungle Gym \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call930:AddButton('Jungle Lift', function(_969) end)
_call930:AddButton('Jungle Squat 1', function(_972, _972_2, _972_3, _972_4, _972_5) end)
_call930:AddButton('Jungle Squat 2', function() end)
_call930:AddSwitch('Auto Weight', function(_978, _978_2) end, "Activa auto uso del 'Weight' para entrenar fuerza")
_call930:AddSwitch('Fast Tools', function(_981, _981_2, _981_3, _981_4) end)
_call353:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Iniciar otro Juegos \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call353:AddButton('Ir a servidor p\u{fa}blico (Steal a Brainrot)', function(_986, _986_2, _986_3, _986_4) end)
_call353:AddButton('Ir a servidor p\u{fa}blico (99 Nights in the Forest)', function(_989, _989_2, _989_3, _989_4, _989_5) end)
_call353:AddButton('Ir a servidor p\u{fa}blico (Plants Vs Brainrots)', function(_992, _992_2) end)
_call353:AddButton('Ir a servidor p\u{fa}blico (Grow a Garden)', function() end)
_call353:AddButton('Ir a servidor p\u{fa}blico (Salon de Fiesta)', function(_998, _998_2) end)

local _call1000 = _call11:AddTab('Credits')

_call1000:AddLabel('L\u{ed}der de Comunidad HonnyDezz')
_call1000:AddLabel('Nombre de la Marca : OMEGADEZZ HUB')
_call1000:AddLabel('Creador/Dev : HonnyDezz')
_call1000:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call1000:AddLabel('Nuestras Redes :')
_call1000:AddLabel('TikTok : @HONNYDEZZ')
_call1000:AddLabel('YouTube : @HONNYDEZZ')
_call1000:AddLabel('Discord : https://discord.gg/TQchfR6wse')
_call1000:AddButton('Copiar Discord', function(_1019, _1019_2, _1019_3, _1019_4) end)
_call1000:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call1000:AddLabel('Gracias a cada uno de ustedes que me apoyan en todo')
_call1000:AddLabel('Gracias por estar siempre presente y ser leales a HZ')
_call1000:AddLabel('Le doy gracias a mis amigos que me ayudan Administrar')
_call1000:AddLabel('Colaboracion : Arlexuin, HRX_RENACIMIENTOS, ChrisDezz, SalvaDezz')
_call1000:AddLabel('CLAN HZ Por SIEMPRE')
_call1000:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')
_call1000:AddLabel('Para Nombre personalizado RAIMBOW / 500 Robux')
_call1000:AddLabel('User: Honnydezz_z(Main)-Honnyydezz(Alt)-itsbajamilioncat(alt)')

local _call1039 = _call572:AddLabel('\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501} Configuraciones Extras \u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}')

_call1039.TextSize = 17

_call572:AddButton('Emotes', function(_1042) end)
_call572:AddButton('Eliminar Animacion de Pu\u{f1}os', function(_1045) end)

fenv.RecoveryPunch = function(_1046, _1046_2, _1046_3) end

_call572:AddSwitch('Hide Pets/Ocultar Pets', function(_1049, _1049_2, _1049_3, _1049_4) end)
_call572:AddSwitch('Ultra Fast Stomp', function(_1052, _1052_2, _1052_3, _1052_4, _1052_5, _1052_6) end)
_call572:AddSwitch('Eliminar Animaciones de Stomp/Stamp', function(_1055, _1055_2, _1055_3) end)
_call572:AddSwitch('Auto GODMODE Join Tiny (Funciona con menos de 1k Fuerza)', function(_1058, _1058_2, _1058_3, _1058_4, _1058_5) end)
task.spawn(function(_1061, _1061_2, _1061_3, _1061_4, _1061_5) end)
_call572:AddButton('Spawn', function(_1064, _1064_2, _1064_3, _1064_4) end)
game:GetService('RunService')

local _ = game:GetService('Players').LocalPlayer

game:GetService('RunService')
game:GetService('TweenService')
game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function(_1080) end)
_call682:AddButton('Ver Mis Stats', function(_1083) end)
