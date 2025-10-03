-- Load the library
local Library = loadstring(game:HttpGet("https://pastefy.app/MDVCywFm/raw"))()

-- Create the GUI
local MyGui = Library.new({
	Title = "MyGUI",
	Size = UDim2.new(0, 450, 0, 270),
	ToggleIcon = "rbxassetid://10940996116",
	LogoImage = "rbxassetid://10940996116",
	InfoText = "🟢 99 Nights in the Forest\n🟢 Steal a Drawer Brainrot"
})

-- ======================================================
-- SHARED FUNCTIONALITY CODE
-- ======================================================
local player = game.Players.LocalPlayer
local basesFolder = workspace:WaitForChild("Bases")
local isProcessing = false

local function findMyBase()
	for i = 1, 8 do
		local base = basesFolder:FindFirstChild("Base" .. i)
		if base then
			local ownerPart = base:FindFirstChild("Owner")
			if ownerPart then
				local surfaceGui = ownerPart:FindFirstChild("OwnerSurfaceGui")
				if surfaceGui then
					local displayNameLabel = surfaceGui:FindFirstChild("DisplayName")
					if displayNameLabel and displayNameLabel:IsA("TextLabel") then
						if displayNameLabel.Text == player.DisplayName then
							return base
						end
					end
				end
			end
		end
	end
	return nil
end

local function activateCollectZone(collectZone)
	if collectZone and collectZone:IsA("BasePart") then
		if collectZone:FindFirstChild("TouchInterest") then
			local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
			if hrp then
				firetouchinterest(hrp, collectZone, 0)
				task.wait(0.1)
				firetouchinterest(hrp, collectZone, 1)
				return true
			end
		end
	end
	return false
end

-- ======================================================
-- CLICK STEAL BUTTON
-- ======================================================
local StealButton, StealLabel = MyGui:AddStatusButton("Click Steal", function()
	if isProcessing then return end
	isProcessing = true
	StealLabel.Text = "Processing..."
	task.wait(0.1)
	if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
		player.CharacterAdded:Wait()
	end
	local myBase = findMyBase()
	if myBase then
		local collectZone = myBase:FindFirstChild("CollectZone")
		if collectZone then
			local success = activateCollectZone(collectZone)
			StealLabel.Text = success and "Success" or "Failed"
		else
			StealLabel.Text = "Failed"
		end
	else
		StealLabel.Text = "Failed"
	end
	task.wait(1)
	StealLabel.Text = "Ready"
	isProcessing = false
end)

-- ======================================================
-- INSTA-STEAL TOGGLE (NEW)
-- ======================================================
_G.InstaStealEnabled = false
local instaStealConnection

MyGui:AddToggle("Insta-Steal", function(state)
	_G.InstaStealEnabled = state
	if state then
		instaStealConnection = game:GetService("RunService").Heartbeat:Connect(function()
			if not _G.InstaStealEnabled then return end
			if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
				return
			end
			local myBase = findMyBase()
			if myBase then
				local collectZone = myBase:FindFirstChild("CollectZone")
				if collectZone then
					activateCollectZone(collectZone)
				end
			end
			task.wait(0.1)
		end)
	else
		if instaStealConnection then
			instaStealConnection:Disconnect()
			instaStealConnection = nil
		end
	end
end, false)

-- ======================================================
-- AUTO LOCK TOGGLE
-- ======================================================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
getgenv().AutoLockEnabled = true
local character = player.Character or player.CharacterAdded:Wait()
player.CharacterAdded:Connect(function(char)
	character = char
	character:WaitForChild("HumanoidRootPart")
end)

local function activateLock(lockPart)
	if lockPart and lockPart:IsA("BasePart") and lockPart:FindFirstChild("TouchInterest") then
		local hrp = character and character:FindFirstChild("HumanoidRootPart")
		if hrp then
			firetouchinterest(hrp, lockPart, 0)
			task.wait(0.1)
			firetouchinterest(hrp, lockPart, 1)
		end
	end
end

spawn(function()
	while getgenv().AutoLockEnabled do
		task.wait(0.1)
		local myBase = findMyBase()
		if myBase then
			local lockPart = myBase:FindFirstChild("Lock")
			if lockPart then activateLock(lockPart) end
		end
	end
end)

MyGui:AddToggle("Auto Lock", function(state)
	getgenv().AutoLockEnabled = state
	if state then
		spawn(function()
			while getgenv().AutoLockEnabled do
				task.wait(0.1)
				local myBase = findMyBase()
				if myBase then
					local lockPart = myBase:FindFirstChild("Lock")
					if lockPart then activateLock(lockPart) end
				end
			end
		end)
	end
end, true)

-- ======================================================
-- NOCLIP TOGGLE
-- ======================================================
_G.Noclip = false
local noclipConnection

MyGui:AddToggle("Noclip", function(state)
	_G.Noclip = state
	if state then
		noclipConnection = RunService.Stepped:Connect(function()
			if _G.Noclip then
				local char = player.Character
				if char then
					local hrp = char:FindFirstChild("HumanoidRootPart")
					if hrp then
						local rayOrigin = hrp.Position
						local rayDirection = Vector3.new(0, -10, 0)
						local raycastParams = RaycastParams.new()
						raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
						raycastParams.FilterDescendantsInstances = {char}
						local rayResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)
						local nearGround = rayResult and rayResult.Distance < 4
						for _, part in pairs(char:GetDescendants()) do
							if part:IsA("BasePart") then
								if nearGround then
									part.CanCollide = part.Name == "HumanoidRootPart" or part.Name:find("Leg") or part.Name:find("Foot")
								else
									part.CanCollide = false
								end
							end
						end
					end
				end
			end
		end)
	else
		if noclipConnection then noclipConnection:Disconnect() end
		if player.Character then
			for _, part in pairs(player.Character:GetDescendants()) do
				if part:IsA("BasePart") then part.CanCollide = true end
			end
		end
	end
end, false)

-- ======================================================
-- INF JUMP TOGGLE
-- ======================================================
local UserInputService = game:GetService("UserInputService")
_G.InfJump = false

MyGui:AddToggle("Inf Jump", function(state)
	_G.InfJump = state
end, false)

UserInputService.JumpRequest:Connect(function()
	if _G.InfJump and player.Character then
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.Health > 0 then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end
end)

-- ======================================================
-- ANTI-HIT TOGGLE
-- ======================================================
_G.AntiHit = true
local antiHitConnection, ragdollStartTime, frozenParts = nil, nil, {}
local FREEZE_DURATION, lastWalkSpeed, isCurrentlySlowed = 3, 16, false
local MAX_HEIGHT, SAFE_HEIGHT, wasRagdolled = 500, 50, false

local char = player.Character
if char then
	local hum = char:FindFirstChildOfClass("Humanoid")
	if hum then lastWalkSpeed = hum.WalkSpeed end
end

antiHitConnection = RunService.Heartbeat:Connect(function()
	if not _G.AntiHit then return end
	local char = player.Character
	if not char then return end
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local humanoid = char:FindFirstChildOfClass("Humanoid")
	if not hrp or not humanoid then return end
	if hrp.Position.Y > MAX_HEIGHT then
		hrp.CFrame = CFrame.new(Vector3.new(hrp.Position.X, SAFE_HEIGHT, hrp.Position.Z))
		hrp.Velocity = Vector3.new(0, 0, 0)
		hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
	end
	local currentSpeed = humanoid.WalkSpeed
	if currentSpeed < 8 and currentSpeed < lastWalkSpeed * 0.5 then
		if not isCurrentlySlowed then
			isCurrentlySlowed = true
			for _, data in pairs(frozenParts) do
				if data.part then data.part.Anchored = false end
			end
			frozenParts, ragdollStartTime, wasRagdolled = {}, nil, false
		end
		return
	else
		isCurrentlySlowed = false
		if currentSpeed > 10 then lastWalkSpeed = currentSpeed end
	end
	local isRagdolled = false
	local state = humanoid:GetState()
	if state == Enum.HumanoidStateType.Ragdoll or state == Enum.HumanoidStateType.Physics then
		isRagdolled = true
	end
	if hrp.Velocity.Magnitude > 80 and state ~= Enum.HumanoidStateType.Jumping and state ~= Enum.HumanoidStateType.Freefall then
		isRagdolled = true
	end
	local disabledJoints = 0
	for _, obj in pairs(char:GetDescendants()) do
		if obj:IsA("Motor6D") and obj.Enabled == false then
			disabledJoints = disabledJoints + 1
		end
	end
	if disabledJoints >= 3 then isRagdolled = true end
	if state == Enum.HumanoidStateType.Running or state == Enum.HumanoidStateType.RunningNoPhysics or state == Enum.HumanoidStateType.Landed or state == Enum.HumanoidStateType.GettingUp then
		isRagdolled = false
	end
	if isRagdolled then
		if not wasRagdolled then
			wasRagdolled, ragdollStartTime, frozenParts = true, tick(), {}
			for _, part in pairs(char:GetDescendants()) do
				if part:IsA("BasePart") then
					table.insert(frozenParts, {part = part, cframe = part.CFrame})
					part.Anchored = true
				end
			end
		else
			local elapsed = tick() - ragdollStartTime
			if elapsed < FREEZE_DURATION then
				for _, data in pairs(frozenParts) do
					if data.part then
						data.part.CFrame = data.cframe
						data.part.Velocity = Vector3.zero
						data.part.RotVelocity = Vector3.zero
						data.part.AssemblyLinearVelocity = Vector3.zero
						data.part.AssemblyAngularVelocity = Vector3.zero
					end
				end
			else
				for _, data in pairs(frozenParts) do
					if data.part then data.part.Anchored = false end
				end
				frozenParts, ragdollStartTime, wasRagdolled = {}, nil, false
			end
		end
	else
		if wasRagdolled or #frozenParts > 0 then
			for _, data in pairs(frozenParts) do
				if data.part then data.part.Anchored = false end
			end
			frozenParts, wasRagdolled = {}, false
		end
		ragdollStartTime = nil
	end
end)

MyGui:AddToggle("Anti-Hit", function(state)
	_G.AntiHit = state
end, true)

-- ======================================================
-- SLAP ALL TOGGLE
-- ======================================================
_G.SlapAllEnabled = false
local slapAllConnection, lastSlapTime = nil, {}

MyGui:AddToggle("Slap All", function(state)
	_G.SlapAllEnabled = state
	if state then
		slapAllConnection = RunService.Heartbeat:Connect(function()
			if not _G.SlapAllEnabled then return end
			local myChar = player.Character
			if not myChar then return end
			local myHRP = myChar:FindFirstChild("HumanoidRootPart")
			local myTool = myChar:FindFirstChildOfClass("Tool")
			if not myHRP or not myTool then return end
			local toolHandle = myTool:FindFirstChild("Handle")
			if not toolHandle then return end
			local currentTime = tick()
			for _, otherPlayer in pairs(Players:GetPlayers()) do
				if otherPlayer ~= player and otherPlayer.Character then
					local theirChar = otherPlayer.Character
					local theirHRP = theirChar:FindFirstChild("HumanoidRootPart")
					if theirHRP then
						local frontPosition = myHRP.CFrame * CFrame.new(0, 0, -3)
						local distance = (toolHandle.Position - frontPosition.Position).Magnitude
						if distance < 4 then
							if not lastSlapTime[otherPlayer] or (currentTime - lastSlapTime[otherPlayer]) > 0.5 then
								lastSlapTime[otherPlayer] = currentTime
								for _, part in pairs(theirChar:GetDescendants()) do
									if part:IsA("BasePart") then part.CanCollide = false end
								end
								local originalCFrame = theirHRP.CFrame
								theirHRP.CFrame = frontPosition
								task.wait(0.05)
								theirHRP.CFrame = originalCFrame
								task.wait(0.1)
								for _, part in pairs(theirChar:GetDescendants()) do
									if part:IsA("BasePart") then part.CanCollide = true end
								end
							end
						end
					end
				end
			end
		end)
	else
		if slapAllConnection then
			slapAllConnection:Disconnect()
			slapAllConnection = nil
		end
		lastSlapTime = {}
	end
end, false)

-- ======================================================
-- ESP TOGGLE
-- ======================================================
_G.EspEnabled = true
local espObjects = {}

local function createEsp(targetPlayer)
	if targetPlayer == player then return end
	local highlight = Instance.new("Highlight")
	highlight.Name = "ESP_" .. targetPlayer.Name
	highlight.FillColor = Color3.fromRGB(255, 0, 0)
	highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	highlight.FillTransparency = 0.5
	highlight.OutlineTransparency = 0
	highlight.Adornee = targetPlayer.Character
	highlight.Parent = targetPlayer.Character
	espObjects[targetPlayer] = highlight
end

local function removeEsp(targetPlayer)
	if espObjects[targetPlayer] then
		espObjects[targetPlayer]:Destroy()
		espObjects[targetPlayer] = nil
	end
end

Players.PlayerAdded:Connect(function(targetPlayer)
	targetPlayer.CharacterAdded:Connect(function()
		task.wait(0.5)
		if _G.EspEnabled then createEsp(targetPlayer) end
	end)
end)

Players.PlayerRemoving:Connect(function(targetPlayer)
	removeEsp(targetPlayer)
end)

for _, targetPlayer in pairs(Players:GetPlayers()) do
	if targetPlayer ~= player and targetPlayer.Character and not espObjects[targetPlayer] then
		createEsp(targetPlayer)
	end
end

MyGui:AddToggle("ESP", function(state)
	_G.EspEnabled = state
	if state then
		for _, targetPlayer in pairs(Players:GetPlayers()) do
			if targetPlayer ~= player and targetPlayer.Character and not espObjects[targetPlayer] then
				createEsp(targetPlayer)
			end
		end
	else
		for _, highlight in pairs(espObjects) do
			highlight:Destroy()
		end
		espObjects = {}
	end
end, true)
