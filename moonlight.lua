local TweenService_upvr = game:GetService("TweenService")
local MainUI_upvr = nil
if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainUI") then repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainUI") end
MainUI_upvr = game.Players.LocalPlayer.PlayerGui.MainUI
local toolNew = nil
if game.GameId == 6627207668 then
	toolNew = game.ReplicatedStorage["Moon Bottle"]:Clone()
else
	toolNew = game:GetObjects("rbxassetid://106070375280557")[1]
end
local newCloneEffect = MainUI_upvr.MainFrame.Healthbar.Effects.HerbGreenEffect:Clone()
local drinked = false
local rared = false
local ended = false
newCloneEffect.Name = "GuidingLightPotion"
newCloneEffect.ImageColor3 = Color3.fromRGB(255,255,255)
if math.random(1,50) == 1 then
	newCloneEffect.Image = "rbxassetid://116152180072403"
	rared = true
else
	newCloneEffect.Image = "rbxassetid://12771067678"
	newCloneEffect.ImageColor3 = Color3.fromRGB(0, 255, 255)
end
newCloneEffect.Visible = false
newCloneEffect.Parent = MainUI_upvr.MainFrame.Healthbar.Effects

local ohhmydayz = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(toolNew.bals.idle)
local ohhmydayz2 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(toolNew.bals.open)
local ohhmydayz3 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(toolNew.Animations.open)

spawn(function()
	while wait() do
		if drinked == true and ended == false then
			if rared == true then
				game.Players.LocalPlayer.Character:SetAttribute("CanJump",true)
			else
				ended = true
				if game.GameId == 6627207668 then
					local newTool = script.flyTest:Clone()
					newTool.Parent = game.Players.LocalPlayer.Backpack
					newTool.Enabled = true
				else
					FLYING = false
QEfly = true
iyflyspeed = 0.4
vehicleflyspeed = 1
local vfly = false
local Players = game.Players
local MainUI_upvr = nil
local TweenService_upvr = game:GetService("TweenService")
local soundNew = Instance.new("Sound",workspace)
soundNew.Name = "_ThunderStrikeGD"
soundNew.SoundId = "rbxassetid://1079408535"
local soundNew2 = Instance.new("Sound",workspace)
soundNew2.Name = "_ThunderStrikeGD2"
soundNew2.SoundId = "rbxassetid://5822757538"
local gdPossess = nil
if game.GameId == 6627207668 then
	gdPossess = script.GuidingLightStuff:Clone()
else
	gdPossess = game:GetObjects("rbxassetid://107690853507208")[1]
end
gdPossess.LockedToPart = true
if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainUI") then repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainUI") end
MainUI_upvr = game.Players.LocalPlayer.PlayerGui.MainUI
function getRoot(PlayerChar)
	if PlayerChar == nil then
		PlayerChar = game.Players.LocalPlayer.Character
	end
	if not PlayerChar:FindFirstChild("HumanoidRootPart") then
		return PlayerChar.PrimaryPart
	else
		return PlayerChar.HumanoidRootPart
	end
end
local IYMouse = game.Players.LocalPlayer:GetMouse()

spawn(function()
	wait(2)
	soundNew2:Play()
	local newColorEcction = Instance.new("ColorCorrectionEffect",game.Lighting)
	TweenService_upvr:Create(newColorEcction, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
		Brightness = 0.3,
		TintColor = Color3.fromRGB(102, 255, 255)
	}):Play()
	wait(4.5)
	newColorEcction:Destroy()
	soundNew2:Destroy()
	soundNew:Play()
	spawn(function()
		wait(6)
		soundNew:Destroy()
	end)
	gdPossess.Parent = getRoot()
	flyR()
end)

function flyR()
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0
	
	local BG = Instance.new('BodyGyro')
	local BV = Instance.new('BodyVelocity')

	local function FLY()
		FLYING = true
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
	
	wait(25)
	if MainUI_upvr.MainFrame.Healthbar.Effects:FindFirstChild("GuidingLightPotion") then
		MainUI_upvr.MainFrame.Healthbar.Effects:WaitForChild("GuidingLightPotion"):Destroy()
	end
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	BG:Destroy()
	BV:Destroy()
	gdPossess:Destroy()
	script:Destroy()
end
				end
			end
		end
	end
end)

local function EffectOnScreen()
	drinkSoundPlay()
	newCloneEffect.Visible = true
	spawn(function()
		local clone = MainUI_upvr.MainFrame.WhiteVignette:Clone()
		if clone then
			local clone_2 = clone:Clone()
			clone_2.Name ..= "Live"
			clone_2.ImageColor3 = Color3.fromRGB(142, 236, 255)
			clone_2.ImageTransparency = 1
			clone_2.Parent = MainUI_upvr.MainFrame
			clone_2.Visible = true
			TweenService_upvr:Create(clone_2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
				ImageTransparency = 0;
			}):Play()
			wait(5)
			TweenService_upvr:Create(clone_2, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Size = UDim2.new(1.5, 0, 1.5, 0);
			}):Play()
			wait(0.5)
			TweenService_upvr:Create(clone_2, TweenInfo.new(4.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {
				ImageTransparency = 1;
			}):Play()
			wait(4.5)
			clone_2:Destroy()
		end
	end)
end

function drinkSoundPlay()
	local newSound = nil
	if not workspace:FindFirstChild("DrinkPotionAddonSound") then
		newSound = Instance.new("Sound",workspace)
		newSound.Name = "DrinkPotionAddonSound"
		if game.GameId == 6627207668 then
			newSound.SoundId = "rbxassetid://103799151859408"
		else
			newSound.SoundId = "rbxassetid://18869124055"
		end
	else
		newSound = workspace:WaitForChild("DrinkPotionAddonSound")
	end
	newSound:Play()
end

toolNew.Parent = game.Players.LocalPlayer.Backpack

toolNew.Equipped:Connect(function()
	if game.GameId == 6627207668 then
		ohhmydayz:Play()
	end
end)
toolNew.Unequipped:Connect(function()
	if game.GameId == 6627207668 then
		ohhmydayz:Stop()
	end
end)

toolNew.Activated:Connect(function()
	if drinked == false then
		drinked = true
		EffectOnScreen()
		if game.GameId == 6627207668 then
			ohhmydayz2:Play()
			ohhmydayz2.Ended:Wait()
		else
			ohhmydayz3:Play()
			ohhmydayz3.Ended:Wait()
		end
		print("inf")
	end
end)