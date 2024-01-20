local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("🇷🇺Anime Heroes Simulator 🇷🇺", "RJTheme3")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("AutoFarm")
Section:NewButton("Auto Attack", "auto attack and yen", function()
print("on")
    while wait() do 
local args = {[1] = 1}

game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Punch"):FireServer(unpack(args))
local args = {[1] = 1}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click"):FireServer(unpack(args))
end
end)
Section:NewButton("Auto Skill", "Use skill 1-4", function()
    print("on")
    while wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Skill1"):FireServer() game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Skill2"):FireServer()
game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Skill3"):FireServer() game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Skill4"):FireServer()
end
end)
Section:NewButton("Auto SpinWheel", "opens the wheel of fortune every 10 seconds", function()
    print("on")
    while wait(10) do game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Spin Wheel"):FireServer()
end
end)
Section:NewButton("AutoClaimGift", "automatically picks up gifts for you", function()
print("on")
    while wait(2) do
    wait(0.5)
    local args = {
    	--1
    [1] = "Gift1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--2
wait(0.5)
local args = {
    [1] = "Gift2"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--3
wait(0.5)
local args = {
    [1] = "Gift3"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--4
wait(0.5)
local args = {
    [1] = "Gift4"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--
wait(0.5)
local args = {
    [1] = "Gift5"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--6
wait(0.5)
local args = {
    [1] = "Gift6"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--7
wait(0.5)
local args = {
    [1] = "Gift7"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--8
wait(0.5)
local args = {
    [1] = "Gift8"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--9
wait(0.5)
local args = {
    [1] = "Gift9"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--10
wait(0.5)
local args = {
    [1] = "Gift10"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--11
wait(0.5)
local args = {
    [1] = "Gift11"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
--12
wait(0.5)
local args = {
    [1] = "Gift12"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FreeGift"):FireServer(unpack(args))
    end
end)
Section:NewButton("Auto GetPetEx", "Наверное не работает!", function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetPetExists"):InvokeServer()
end)
local Tab = Window:NewTab("Misc")

local Section = Tab:NewSection("Open Egg")
Section:NewButton("Dragon Orb", "Open one Orb", function()
local args = {
    [1] = "Dragon Orb",
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HatchEgg"):InvokeServer(unpack(args))
end)
local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("TP AREA BOSS")

Section:NewButton("Demon Forest", "TP BOSS AKAZI", function()
while wait(2) do
workspace.VipTimXavier.HumanoidRootPart.CFrame = workspace.Map.Areas["Demon Forest"].Other.BossArea.CFrame
end
end)

local Tab = Window:NewTab("Farm")
local Section = Tab:NewSection("Train")

Section:NewButton("Train1", "Train1 Boost tp", function()
workspace.VipTimXavier.HumanoidRootPart.CFrame = workspace.ScriptSabitleriTraining.Train1.CFrame
end)
Section:NewButton("Train2", "Train2 Boost tp", function()
workspace.VipTimXavier.HumanoidRootPart.CFrame = workspace.ScriptSabitleriTraining.Train2.CFrame
end)
Section:NewButton("Train3", "Train3 Boost tp", function()
workspace.VipTimXavier.HumanoidRootPart.CFrame = workspace.ScriptSabitleriTraining.Train3.CFrame
end)

local Section = Tab:NewSection("Potion")
Section:NewButton("Potion", "use all potion(one by one)", function()
-- Yen Vial

local args = {
    [1] = "Yen Vial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyPotion"):InvokeServer(unpack(args))

--Grm Vial

local args = {
    [1] = "Gem Vial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyPotion"):InvokeServer(unpack(args))

--Lucky Vial

local args = {
    [1] = "Lucky Vial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyPotion"):InvokeServer(unpack(args))

--Level Vial

local args = {
    [1] = "Level Vial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyPotion"):InvokeServer(unpack(args))

--Damage Vial

local args = {
    [1] = "Damage Vial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyPotion"):InvokeServer(unpack(args))

--God Vial

local args = {
    [1] = "God Vial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyPotion"):InvokeServer(unpack(args))
end)

local Section = Tab:NewSection("AutoRank")
Section:NewButton("Auto Rank", "automatically takes the reward for the rank", function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RankUP"):InvokeServer()
end)

local Tab = Window:NewTab("Invite Reward")
local Section = Tab:NewSection("Invite")

Section:NewButton("Invite Reward 1", "automatically takes the reward for the Invited", function()
local args = {
    [1] = "Invite1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("InviteGift"):FireServer(unpack(args))
end)
