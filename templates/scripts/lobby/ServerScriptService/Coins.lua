local currencyName = "Coins"
local DataStore = game:GetService("DataStoreService"):GetDataStore("CoinsDataStore")

game.Players.PlayerAdded:Connect(function(player)
	local folder = Instance.new("Folder")
	folder.Name = "leaderstats"
	folder.Parent = player
	
	local currency = Instance.new("IntValue")
	currency.Name = currencyName
	currency.Parent = folder
	
	local ID = currencyName.."-"..player.UserId
	local savedData = nil
	
	pcall(function()
		savedData = DataStore:GetAsync(ID)
	end)
	
	if savedData ~= nil then
		currency.Value = savedData
	else
		currency.Value = 5
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	local ID = currencyName.."-"..player.UserId
	DataStore:SetAsync(ID,player.leaderstats[currencyName].Value)
end)

game:BindToClose(function()
	for i, player in pairs(game.Players:GetPlayers()) do
		if player then
			player:Kick("The game is shutting down!")
		end
	end
	
	wait(5)
	
end)
