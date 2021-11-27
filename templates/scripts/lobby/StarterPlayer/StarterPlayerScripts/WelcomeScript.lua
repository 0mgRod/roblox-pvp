local randMessage = math.random(1, 4)
if randMessage == 1 then
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Welcome to the game, "..game.Players.LocalPlayer.Name;
		Color = Color3.new(1, 1, 0);
		Font = Enum.Font.Arcade;
		FontSize = Enum.FontSize.Size24;
	})
elseif randMessage == 2 then
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Hello, "..game.Players.LocalPlayer.Name;
		Color = Color3.new(1, 1, 0);
		Font = Enum.Font.Arcade;
		FontSize = Enum.FontSize.Size24;
	})
elseif randMessage == 3 then
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Howdy, "..game.Players.LocalPlayer.Name;
		Color = Color3.new(1, 1, 0);
		Font = Enum.Font.Arcade;
		FontSize = Enum.FontSize.Size24;
	})
elseif randMessage == 4 then
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Welcome aboard on the PVP train, "..game.Players.LocalPlayer.Name;
		Color = Color3.new(1, 1, 0);
		Font = Enum.Font.Arcade;
		FontSize = Enum.FontSize.Size24;
	})
end
