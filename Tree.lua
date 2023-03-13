 local Players = game:GetService("Players")

local orb = Instance.new("Part") -- create a new part to act as the orb
orb.Shape = Enum.PartType.Ball -- set the shape to a ball
orb.Size = Vector3.new(1, 1, 1) -- set the size of the orb
orb.Color = Color3.fromRGB(255, 0, 0) -- set the color of the orb

local function spawnOrb(position)
    local newOrb = orb:Clone() -- clone the orb to create a new one
    newOrb.Position = position -- set the position of the new orb
    newOrb.Parent = game.Workspace -- add the new orb to the game workspace
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        character.Humanoid.Died:Connect(function() -- when the player dies, spawn an orb at their position
            spawnOrb(character.HumanoidRootPart.Position)
        end)
    end)
end)
