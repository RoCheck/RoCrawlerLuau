local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local genv = getgenv and getgenv() or {}
genv.token = "super_fake_token_928374"

local function createButton()
	local button = Instance.new("TextButton")
	button.Text = "Press"
	button.Size = UDim2.new(0, 200, 0, 50)
	button.Position = UDim2.new(0.5, -100, 0.5, -25)
	button.Parent = Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
end

local function spoof()
	shared["_spy"] = true
	print("Activated fake spy mode")
end

spoof()
createButton()

local function fakeHook()
	local function innocent() return "clean" end
	print("Pretending to hook innocent function")
	-- hookfunction(innocent, function() return "intercepted" end)
end

fakeHook()

local function createLabel(txt)
	local label = Instance.new("TextLabel")
	label.Text = txt
	label.Size = UDim2.new(0, 200, 0, 30)
	label.Parent = Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
end

createLabel("Welcome to the test environment.")

local encoded = "cHJpbnQoIkZha2UgV29ybGQhIik=" -- base64 for: print("Fake World!")
print("Fake Decoded Payload (Base64):", encoded)

local remote = Instance.new("RemoteEvent")
remote.Name = "TestRemote"
remote.Parent = ReplicatedStorage

remote.OnServerEvent:Connect(function(player, message)
	print("Message from", player.Name, ":", message)
end)

local function backdoorRequire()
	local id = 10293847
	print("Pretend require from", id)
	-- local module = require(id)
end

backdoorRequire()

remote:FireServer("Client has clicked the button.")

local exploit = identifyexecutor and identifyexecutor() or "RobloxClient"
print("Fake exploit detection:", exploit)

local function simulateShell()
	local shellCmd = "loadstring('print(\"FAKE SHELL EXECUTION\")')"
	print("Simulating shell:", shellCmd)
end

simulateShell()

local function printInfo(player)
	print("Joined Player:", player.Name, player.UserId)
end

Players.PlayerAdded:Connect(printInfo)

task.spawn(function()
	while true do
		wait(90)
		print("Fake heartbeat thread pinging...")
	end
end)

local function obfuscatedMath()
	local s = 0
	for i = 1, 10 do
		s = s + (i * 2 - 1)
	end
	print("Fake obfuscated result:", s)
end

obfuscatedMath()

_G["stealth_mode"] = true
print("Global flag _G.stealth_mode =", _G["stealth_mode"])

local function simulateHttp()
	local url = "http://definitely-not-bad.com/hook"
	print("Simulating HttpGet:", url)
	-- game:HttpGet(url)
end

simulateHttp()

local function fakeKeylogger()
	local keys = {"W", "A", "S", "D"}
	for _, key in ipairs(keys) do
		print("Logging fake key:", key)
	end
end

fakeKeylogger()

print("Finished mixed script simulation.")
