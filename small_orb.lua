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


#It gets the Players service.
#It creates a new Part instance and sets its properties to create an orb.
#It defines a function called spawnOrb that takes a position parameter.
#The spawnOrb function clones the orb, sets its position to the position parameter, and adds it to the game workspace.
#The PlayerAdded event is fired when a new player joins the game. When this happens, the CharacterAdded event is fired for that player's character.
#The Died event is then fired when the player's character dies. When this happens, the spawnOrb function is called to spawn an orb at the player's position.
