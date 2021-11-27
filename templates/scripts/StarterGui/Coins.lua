wait()
local leaderstats = game.Players.LocalPlayer.leaderstats
local coins = leaderstats.Coins

script.Parent.Main.CoinCount.Coins.Text = coins.Value

coins:GetPropertyChangedSignal("Value"):Connect(function()
	script.Parent.Main.CoinCount.Coins.Text = coins.Value
end)
