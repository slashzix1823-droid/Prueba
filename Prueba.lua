-- ts file was generated at discord.gg/25ms

local _CanesPrivScript = loadstring(game:HttpGet('https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library', true))():AddWindow('Canes Priv Script\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}', {
    main_color = Color3.fromRGB(27, 2, 252),
    min_size = Vector2.new(600, 600),
    can_resize = false,
})
local _ReplicatedStorage = game:GetService('ReplicatedStorage')
local u3 = {
    'strengthFrame',
    'durabilityFrame',
    'agilityFrame',
}
local v4, v5, v6 = ipairs(u3)

while true do
    local v7, v8 = v4(v5, v6)

    if v7 == nil then
        break
    end

    v6 = v7

    local v9 = _ReplicatedStorage:FindFirstChild(v8)

    if v9 and v9:IsA('GuiObject') then
        v9.Visible = false
    end
end

_ReplicatedStorage.ChildAdded:Connect(function(p10)
    if table.find(u3, p10.Name) and p10:IsA('GuiObject') then
        p10.Visible = false
    end
end)

local _Main = _CanesPrivScript:AddTab('Main')
local v12 = _Main

_Main.Show(v12)

local v13 = _Main

_Main.AddLabel(v13, 'Settings').TextSize = 20

local _Players = game:GetService('Players')
local _changeSpeedSizeRemote = game:GetService('ReplicatedStorage').rEvents.changeSpeedSizeRemote
local u16 = 2
local u17 = false
local v18 = _Main

_Main.AddTextBox(v18, 'Size', function(p19)
    local v20 = tonumber(p19:match('%d+'))

    if v20 then
        u16 = v20
    end
end)

local v21 = _Main

_Main.AddSwitch(v21, 'Set Size', function(p22)
    u17 = p22
end):Set(false)
task.spawn(function()
    while true do
        if u17 then
            local _Character = _Players.LocalPlayer.Character

            if _Character and _Character:FindFirstChildOfClass('Humanoid') then
                _changeSpeedSizeRemote:InvokeServer('changeSize', u16)
            end
        end

        task.wait(0.5)
    end
end)

local u24 = 120
local u25 = false
local v26 = _Main

_Main.AddTextBox(v26, 'Speed', function(p27)
    local v28 = tonumber(p27:match('%d+'))

    if v28 then
        u24 = v28
    end
end)

local v29 = _Main

_Main.AddSwitch(v29, 'Set Speed', function(p30)
    u25 = p30
end):Set(false)
task.spawn(function()
    while true do
        if u25 then
            local _Character2 = _Players.LocalPlayer.Character

            if _Character2 and _Character2:FindFirstChildOfClass('Humanoid') then
                _changeSpeedSizeRemote:InvokeServer('changeSpeed', u24)
            end
        end

        task.wait(0.5)
    end
end)

local v32 = _Main

_Main.AddLabel(v32, 'Misc').TextSize = 20

local v33 = _Main

_Main.AddSwitch(v33, 'Show Pets', function(p34)
    local _LocalPlayer = _Players.LocalPlayer

    if _LocalPlayer:FindFirstChild('hidePets') then
        _LocalPlayer.hidePets.Value = p34
    end
end):Set(false)

local _VirtualUser = game:GetService('VirtualUser')
local u37 = nil

local function u38()
    if not u37 then
        u37 = _Players.LocalPlayer.Idled:Connect(function()
            _VirtualUser:CaptureController()
            _VirtualUser:ClickButton2(Vector2.new())
        end)
    end
end
local function u39()
    if u37 then
        u37:Disconnect()

        u37 = nil
    end
end

local v40 = _Main

_Main.AddSwitch(v40, 'Anti AFK', function(p41)
    if p41 then
        u38()
    else
        u39()
    end
end):Set(true)

local v42 = _Main

_Main.AddSwitch(v42, 'Anti Fling', function(p43)
    local v44 = workspace:FindFirstChild(_Players.LocalPlayer.Name)
    local v45 = v44 and v44:FindFirstChild('HumanoidRootPart')

    if v45 then
        if p43 then
            local _BodyVelocity = Instance.new('BodyVelocity')

            _BodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
            _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
            _BodyVelocity.P = 1250
            _BodyVelocity.Name = 'AntiFling'
            _BodyVelocity.Parent = v45
        else
            local _AntiFling = v45:FindFirstChild('AntiFling')

            if _AntiFling then
                _AntiFling:Destroy()
            end
        end
    end
end)

_CanesPrivScript:AddTab('Specs'):AddLabel('Player:').TextSize = 20

local function u52(p48)
    local v49 = {
        'K',
        'M',
        'B',
        'T',
        'Qa',
    }

    for v50 = #v49, 1, -1 do
        local v51 = 10 ^ (v50 * 3)

        if v51 <= p48 then
            return string.format('%.2f%s', p48 / v51, v49[v50])
        end
    end

    return string.format('%.2f', p48)
end

local u53 = {}
local u54 = nil
local u55 = false

local function u70(p56)
    local v57, v58, v59 = pairs(u53)

    while true do
        local v60

        v59, v60 = v57(v58, v59)

        if v59 == nil then
            break
        end

        v60:Remove()
    end

    u53 = {}
    u54 = p56

    if p56 then
        local _leaderstats = p56:WaitForChild('leaderstats')
        local _Strength = _leaderstats:WaitForChild('Strength')
        local _Rebirths = _leaderstats:WaitForChild('Rebirths')
        local _Durability = p56:WaitForChild('Durability')
        local _Kills = _leaderstats:WaitForChild('Kills')
        local _Agility = p56:WaitForChild('Agility')
        local _evilKarma = p56:WaitForChild('evilKarma')
        local _goodKarma = p56:WaitForChild('goodKarma')
        local _Brawls = _leaderstats:WaitForChild('Brawls')

        u53.strengthLabel = _Main:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Strength: ' .. u52(_Strength.Value))
        u53.rebirthsLabel = _Main:AddLabel('\u{fffd}\u{fffd}\u{fe0f}Rebirths: ' .. u52(_Rebirths.Value))
        u53.durabilityLabel = _Main:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fe0f}Durability: ' .. u52(_Durability.Value))
        u53.killsLabel = _Main:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Kills: ' .. u52(_Kills.Value))
        u53.agilityLabel = _Main:AddLabel('\u{fffd}\u{fffd}Agility: ' .. u52(_Agility.Value))
        u53.evilKarmaLabel = _Main:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Evil Karma: ' .. u52(_evilKarma.Value))
        u53.goodKarmaLabel = _Main:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Good Karma: ' .. u52(_goodKarma.Value))
        u53.brawlsLabel = _Main:AddLabel('\u{fffd}\u{fffd}\u{fe0f}Brawls: ' .. u52(_Brawls.Value))

        spawn(function()
            while p56 and p56.Parent do
                wait(1)
                u53.strengthLabel:SetText('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Strength: ' .. u52(_Strength.Value))
                u53.rebirthsLabel:SetText('\u{fffd}\u{fffd}\u{fe0f}Rebirths: ' .. u52(_Rebirths.Value))
                u53.durabilityLabel:SetText('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fe0f}Durability: ' .. u52(_Durability.Value))
                u53.killsLabel:SetText('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Kills: ' .. u52(_Kills.Value))
                u53.agilityLabel:SetText('\u{fffd}\u{fffd}Agility: ' .. u52(_Agility.Value))
                u53.evilKarmaLabel:SetText('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Evil Karma: ' .. u52(_evilKarma.Value))
                u53.goodKarmaLabel:SetText('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Good Karma: ' .. u52(_goodKarma.Value))
                u53.brawlsLabel:SetText('\u{fffd}\u{fffd}\u{fe0f}Brawls: ' .. u52(_Brawls.Value))
            end
        end)
    end
end
local function u71()
    return game:GetService('Players'):GetPlayers()
end

local v72 = _Main
local u80 = _Main.AddDropdown(v72, 'Choose Player', function(p73)
    local v74 = u71()
    local v75, v76, v77 = ipairs(v74)
    local v78 = nil

    while true do
        local v79

        v77, v79 = v75(v76, v77)

        if v77 == nil then
            v79 = v78

            break
        end
        if p73 == v79.DisplayName .. ' | ' .. v79.Name then
            break
        end
    end

    u70(v79)
end)
local v81, v82, v83 = ipairs(u71())
local u84 = _changeSpeedSizeRemote
local u85 = u17
local v86 = _Main
local u87 = u55
local u88 = u54

while true do
    local v89

    v83, v89 = v81(v82, v83)

    if v83 == nil then
        break
    end

    u80:Add(v89.DisplayName .. ' | ' .. v89.Name)
end

game:GetService('Players').PlayerAdded:Connect(function(p90)
    u80:Add(p90.DisplayName .. ' | ' .. p90.Name)
end)
game:GetService('Players').PlayerRemoving:Connect(function(p91)
    u80:Remove(p91.DisplayName .. ' | ' .. p91.Name)

    local _ = p91 ~= u88
end)
v86:AddSwitch('Spectate Player', function(_) end):Set(false)
v86:AddLabel('')

v86:AddLabel('Player Stats:').TextSize = 20

local _Killer = _CanesPrivScript:AddTab('Killer')

local function u93()
    if not game.Players.LocalPlayer.Character then
        repeat
            task.wait()
        until game.Players.LocalPlayer.Character
    end

    return game.Players.LocalPlayer.Character
end
local function u98()
    local v94, v95, v96 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

    while true do
        local v97

        v96, v97 = v94(v95, v96)

        if v96 == nil then
            break
        end
        if v97.Name == 'Punch' and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v97)
        end
    end

    game.Players.LocalPlayer.muscleEvent:FireServer('punch', 'leftHand')
    game.Players.LocalPlayer.muscleEvent:FireServer('punch', 'rightHand')
end
local function u101(p99)
    local v100 = p99 and p99.Character and (p99.Character:FindFirstChild('HumanoidRootPart') and p99.Character:FindFirstChild('Humanoid'))

    if v100 then
        v100 = p99.Character.Humanoid.Health > 0
    end

    return v100
end
local function u104(p102)
    if u101(p102) then
        local u103 = u93()

        if u103 and u103:FindFirstChild('LeftHand') then
            pcall(function()
                firetouchinterest(p102.Character.HumanoidRootPart, u103.LeftHand, 0)
                firetouchinterest(p102.Character.HumanoidRootPart, u103.LeftHand, 1)
                u98()
            end)
        end
    end
end

_Killer:AddLabel('Misc').TextSize = 20

local _SelectPet = _Killer:AddDropdown('Select Pet', function(p105)
    local _petsFolder = game.Players.LocalPlayer.petsFolder
    local v107, v108, v109 = pairs(_petsFolder:GetChildren())

    while true do
        local v110

        v109, v110 = v107(v108, v109)

        if v109 == nil then
            break
        end
        if v110:IsA('Folder') then
            local v111, v112, v113 = pairs(v110:GetChildren())

            while true do
                local v114

                v113, v114 = v111(v112, v113)

                if v113 == nil then
                    break
                end

                game:GetService('ReplicatedStorage').rEvents.equipPetEvent:FireServer('unequipPet', v114)
            end
        end
    end

    task.wait(0.2)

    local v115, v116, v117 = pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())
    local v118 = {}

    while true do
        local v119

        v117, v119 = v115(v116, v117)

        if v117 == nil then
            break
        end
        if v119.Name == p105 then
            table.insert(v118, v119)
        end
    end

    for v120 = 1, math.min(8, #v118)do
        game:GetService('ReplicatedStorage').rEvents.equipPetEvent:FireServer('equipPet', v118[v120])
        task.wait(0.1)
    end
end)

_SelectPet:Add('Wild Wizard')
_SelectPet:Add('Mighty Monster')
_Killer:AddButton('Remove Attack Animations', function()
    local u122 = {
        ['rbxassetid://3638729053'] = true,
        ['rbxassetid://3638767427'] = true,
    }

    (function()
        local _Character3 = game.Players.LocalPlayer.Character

        if _Character3 and _Character3:FindFirstChild('Humanoid') then
            local _Humanoid = _Character3:FindFirstChild('Humanoid')
            local v125, v126, v127 = pairs(_Humanoid:GetPlayingAnimationTracks())

            while true do
                local v128

                v127, v128 = v125(v126, v127)

                if v127 == nil then
                    break
                end
                if v128.Animation then
                    local _AnimationId = v128.Animation.AnimationId
                    local v130 = v128.Name:lower()

                    if u122[_AnimationId] or v130:match('punch') or (v130:match('attack') or v130:match('right')) then
                        v128:Stop()
                    end
                end
            end

            if not _G.AnimBlockConnection then
                local v134 = _Humanoid.AnimationPlayed:Connect(function(p131)
                    if p131.Animation then
                        local _AnimationId2 = p131.Animation.AnimationId
                        local v133 = p131.Name:lower()

                        if u122[_AnimationId2] or v133:match('punch') or (v133:match('attack') or v133:match('right')) then
                            p131:Stop()
                        end
                    end
                end)

                _G.AnimBlockConnection = v134
            end
        end
    end)()
end)
_Killer:AddLabel('')

_Killer:AddLabel('Auto Kill').TextSize = 20
_G.whitelistedPlayers = _G.whitelistedPlayers or {}
_G.blacklistedPlayers = _G.blacklistedPlayers or {}

local function u140(p135)
    local v136, v137, v138 = ipairs(_G.whitelistedPlayers)

    while true do
        local v139

        v138, v139 = v136(v137, v138)

        if v138 == nil then
            break
        end
        if v139:lower() == p135.Name:lower() then
            return true
        end
    end

    return false
end

local _Whitelist = _Killer:AddDropdown('Whitelist', function(p141)
    local v142 = p141:match('| (.+)$')

    if v142 then
        local _ss = v142:gsub('^%s*(.-)%s*$', '%1')
        local v144, v145, v146 = ipairs(_G.whitelistedPlayers)

        while true do
            local v147

            v146, v147 = v144(v145, v146)

            if v146 == nil then
                break
            end
            if v147:lower() == _ss:lower() then
                return
            end
        end

        table.insert(_G.whitelistedPlayers, _ss)
    end
end)

_Killer:AddSwitch('Kill Everyone', function(p149)
    _G.killAll = p149

    if p149 then
        if not _G.killAllConnection then
            _G.killAllConnection = game:GetService('RunService').Heartbeat:Connect(function()
                if _G.killAll then
                    local v150, v151, v152 = ipairs(game:GetService('Players'):GetPlayers())

                    while true do
                        local v153

                        v152, v153 = v150(v151, v152)

                        if v152 == nil then
                            break
                        end
                        if v153 ~= game.Players.LocalPlayer and not u140(v153) then
                            u104(v153)
                        end
                    end
                end
            end)
        end
    elseif _G.killAllConnection then
        _G.killAllConnection:Disconnect()

        _G.killAllConnection = nil
    end
end):Set(false)
_Killer:AddSwitch('Whitelist Friends', function(p154)
    _G.whitelistFriends = p154

    if p154 then
        local v155, v156, v157 = pairs(game.Players:GetPlayers())

        while true do
            local v158

            v157, v158 = v155(v156, v157)

            if v157 == nil then
                break
            end
            if v158 ~= game.Players.LocalPlayer and v158:IsFriendsWith(game.Players.LocalPlayer.UserId) then
                local _Name = v158.Name
                local v160, v161, v162 = ipairs(_G.whitelistedPlayers)
                local v163 = false

                while true do
                    local v164

                    v162, v164 = v160(v161, v162)

                    if v162 == nil then
                        break
                    end
                    if v164:lower() == _Name:lower() then
                        v163 = true

                        break
                    end
                end

                if not v163 then
                    table.insert(_G.whitelistedPlayers, _Name)
                end
            end
        end
    end
end):Set(false)
_Killer:AddLabel('')

_Killer:AddLabel('Kill Targets').TextSize = 20

local _Blacklist = _Killer:AddDropdown('Blacklist', function(p165)
    local v166 = p165:match('| (.+)$')

    if v166 then
        local _ss2 = v166:gsub('^%s*(.-)%s*$', '%1')
        local v168, v169, v170 = ipairs(_G.blacklistedPlayers)

        while true do
            local v171

            v170, v171 = v168(v169, v170)

            if v170 == nil then
                break
            end
            if v171:lower() == _ss2:lower() then
                return
            end
        end

        table.insert(_G.blacklistedPlayers, _ss2)
    end
end)
local v173, v174, v175 = ipairs(game:GetService('Players'):GetPlayers())
local u176 = u98
local u177 = u140
local u178 = u93
local u179 = u101

local function u181(p180)
    return p180.DisplayName .. ' | ' .. p180.Name
end
local function u187(p182)
    local v183, v184, v185 = ipairs(_G.blacklistedPlayers)

    while true do
        local v186

        v185, v186 = v183(v184, v185)

        if v185 == nil then
            break
        end
        if v186:lower() == p182.Name:lower() then
            return true
        end
    end

    return false
end

while true do
    local v188, v189 = v173(v174, v175)

    if v188 == nil then
        break
    end

    v175 = v188

    if v189 ~= game.Players.LocalPlayer then
        local v190 = u181(v189)

        _Whitelist:Add(v190)
        _Blacklist:Add(v190)
    end
end

game:GetService('Players').PlayerAdded:Connect(function(p191)
    if p191 ~= game.Players.LocalPlayer then
        local v192 = u181(p191)

        _Whitelist:Add(v192)
        _Blacklist:Add(v192)
    end
end)
game:GetService('Players').PlayerRemoving:Connect(function(p193)
    local v194 = u181(p193)
    local v195 = _Whitelist
    local v196, v197, v198 = pairs(v195:GetItems())

    while true do
        local v199

        v198, v199 = v196(v197, v198)

        if v198 == nil then
            break
        end
        if v199.Text == v194 then
            _Whitelist:Remove(v199.Text)

            break
        end
    end

    local v200 = _Blacklist
    local v201, v202, v203 = pairs(v200:GetItems())

    while true do
        local v204

        v203, v204 = v201(v202, v203)

        if v203 == nil then
            break
        end
        if v204.Text == v194 then
            _Blacklist:Remove(v204.Text)

            break
        end
    end
end)
_Killer:AddSwitch('Kill Blacklist', function(p205)
    _G.killBlacklistedOnly = p205

    if p205 then
        if not _G.blacklistKillConnection then
            _G.blacklistKillConnection = game:GetService('RunService').Heartbeat:Connect(function()
                if _G.killBlacklistedOnly then
                    local v206, v207, v208 = ipairs(game:GetService('Players'):GetPlayers())

                    while true do
                        local v209

                        v208, v209 = v206(v207, v208)

                        if v208 == nil then
                            break
                        end
                        if v209 ~= game.Players.LocalPlayer and u187(v209) then
                            u104(v209)
                        end
                    end
                end
            end)
        end
    elseif _G.blacklistKillConnection then
        _G.blacklistKillConnection:Disconnect()

        _G.blacklistKillConnection = nil
    end
end)
_Killer:AddLabel('')

_Killer:AddLabel('Kill Aura').TextSize = 20

_Killer:AddTextBox('Range (1-140)', function(p210)
    local v211 = tonumber(p210)

    if v211 then
        _G.deathRingRange = math.clamp(v211, 1, 140)
    end
end)
_Killer:AddSwitch('Death Ring', function(p212)
    _G.deathRingEnabled = p212

    if p212 then
        if not _G.deathRingConnection then
            _G.deathRingConnection = game:GetService('RunService').Heartbeat:Connect(function()
                local v213 = u178()
                local v214 = v213 and v213:FindFirstChild('HumanoidRootPart')

                if v214 then
                    v214 = v213.HumanoidRootPart.Position
                end
                if v214 then
                    local v215, v216, v217 = ipairs(game:GetService('Players'):GetPlayers())

                    while true do
                        local v218

                        v217, v218 = v215(v216, v217)

                        if v217 == nil then
                            break
                        end
                        if v218 ~= game.Players.LocalPlayer and not u177(v218) and u179(v218) and (v214 - v218.Character.HumanoidRootPart.Position).Magnitude <= (_G.deathRingRange or 20) then
                            u104(v218)
                        end
                    end
                end
            end)
        end
    elseif _G.deathRingConnection then
        _G.deathRingConnection:Disconnect()

        _G.deathRingConnection = nil
    end
end):Set(false)
_Killer:AddLabel('')

local _WhitelistNone = _Killer:AddLabel('Whitelist: None')

_WhitelistNone.TextColor3 = Color3.fromRGB(26, 212, 51)
_WhitelistNone.TextSize = 17

_Killer:AddButton('Clear Whitelist', function()
    _G.whitelistedPlayers = {}
end)

local _BlacklistNone = _Killer:AddLabel('Blacklist: None')

_BlacklistNone.TextColor3 = Color3.fromRGB(191, 25, 25)
_BlacklistNone.TextSize = 17

_Killer:AddButton('Clear Blacklist', function()
    _G.blacklistedPlayers = {}
end)

local function u221()
    if #_G.whitelistedPlayers ~= 0 then
        _WhitelistNone.Text = 'Whitelist: ' .. table.concat(_G.whitelistedPlayers, ', ')
    else
        _WhitelistNone.Text = 'Whitelist: None'
    end
end
local function u222()
    if #_G.blacklistedPlayers ~= 0 then
        _BlacklistNone.Text = 'Blacklist: ' .. table.concat(_G.blacklistedPlayers, ', ')
    else
        _BlacklistNone.Text = 'Blacklist: None'
    end
end

task.spawn(function()
    while true do
        u221()
        u222()
        task.wait(0.2)
    end
end)

local _Farming = _CanesPrivScript:AddTab('Farming')

_Farming:AddLabel('Misc').TextSize = 20

_Farming:AddSwitch('Auto Lift (Gamepass)', function(p224)
    if p224 then
        local _gamepassIds = game:GetService('ReplicatedStorage').gamepassIds
        local _LocalPlayer2 = game:GetService('Players').LocalPlayer
        local v227, v228, v229 = pairs(_gamepassIds:GetChildren())

        while true do
            local v230

            v229, v230 = v227(v228, v229)

            if v229 == nil then
                break
            end

            local _IntValue = Instance.new('IntValue')

            _IntValue.Name = v230.Name
            _IntValue.Value = v230.Value
            _IntValue.Parent = _LocalPlayer2.ownedGamepasses
        end
    else
        local _LocalPlayer3 = game:GetService('Players').LocalPlayer

        if _LocalPlayer3 and _LocalPlayer3.ownedGamepasses then
            local _gamepassIds2 = game:GetService('ReplicatedStorage').gamepassIds
            local v234, v235, v236 = pairs(_gamepassIds2:GetChildren())

            while true do
                local v237

                v236, v237 = v234(v235, v236)

                if v236 == nil then
                    break
                end

                local v238 = _LocalPlayer3.ownedGamepasses:FindFirstChild(v237.Name)

                if v238 and v238.Value == v237.Value then
                    v238:Destroy()
                end
            end
        end
    end
end)
game:GetService('RunService')

local _Players2 = game:GetService('Players')
local _LocalPlayer4 = _Players2.LocalPlayer
local u241 = _LocalPlayer4.Character or _LocalPlayer4.CharacterAdded:Wait()
local _Backpack = _LocalPlayer4:WaitForChild('Backpack')
local u243 = false
local u244 = nil

_Farming:AddSwitch('Auto Punch (without animation)', function(p245)
    u243 = p245

    if u243 then
        u244 = task.spawn(function()
            local v246 = _Backpack:FindFirstChild('Punch') or u241:FindFirstChild('Punch')

            if not v246 then
                repeat
                    v246 = _Backpack:FindFirstChild('Punch') or u241:FindFirstChild('Punch')

                    task.wait(0.1)
                until v246
            end

            local v247

            if v246.Parent ~= _Backpack then
                v247 = 'leftHand'
            else
                v246.Parent = u241
                v247 = 'leftHand'
            end

            while u243 do
                if _LocalPlayer4:FindFirstChild('muscleEvent') then
                    _LocalPlayer4.muscleEvent:FireServer('punch', v247)

                    v247 = v247 == 'leftHand' and 'rightHand' or 'leftHand'
                end

                task.wait(0.2)
            end
        end)
    else
        local _Punch = u241:FindFirstChild('Punch')

        if _Punch then
            _Punch.Parent = _Backpack
        end
    end
end):Set(false)

local _Rebirths2 = _Farming:AddLabel('\u{fffd}\u{fffd}\u{fe0f}Rebirths:')

_Rebirths2.TextSize = 20

local function u255(p250)
    local v251 = tostring(p250)
    local v252 = 0
    local v253 = ''

    for v254 = #v251, 1, -1 do
        v252 = v252 + 1
        v253 = v251:sub(v254, v254) .. v253

        if v252 % 3 == 0 then
            if v254 > 1 then
                v253 = ',' .. v253
            end
        end
    end

    return v253
end

task.spawn(function()
    local _Rebirths3 = game.Players.LocalPlayer.leaderstats:WaitForChild('Rebirths')

    while true do
        _Rebirths2.Text = 'Rebirths: ' .. u255(_Rebirths3.Value)

        task.wait(0.2)
    end
end)
_Farming:AddSwitch('Auto Rebirth', function(p257)
    if p257 then
        while true do
            _ReplicatedStorage.rEvents.rebirthRemote:InvokeServer('rebirthRequest')
            task.wait(0.05)
        end
    else
        return
    end
end):Set(false)
_Farming:AddSwitch('Auto Size 1', function(p258)
    u85 = p258
end):Set(false)
task.spawn(function()
    while true do
        if u85 then
            local _Character4 = _Players2.LocalPlayer.Character

            if _Character4 and _Character4:FindFirstChildOfClass('Humanoid') then
                u84:InvokeServer('changeSize', 1)
            end
        end

        task.wait(0.05)
    end
end)

local u260 = CFrame.new(-8665.4, 17.21, -5792.9)
local u261 = false

_Farming:AddSwitch('Auto King', function(p262)
    u261 = p262
end):Set(false)
task.spawn(function()
    local _LocalPlayer5 = _Players2.LocalPlayer
    local _HumanoidRootPart = (_LocalPlayer5.Character or _LocalPlayer5.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')

    while true do
        if u261 and (_HumanoidRootPart.Position - u260.Position).magnitude > 5 then
            _HumanoidRootPart.CFrame = u260
        end

        task.wait(0.05)
    end
end)

_Farming:AddLabel('Tools').TextSize = 20

local u265 = nil
local u266 = false
local _SelectTool = _Farming:AddDropdown('Select Tool', function(p267)
    u265 = p267
end)

_SelectTool:Add('Weight')
_SelectTool:Add('Pushups')
_SelectTool:Add('Situps')
_SelectTool:Add('Handstands')
_SelectTool:Add('Fast Punch')
_SelectTool:Add('Stomp')
_SelectTool:Add('Ground Slam')
_Farming:AddSwitch('Start', function(p269)
    u266 = p269

    if p269 then
        task.spawn(function()
            while u266 do
                local _LocalPlayer6 = game:GetService('Players').LocalPlayer

                if u265 ~= 'Weight' then
                    if u265 ~= 'Pushups' then
                        if u265 ~= 'Situps' then
                            if u265 ~= 'Handstands' then
                                if u265 ~= 'Fast Punch' then
                                    if u265 ~= 'Stomp' then
                                        if u265 == 'Ground Slam' then
                                            local _GroundSlam = _LocalPlayer6.Backpack:FindFirstChild('Ground Slam')

                                            if _GroundSlam then
                                                _GroundSlam.Parent = _LocalPlayer6.Character

                                                if _GroundSlam:FindFirstChild('attackTime') then
                                                    _GroundSlam.attackTime.Value = 0
                                                end
                                            end

                                            _LocalPlayer6.muscleEvent:FireServer('slam')

                                            if _LocalPlayer6.Character:FindFirstChild('Ground Slam') then
                                                _LocalPlayer6.Character['Ground Slam']:Activate()
                                            end
                                            if tick() % 6 < 0.1 then
                                                local _VirtualUser2 = game:GetService('VirtualUser')

                                                _VirtualUser2:CaptureController()
                                                _VirtualUser2:ClickButton1(Vector2.new(500, 500))
                                            end
                                        end
                                    else
                                        local _Stomp = _LocalPlayer6.Backpack:FindFirstChild('Stomp')

                                        if _Stomp then
                                            _Stomp.Parent = _LocalPlayer6.Character

                                            if _Stomp:FindFirstChild('attackTime') then
                                                _Stomp.attackTime.Value = 0
                                            end
                                        end

                                        _LocalPlayer6.muscleEvent:FireServer('stomp')

                                        if _LocalPlayer6.Character:FindFirstChild('Stomp') then
                                            _LocalPlayer6.Character.Stomp:Activate()
                                        end
                                        if tick() % 6 < 0.1 then
                                            local _VirtualUser3 = game:GetService('VirtualUser')

                                            _VirtualUser3:CaptureController()
                                            _VirtualUser3:ClickButton1(Vector2.new(500, 500))
                                        end
                                    end
                                else
                                    local _Punch2 = _LocalPlayer6.Backpack:FindFirstChild('Punch')

                                    if _Punch2 then
                                        _Punch2.Parent = _LocalPlayer6.Character

                                        if _Punch2:FindFirstChild('attackTime') then
                                            _Punch2.attackTime.Value = 0
                                        end
                                    end

                                    _LocalPlayer6.muscleEvent:FireServer('punch', 'rightHand')
                                    _LocalPlayer6.muscleEvent:FireServer('punch', 'leftHand')

                                    if _LocalPlayer6.Character:FindFirstChild('Punch') then
                                        _LocalPlayer6.Character.Punch:Activate()
                                    end
                                end
                            else
                                local v276 = not _LocalPlayer6.Character:FindFirstChild('Handstands') and _LocalPlayer6.Backpack:FindFirstChild('Handstands')

                                if v276 then
                                    _LocalPlayer6.Character.Humanoid:EquipTool(v276)
                                end

                                _LocalPlayer6.muscleEvent:FireServer('rep')
                            end
                        else
                            local v277 = not _LocalPlayer6.Character:FindFirstChild('Situps') and _LocalPlayer6.Backpack:FindFirstChild('Situps')

                            if v277 then
                                _LocalPlayer6.Character.Humanoid:EquipTool(v277)
                            end

                            _LocalPlayer6.muscleEvent:FireServer('rep')
                        end
                    else
                        local v278 = not _LocalPlayer6.Character:FindFirstChild('Pushups') and _LocalPlayer6.Backpack:FindFirstChild('Pushups')

                        if v278 then
                            _LocalPlayer6.Character.Humanoid:EquipTool(v278)
                        end

                        _LocalPlayer6.muscleEvent:FireServer('rep')
                    end
                else
                    local v279 = not _LocalPlayer6.Character:FindFirstChild('Weight') and _LocalPlayer6.Backpack:FindFirstChild('Weight')

                    if v279 then
                        _LocalPlayer6.Character.Humanoid:EquipTool(v279)
                    end

                    _LocalPlayer6.muscleEvent:FireServer('rep')
                end

                task.wait()
            end
        end)
    else
        local _LocalPlayer7 = game:GetService('Players').LocalPlayer

        if u265 and _LocalPlayer7.Character:FindFirstChild(u265) then
            _LocalPlayer7.Character:FindFirstChild(u265).Parent = _LocalPlayer7.Backpack
        end
    end
end)

_Farming:AddLabel('Rocks').TextSize = 20

local u281 = {
    ['Tiny Rock'] = 0,
    ['Starter Island'] = 100,
    ['Punching Rock'] = 1000,
    ['Golden Rock'] = 5000,
    ['Frost Rock'] = 150000,
    ['Mythical Rock'] = 400000,
    ['Eternal Rock'] = 750000,
    ['Legend Rock'] = 1000000,
    ['Muscle King Rock'] = 5000000,
    ['Jungle Rock'] = 10000000,
}
local u282 = nil
local _SelectRock = _Farming:AddDropdown('Select Rock', function(p283)
    u282 = p283
end)
local v285, v286, v287 = pairs(u281)
local u288 = u282

while true do
    v287 = v285(v286, v287)

    if v287 == nil then
        break
    end

    _SelectRock:Add(v287)
end

_Farming:AddSwitch('Fast Glitch', function(p289)
    getgenv().RockFarmRunning = p289

    if p289 and u288 then
        task.spawn(function()
            local v290 = u281[u288]
            local _LocalPlayer8 = game:GetService('Players').LocalPlayer

            while getgenv().RockFarmRunning do
                task.wait()

                if v290 <= _LocalPlayer8.Durability.Value then
                    local v292, v293, v294 = pairs(workspace.machinesFolder:GetDescendants())

                    while true do
                        local v295

                        v294, v295 = v292(v293, v294)

                        if v294 == nil then
                            break
                        end
                        if v295.Name == 'neededDurability' and v295.Value == v290 and _LocalPlayer8.Character:FindFirstChild('LeftHand') and _LocalPlayer8.Character:FindFirstChild('RightHand') then
                            local _Rock = v295.Parent:FindFirstChild('Rock')

                            if _Rock then
                                firetouchinterest(_Rock, _LocalPlayer8.Character.RightHand, 0)
                                firetouchinterest(_Rock, _LocalPlayer8.Character.RightHand, 1)
                                firetouchinterest(_Rock, _LocalPlayer8.Character.LeftHand, 0)
                                firetouchinterest(_Rock, _LocalPlayer8.Character.LeftHand, 1)
                                u176()
                            end
                        end
                    end
                end
            end
        end)
    end
end)

_Farming:AddLabel('Machines').TextSize = 20

local u297 = nil
local u298 = nil
local u299 = false
local u300 = nil
local u301 = nil

local function u303()
    local _VirtualInputManager = game:GetService('VirtualInputManager')

    _VirtualInputManager:SendKeyEvent(true, 'E', false, game)
    task.wait(0.1)
    _VirtualInputManager:SendKeyEvent(false, 'E', false, game)
end
local function u304()
    while u299 and task.wait() do
        game:GetService('Players').LocalPlayer.muscleEvent:FireServer('rep')
    end
end
local function u305()
    if u301 then
        u301:Cancel()

        u301 = nil
    end
end
local function u308(_, p306)
    local _Character5 = game.Players.LocalPlayer.Character

    if _Character5 and _Character5:FindFirstChild('HumanoidRootPart') then
        _Character5.HumanoidRootPart.CFrame = p306

        task.wait(0.5)
        u303()

        if u299 then
            u301 = task.spawn(u304)
        end
    end
end

local u309 = {
    ['Bench Press'] = {
        ['Jungle Gym'] = CFrame.new(-8173, 64, 1898),
        ['Muscle King Gym'] = CFrame.new(-8590.06152, 46.0167427, -6043.34717),
        ['Legend Gym'] = CFrame.new(4111.91748, 1020.46674, -3799.97217),
    },
    Squat = {
        ['Jungle Gym'] = CFrame.new(-8352, 34, 2878),
        ['Muscle King Gym'] = CFrame.new(-8940.12402, 13.1642084, -5699.13477),
        ['Legend Gym'] = CFrame.new(4304.99023, 987.829956, -4124.2334),
    },
    ['Pull Up'] = {
        ['Jungle Gym'] = CFrame.new(-8666, 34, 2070),
        ['Muscle King Gym'] = CFrame.new(-8940.12402, 13.1642084, -5699.13477),
        ['Legend Gym'] = CFrame.new(4304.99023, 987.829956, -4124.2334),
    },
    Boulder = {
        ['Jungle Gym'] = CFrame.new(-8621, 34, 2684),
        ['Muscle King Gym'] = CFrame.new(-8940.12402, 13.1642084, -5699.13477),
        ['Legend Gym'] = CFrame.new(4304.99023, 987.829956, -4124.2334),
    },
}

_Farming:AddSwitch('Start', function(p310)
    u299 = p310

    if p310 then
        if u297 and u298 and u309[u298][u297] then
            u308(u298, u309[u298][u297])
        end
    else
        u305()
    end
end)

local _Gym = _Farming:AddDropdown('Gym', function(p311)
    u297 = p311

    if u300 then
        u300:Clear()
    end
    if p311 == 'Jungle Gym' then
        u300 = _Farming:AddDropdown('Machine', function(p312)
            u298 = p312
        end)

        u300:Add('Bench Press')
        u300:Add('Squat')
        u300:Add('Pull Up')
        u300:Add('Boulder')
    elseif p311 == 'Muscle King Gym' then
        u300 = _Farming:AddDropdown('Machine', function(p313)
            u298 = p313
        end)

        u300:Add('Bench Press')
        u300:Add('Squat')
        u300:Add('Pull Up')
        u300:Add('Boulder')
    elseif p311 == 'Legend Gym' then
        u300 = _Farming:AddDropdown('Machine', function(p314)
            u298 = p314
        end)

        u300:Add('Bench Press')
        u300:Add('Squat')
        u300:Add('Pull Up')
        u300:Add('Boulder')
    end
end)
local v316, v317, v318 = ipairs({
    'Jungle Gym',
    'Muscle King Gym',
    'Legend Gym',
})

while true do
    local v319

    v318, v319 = v316(v317, v318)

    if v318 == nil then
        break
    end

    _Gym:Add(v319)
end

local _Rebirthing = _CanesPrivScript:AddTab('Rebirthing')

_Rebirthing:AddLabel('Farming').TextSize = 20

local _Rebirths4 = _Rebirthing:AddLabel('Rebirths:')

_Rebirths4.TextSize = 17

local function u327(p322)
    local v323 = tostring(p322)
    local v324 = 0
    local v325 = ''

    for v326 = #v323, 1, -1 do
        v324 = v324 + 1
        v325 = v323:sub(v326, v326) .. v325

        if v324 % 3 == 0 then
            if v326 > 1 then
                v325 = ',' .. v325
            end
        end
    end

    return v325
end

task.spawn(function()
    local _Rebirths5 = game.Players.LocalPlayer.leaderstats:WaitForChild('Rebirths')

    while true do
        _Rebirths4.Text = 'Rebirths: ' .. u327(_Rebirths5.Value)

        task.wait(0.2)
    end
end)

local _LocalPlayer9 = game.Players.LocalPlayer
local v330 = _LocalPlayer9
local u331 = _LocalPlayer9.WaitForChild(v330, 'muscleEvent')
local _ReplicatedStorage2 = game:GetService('ReplicatedStorage')

local function u341()
    local v333, v334, v335 = pairs(_LocalPlayer9.petsFolder:GetChildren())

    while true do
        local v336

        v335, v336 = v333(v334, v335)

        if v335 == nil then
            break
        end
        if v336:IsA('Folder') then
            local v337, v338, v339 = pairs(v336:GetChildren())

            while true do
                local v340

                v339, v340 = v337(v338, v339)

                if v339 == nil then
                    break
                end

                _ReplicatedStorage2.rEvents.equipPetEvent:FireServer('unequipPet', v340)
            end
        end
    end

    task.wait(0.1)
end
local function u347(p342)
    u341()
    task.wait(0.01)

    local v343, v344, v345 = pairs(_LocalPlayer9.petsFolder.Unique:GetChildren())

    while true do
        local v346

        v345, v346 = v343(v344, v345)

        if v345 == nil then
            break
        end
        if v346.Name == p342 then
            _ReplicatedStorage2.rEvents.equipPetEvent:FireServer('equipPet', v346)
        end
    end
end

local u348 = false

local function u351()
    while u348 do
        u347('Swift Samurai')
        task.wait(0.4)

        local v349 = 5000 + _LocalPlayer9.leaderstats.Rebirths.Value * 2550

        while u348 and _LocalPlayer9.leaderstats.Strength.Value < v349 do
            for _ = 1, _LocalPlayer9.MembershipType == Enum.MembershipType.Premium and 8 or 14 do
                u331:FireServer('rep')
            end

            task.wait(0.02)
        end

        if v349 <= _LocalPlayer9.leaderstats.Strength.Value then
            u347('Tribal Overlord')
            task.wait(0.25)

            local _Value = _LocalPlayer9.leaderstats.Rebirths.Value

            repeat
                _ReplicatedStorage2.rEvents.rebirthRemote:InvokeServer('rebirthRequest')
                task.wait(0.05)
            until _Value < _LocalPlayer9.leaderstats.Rebirths.Value

            task.wait(0.5)
        end
    end
end

_Rebirthing:AddSwitch('Fast Rebirth', function(p352)
    if p352 then
        u348 = true

        u351()
    else
        u348 = false
    end
end)

local u353 = false
local u354 = nil

_Rebirthing:AddSwitch('Lock Position', function(p355)
    u353 = p355

    if u353 then
        local _LocalPlayer10 = game.Players.LocalPlayer
        local _HumanoidRootPart2 = (_LocalPlayer10.Character or _LocalPlayer10.CharacterAdded:Wait()):WaitForChild('HumanoidRootPart')
        local _Position = _HumanoidRootPart2.Position

        u354 = coroutine.create(function()
            while u353 do
                _HumanoidRootPart2.Velocity = Vector3.new(0, 0, 0)
                _HumanoidRootPart2.RotVelocity = Vector3.new(0, 0, 0)
                _HumanoidRootPart2.CFrame = CFrame.new(_Position)

                wait(0.05)
            end
        end)

        coroutine.resume(u354)
    end
end):Set(false)

_Rebirthing:AddLabel('Pets').TextSize = 20

_Rebirthing:AddButton('Equip Swift Samurai', function()
    u341()
    u347('Swift Samurai')
end)
_Rebirthing:AddButton('Equip Tribal Overlord', function()
    u341()
    u347('Tribal Overlord')
end)

local _SpeedFarming = _CanesPrivScript:AddTab('Speed Farming')
local v360 = _SpeedFarming

_SpeedFarming.AddLabel(v360, 'Farming').TextSize = 20

local _LocalPlayer11 = game.Players.LocalPlayer
local v362 = _LocalPlayer11
local u363 = _LocalPlayer11.WaitForChild(v362, 'muscleEvent')
local u364 = false
local u365 = 500
local u366 = true
local _DataPing = game:GetService('Stats').Network.ServerStatsItem['Data Ping']

local function u368()
    return _DataPing:GetValue()
end
local function u370(p369)
    return p369 < 80 and 500 or (p369 < 150 and 300 or (p369 < 250 and 100 or 50))
end

local v371 = _SpeedFarming

_SpeedFarming.AddTextBox(v371, 'Base Speed', function(p372)
    local v373 = tonumber(p372)

    if v373 then
        u365 = math.clamp(math.floor(v373), 1, 1000)
    end
end, {
    placeholder = '500',
})

local v374 = _SpeedFarming

_SpeedFarming.AddSwitch(v374, 'Safety Mode', function(p375)
    u366 = p375
end):Set(true)

local function u382()
    local _FireServer = u363.FireServer
    local v377 = time()
    local v378 = u368()

    while u364 do
        if time() - v377 > 0.5 then
            v378 = u368()
            v377 = time()
        end

        local v379 = u366 and u370(v378) or u365
        local v380 = math.clamp(v378 / 2500, 0.001, 0.1)

        for v381 = 1, math.min(v379, u365)do
            _FireServer(u363, 'rep')

            if v381 % 50 == 0 then
                task.wait(0)
            end
        end

        task.wait(v380)
    end
end

local v383 = _SpeedFarming

_SpeedFarming.AddSwitch(v383, 'Fast Rep', function(p384)
    u364 = p384

    if u364 then
        task.spawn(u382)
    end
end)

local v385 = _SpeedFarming

_SpeedFarming.AddLabel(v385, 'Current Ping: 0ms').TextSize = 16

task.spawn(function()
    while true do
        if u364 then
            local v386 = u368()
            local v387 = _SpeedFarming

            _SpeedFarming:GetChildren()[#v387:GetChildren()]:SetText('Current Ping: ' .. v386 .. 'ms')
        end

        task.wait(0.5)
    end
end)

local v388 = _SpeedFarming

_SpeedFarming.AddLabel(v388, 'Misc').TextSize = 20

local function u390()
    local v389 = _LocalPlayer11.Character:FindFirstChild('Protein Egg') or _LocalPlayer11.Backpack:FindFirstChild('Protein Egg')

    if v389 then
        u363:FireServer('proteinEgg', v389)
    end
end

local u391 = false

task.spawn(function()
    while true do
        while u391 do
            u390()
            task.wait(1800)
        end

        task.wait(1)
    end
end)

local v392 = _SpeedFarming

_SpeedFarming.AddSwitch(v392, 'Auto Egg', function(p393)
    u391 = p393

    if p393 then
        u390()
    end
end):Set(false)

local function u395()
    local v394 = _LocalPlayer11.Character:FindFirstChild('Tropical Shake') or _LocalPlayer11.Backpack:FindFirstChild('Tropical Shake')

    if v394 then
        u363:FireServer('tropicalShake', v394)
    end
end

local u396 = false

task.spawn(function()
    while true do
        while u396 do
            u395()
            task.wait(900)
        end

        task.wait(1)
    end
end)

local v397 = _SpeedFarming

_SpeedFarming.AddSwitch(v397, 'Auto Shake', function(p398)
    u396 = p398

    if p398 then
        u395()
    end
end):Set(false)

local v399 = _SpeedFarming

_SpeedFarming.AddButton(v399, 'Anti Lag', function()
    local _LocalPlayer12 = game.Players.LocalPlayer
    local _PlayerGui = _LocalPlayer12:WaitForChild('PlayerGui')
    local _Lighting = game:GetService('Lighting')
    local v403, v404, v405 = pairs(_PlayerGui:GetChildren())

    while true do
        local v406

        v405, v406 = v403(v404, v405)

        if v405 == nil then
            break
        end
        if v406:IsA('ScreenGui') then
            v406:Destroy()
        end
    end

    (function()
        local v407, v408, v409 = pairs(workspace:GetDescendants())

        while true do
            local v410

            v409, v410 = v407(v408, v409)

            if v409 == nil then
                break
            end
            if v410:IsA('ParticleEmitter') then
                v410:Destroy()
            end
        end
    end)();
    (function()
        local v411, v412, v413 = pairs(workspace:GetDescendants())

        while true do
            local v414

            v413, v414 = v411(v412, v413)

            if v413 == nil then
                break
            end
            if v414:IsA('PointLight') or v414:IsA('SpotLight') or v414:IsA('SurfaceLight') then
                v414:Destroy()
            end
        end
    end)();
    (function()
        local v415 = _Lighting
        local v416, v417, v418 = pairs(v415:GetChildren())

        while true do
            local v419

            v418, v419 = v416(v417, v418)

            if v418 == nil then
                break
            end
            if v419:IsA('Sky') then
                v419:Destroy()
            end
        end

        local _Sky = Instance.new('Sky')

        _Sky.Name = 'DarkSky'
        _Sky.SkyboxBk = 'rbxassetid://0'
        _Sky.SkyboxDn = 'rbxassetid://0'
        _Sky.SkyboxFt = 'rbxassetid://0'
        _Sky.SkyboxLf = 'rbxassetid://0'
        _Sky.SkyboxRt = 'rbxassetid://0'
        _Sky.SkyboxUp = 'rbxassetid://0'
        _Sky.Parent = _Lighting
        _Lighting.Brightness = 0
        _Lighting.ClockTime = 0
        _Lighting.TimeOfDay = '00:00:00'
        _Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
        _Lighting.Ambient = Color3.new(0, 0, 0)
        _Lighting.FogColor = Color3.new(0, 0, 0)
        _Lighting.FogEnd = 100

        task.spawn(function()
            while true do
                wait(5)

                if not _Lighting:FindFirstChild('DarkSky') then
                    _Sky:Clone().Parent = _Lighting
                end

                _Lighting.Brightness = 0
                _Lighting.ClockTime = 0
                _Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
                _Lighting.Ambient = Color3.new(0, 0, 0)
                _Lighting.FogColor = Color3.new(0, 0, 0)
                _Lighting.FogEnd = 100
            end
        end)
    end)()
end)

local v421 = _SpeedFarming

_SpeedFarming.AddLabel(v421, 'Pets').TextSize = 20

local v422 = _SpeedFarming

_SpeedFarming.AddButton(v422, 'Equip Swift Samurai', function()
    u341()
    u347('Swift Samurai')
end)

local v423 = _SpeedFarming

_SpeedFarming.AddButton(v423, 'Equip Tribal Overlord', function()
    u341()
    u347('Tribal Overlord')
end)

local _Teleports = _CanesPrivScript:AddTab('Teleports')

_Teleports:Show()

_Teleports:AddLabel('Main').TextSize = 20

_Teleports:AddButton('Tiny Island', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-37.1, 9.2, 1919)
end)
_Teleports:AddButton('Main Island', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(16.07, 9.08, 133.8)
end)
_Teleports:AddButton('Beach', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8, 9, -169.2)
end)

_Teleports:AddLabel('Gyms').TextSize = 22

_Teleports:AddButton('Muscle King Gym', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8665.4, 17.21, -5792.9)
end)
_Teleports:AddButton('Jungle Gym', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-8543, 6.8, 2400)
end)
_Teleports:AddButton('Legends Gym', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(4516, 991.5, -3856)
end)
_Teleports:AddButton('Infernal Gym', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-6759, 7.36, -1284)
end)
_Teleports:AddButton('Mythical Gym', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(2250, 7.37, 1073.2)
end)
_Teleports:AddButton('Frost Gym', function()
    (game.Players.LocalPlayer.Character or Player.CharacterAdded:wait()):WaitForChild('HumanoidRootPart').CFrame = CFrame.new(-2623, 7.36, -409)
end)

local _Inventory = _CanesPrivScript:AddTab('Inventory')

_Inventory:AddLabel('Inventory:').TextSize = 20
_Inventory:AddLabel('Get on a Machine while gifting!').TextSize = 17

local _ProteinEggs0 = _Inventory:AddLabel('Protein Eggs: 0')

_ProteinEggs0.TextSize = 18

local _TropicalShakes0 = _Inventory:AddLabel('Tropical Shakes: 0')

_TropicalShakes0.TextSize = 18

local function u435()
    local v428 = 0
    local v429 = 0
    local _Backpack2 = _Players2.LocalPlayer:WaitForChild('Backpack')

    if _Backpack2 then
        local v431, v432, v433 = ipairs(_Backpack2:GetChildren())

        while true do
            local v434

            v433, v434 = v431(v432, v433)

            if v433 == nil then
                break
            end
            if v434.Name ~= 'Protein Egg' then
                if v434.Name == 'Tropical Shake' then
                    v429 = v429 + 1
                end
            else
                v428 = v428 + 1
            end
        end
    end

    _ProteinEggs0.Text = 'Protein Eggs: ' .. v428
    _TropicalShakes0.Text = 'Tropical Shakes: ' .. v429
end

task.spawn(function()
    while true do
        u435()
        task.wait(10)
    end
end)

local _Players3 = game:GetService('Players')
local _ReplicatedStorage3 = game:GetService('ReplicatedStorage')

_Inventory:AddLabel('Egg Gifter').TextSize = 20

local u438 = nil
local _ChoosePlayer = _Inventory:AddDropdown('Choose Player', function(p439)
    local v440 = p439:match('| (.+)$')

    if v440 then
        u438 = _Players3:FindFirstChild(v440)
    end
end)
local v442 = _Players3
local v443, v444, v445 = ipairs(_Players3.GetPlayers(v442))
local u446 = _LocalPlayer11
local u447 = u363
local u448 = u438
local u449 = _Players3

local function u451(p450)
    return p450.DisplayName .. ' | ' .. p450.Name
end

local u452 = 0

while true do
    local v453, v454 = v443(v444, v445)

    if v453 == nil then
        break
    end

    v445 = v453

    if v454 ~= u449.LocalPlayer then
        _ChoosePlayer:Add(u451(v454), v454.Name)
    end
end

u449.PlayerAdded:Connect(function(p455)
    if p455 ~= u449.LocalPlayer then
        _ChoosePlayer:Add(u451(p455), p455.Name)
    end
end)
u449.PlayerRemoving:Connect(function(p456)
    local v457 = _ChoosePlayer
    local v458, v459, v460 = pairs(v457:GetItems())

    while true do
        local v461

        v460, v461 = v458(v459, v460)

        if v460 == nil then
            break
        end
        if v461.Text:match('| ' .. p456.Name .. '$') then
            _ChoosePlayer:Remove(v461.Text)

            break
        end
    end

    if u448 == p456 then
        u448 = nil
    end
end)
_Inventory:AddTextBox('Amount', function(p462)
    u452 = tonumber(p462)
end)
_Inventory:AddButton('Start Gifting', function()
    if u448 and (u452 and 0 < u452) then
        for _ = 1, u452 do
            local v463 = {
                'giftRequest',
                u448,
                u449.LocalPlayer.consumablesFolder:FindFirstChild('Protein Egg'),
            }

            _ReplicatedStorage3.rEvents.giftRemote:InvokeServer(unpack(v463))
        end
    end
end)

_Inventory:AddLabel('Shake Gifter').TextSize = 20

local u464 = nil
local _ChoosePlayer2 = _Inventory:AddDropdown('Choose Player', function(p465)
    local v466 = p465:match('| (.+)$')

    if v466 then
        u464 = u449:FindFirstChild(v466)
    end
end)
local v468, v469, v470 = ipairs(u449:GetPlayers())
local u471 = u464
local u472 = 0

while true do
    local v473, v474 = v468(v469, v470)

    if v473 == nil then
        break
    end

    v470 = v473

    if v474 ~= u449.LocalPlayer then
        _ChoosePlayer2:Add(u451(v474), v474.Name)
    end
end

u449.PlayerAdded:Connect(function(p475)
    if p475 ~= u449.LocalPlayer then
        _ChoosePlayer2:Add(u451(p475), p475.Name)
    end
end)
u449.PlayerRemoving:Connect(function(p476)
    local v477 = _ChoosePlayer2
    local v478, v479, v480 = pairs(v477:GetItems())

    while true do
        local v481

        v480, v481 = v478(v479, v480)

        if v480 == nil then
            break
        end
        if v481.Text:match('| ' .. p476.Name .. '$') then
            _ChoosePlayer2:Remove(v481.Text)

            break
        end
    end

    if u471 == p476 then
        u471 = nil
    end
end)
_Inventory:AddTextBox('Amount', function(p482)
    u472 = tonumber(p482)
end)
_Inventory:AddButton('Start Gifting', function()
    if u471 and (u472 and 0 < u472) then
        for _ = 1, u472 do
            local v483 = {
                'giftRequest',
                u471,
                u449.LocalPlayer.consumablesFolder:FindFirstChild('Tropical Shake'),
            }

            _ReplicatedStorage3.rEvents.giftRemote:InvokeServer(unpack(v483))
        end
    end
end)

_Inventory:AddLabel('Eater').TextSize = 20

local function u485()
    local v484 = u446.Character:FindFirstChild('Protein Egg') or u446.Backpack:FindFirstChild('Protein Egg')

    if v484 then
        u447:FireServer('proteinEgg', v484)
    end
end

local u486 = false

task.spawn(function()
    while true do
        while u486 do
            u485()
            task.wait(0.3)
        end

        task.wait(0.5)
    end
end)
_Inventory:AddSwitch('Egg Devour', function(p487)
    u486 = p487

    if p487 then
        u485()
    end
end):Set(false)

local u488 = {
    'Tropical Shake',
    'Energy Shake',
    'Protein Bar',
    'TOUGH Bar',
    'Protein Shake',
    'ULTRA Shake',
    'Energy Bar',
}

local function u495(p489)
    local _S, v491, v492 = p489:gmatch('%S+')
    local v493 = {}

    while true do
        v492 = _S(v491, v492)

        if v492 == nil then
            break
        end

        table.insert(v493, v492:lower())
    end

    for v494 = 2, #v493 do
        v493[v494] = v493[v494]:sub(1, 1):upper() .. v493[v494]:sub(2)
    end

    return table.concat(v493)
end
local function u501()
    local v496, v497, v498 = ipairs(u488)

    while true do
        local v499

        v498, v499 = v496(v497, v498)

        if v498 == nil then
            break
        end

        local v500 = u446.Character:FindFirstChild(v499) or u446.Backpack:FindFirstChild(v499)

        if v500 then
            u447:FireServer(u495(v499), v500)
        end
    end
end

local u502 = false

task.spawn(function()
    while true do
        while u502 do
            u501()
            task.wait(0.1)
        end

        task.wait(0.5)
    end
end)
_Inventory:AddSwitch('Eat Everything', function(p503)
    u502 = p503

    if p503 then
        u501()
    end
end):Set(false)

local _Stats = _CanesPrivScript:AddTab('Stats')

_Stats:Show()

local _LocalPlayer13 = game.Players.LocalPlayer
local _leaderstats2 = _LocalPlayer13:WaitForChild('leaderstats')
local _Strength2 = _leaderstats2:WaitForChild('Strength')
local _Rebirths6 = _leaderstats2:WaitForChild('Rebirths')
local _Durability2 = _LocalPlayer13:WaitForChild('Durability')
local _Kills2 = _leaderstats2:WaitForChild('Kills')
local _Agility2 = _LocalPlayer13:WaitForChild('Agility')
local _evilKarma2 = _LocalPlayer13:WaitForChild('evilKarma')
local _goodKarma2 = _LocalPlayer13:WaitForChild('goodKarma')
local _Brawls2 = _leaderstats2:WaitForChild('Brawls')

local function u518(p515)
    local v516 = p515 < 0
    local v517 = math.abs(p515)

    if v517 >= 1000000000000000 then
        return (v516 and '-' or '') .. string.format('%.2fQa', v517 / 1000000000000000)
    elseif v517 >= 1000000000000 then
        return (v516 and '-' or '') .. string.format('%.2fT', v517 / 1000000000000)
    elseif v517 >= 1000000000 then
        return (v516 and '-' or '') .. string.format('%.2fB', v517 / 1000000000)
    elseif v517 >= 1000000 then
        return (v516 and '-' or '') .. string.format('%.2fM', v517 / 1000000)
    elseif v517 >= 1000 then
        return (v516 and '-' or '') .. string.format('%.2fK', v517 / 1000)
    else
        return (v516 and '-' or '') .. string.format('%.2f', v517)
    end
end

_Stats:AddLabel('\u{fffd}\u{fffd}\u{fe0f}Time:').TextSize = 24

local __0d0h0m0s = _Stats:AddLabel('0d 0h 0m 0s')

__0d0h0m0s.TextSize = 20

local _ProjectedStrength0Hour0Day = _Stats:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Projected Strength: 0 /Hour | 0 /Day')

_ProjectedStrength0Hour0Day.TextSize = 20

local _ProjectedDurability0Hour0Day = _Stats:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Projected Durability: 0 /Hour | 0 /Day')

_ProjectedDurability0Hour0Day.TextSize = 20

local _ProjectedRebirths0Hour0Day = _Stats:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Projected Rebirths: 0 /Hour | 0 /Day')

_ProjectedRebirths0Hour0Day.TextSize = 20
_Stats:AddLabel('').TextSize = 10
_Stats:AddLabel('\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Stats:').TextSize = 24

local _Strength0Gained0 = _Stats:AddLabel('Strength: 0 | Gained: 0')

_Strength0Gained0.TextSize = 20

local _Durability0Gained0 = _Stats:AddLabel('Durability: 0 | Gained: 0')

_Durability0Gained0.TextSize = 20

local _Rebirths0Gained0 = _Stats:AddLabel('Rebirths: 0 | Gained: 0')

_Rebirths0Gained0.TextSize = 20

local _Kills0Gained0 = _Stats:AddLabel('Kills: 0 | Gained: 0')

_Kills0Gained0.TextSize = 20

local _Agility0Gained0 = _Stats:AddLabel('Agility: 0 | Gained: 0')

_Agility0Gained0.TextSize = 20

local _EvilKarma0Gained0 = _Stats:AddLabel('Evil Karma: 0 | Gained: 0')

_EvilKarma0Gained0.TextSize = 20

local _GoodKarma0Gained0 = _Stats:AddLabel('Good Karma: 0 | Gained: 0')

_GoodKarma0Gained0.TextSize = 20

local _Brawls0Gained0 = _Stats:AddLabel('Brawls: 0 | Gained: 0')

_Brawls0Gained0.TextSize = 20

local u531 = tick()
local _Value2 = _Strength2.Value
local _Value3 = _Durability2.Value
local _Value4 = _Rebirths6.Value
local _Value5 = _Kills2.Value
local _Value6 = _Agility2.Value
local _Value7 = _evilKarma2.Value
local _Value8 = _goodKarma2.Value
local _Value9 = _Brawls2.Value

task.spawn(function()
    local v540 = 0

    while true do
        local v541 = tick()
        local v542 = v541 - u531
        local v543 = math.floor(v542 / 86400)
        local v544 = math.floor(v542 % 86400 / 3600)
        local v545 = math.floor(v542 % 3600 / 60)
        local v546 = math.floor(v542 % 60)

        __0d0h0m0s.Text = string.format('%dd %dh %dm %ds', v543, v544, v545, v546)

        local _Value10 = _Strength2.Value
        local _Value11 = _Rebirths6.Value
        local _Value12 = _Durability2.Value
        local _Value13 = _Kills2.Value
        local _Value14 = _Agility2.Value
        local _Value15 = _evilKarma2.Value
        local _Value16 = _goodKarma2.Value
        local _Value17 = _Brawls2.Value
        local v555 = _Value10 - _Value2
        local v556 = _Value12 - _Value3
        local v557 = _Value11 - _Value4
        local v558 = _Value13 - _Value5
        local v559 = _Value14 - _Value6
        local v560 = _Value15 - _Value7
        local v561 = _Value16 - _Value8
        local v562 = _Value17 - _Value9

        _Strength0Gained0.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Strength: ' .. u518(_Value10) .. ' | Gained: ' .. u518(v555)
        _Durability0Gained0.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fe0f}Durability: ' .. u518(_Value12) .. ' | Gained: ' .. u518(v556)
        _Rebirths0Gained0.Text = '\u{fffd}\u{fffd}\u{fe0f}Rebirths: ' .. u518(_Value11) .. ' | Gained: ' .. u518(v557)
        _Agility0Gained0.Text = '\u{fffd}\u{fffd}Agility: ' .. u518(_Value14) .. ' | Gained: ' .. u518(v559)
        _Kills0Gained0.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Kills: ' .. u518(_Value13) .. ' | Gained: ' .. u518(v558)
        _EvilKarma0Gained0.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Evil Karma: ' .. u518(_Value15) .. ' | Gained: ' .. u518(v560)
        _GoodKarma0Gained0.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Good Karma: ' .. u518(_Value16) .. ' | Gained: ' .. u518(v561)
        _Brawls0Gained0.Text = '\u{fffd}\u{fffd}\u{fe0f}Brawls: ' .. u518(_Value17) .. ' | Gained: ' .. u518(v562)

        if v541 - v540 < 6 then
            v541 = v540
        else
            local v563 = v557 / v542
            local v564 = v555 / v542
            local v565 = v556 / v542
            local v566 = 3600
            local v567 = 86400
            local v568 = math.floor(v563 * v566)
            local v569 = math.floor(v564 * v566)
            local v570 = math.floor(v565 * v566)
            local v571 = math.floor(v563 * v567)
            local v572 = math.floor(v564 * v567)
            local v573 = math.floor(v565 * v567)

            _ProjectedStrength0Hour0Day.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}Strength Pace: ' .. u518(v569) .. '/Hour | ' .. u518(v572) .. '/Day'
            _ProjectedDurability0Hour0Day.Text = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fe0f}Durability Pace: ' .. u518(v570) .. '/Hour | ' .. u518(v573) .. '/Day'
            _ProjectedRebirths0Hour0Day.Text = '\u{fffd}\u{fffd}\u{fe0f}Rebirth Pace: ' .. u518(v568) .. '/Hour | ' .. u518(v571) .. '/Day'
        end

        task.wait(0.05)

        v540 = v541
    end
end)
