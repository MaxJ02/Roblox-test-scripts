function onPlayerSpawn(player)
   local message = Instance.new("Message")
   message.Text = "Bruh"
   message.Parent = player.PlayerGui
   wait(2)
   message:Destroy()
end

game.Players.PlayerAdded:Connect(onPlayerSpawn)
