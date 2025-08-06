--[[ 
    ✅ Harmless Real Code Section 
]]--

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function createButton()
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.Text = "Click Me"
    button.Parent = Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
end

createButton()

-- Add a harmless remote event
local remote = Instance.new("RemoteEvent")
remote.Name = "TestRemote"
remote.Parent = ReplicatedStorage

remote.OnServerEvent:Connect(function(player, data)
    print("Received from", player.Name, ":", data)
end)

--[[ 
    ⚠️ Fake Malicious-Looking Code (NOT ACTUALLY MALICIOUS)
]]--

-- Fake use of getgenv
local genv = getgenv and getgenv() or {}
genv.token = "123FAKETOKEN456"

-- Fake require backdoor
local function backdoorRequire()
    local id = 13371337 -- Totally fake ID
    print("Pretending to require backdoor from", id)
    -- local evil = require(id) -- DO NOT EXECUTE
end

backdoorRequire()

-- Fake base64 payload
local fakeBase64 = "cHJpbnQoIkZha2Ugc2hlbGwgY29tbWFuZCIp" -- base64 for: print("Fake shell command")
print("Decoded payload:", fakeBase64)

-- Fake loadstring call
local function fakeLoader()
    local str = "loadstring('print(\"Simulated malicious execution\")')"
    print("Simulated loadstring call:", str)
end

fakeLoader()

-- Fake obfuscated function
local function oBfUScAtEd()
    local a = {"f", "a", "k", "e"}
    local b = ""
    for _, v in pairs(a) do b = b .. v end
    print("Obfuscated var:", b)
end

oBfUScAtEd()

-- Fake infinite yield thread
task.spawn(function()
    while true do
        task.wait(60)
        print("Fake persistence script running...")
    end
end)
