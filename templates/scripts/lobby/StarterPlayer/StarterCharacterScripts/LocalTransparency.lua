-- This script is no longer in use. Use it for any of your FPS games you want to make.

local camera = workspace.CurrentCamera
local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character.Humanoid

player.CameraMaxZoomDistance = 10
camera.FieldOfView = 100
humanoid.CameraOffset = Vector3.new(0, 0, -1)

for childIndex, child in pairs(character:GetChildren()) do
	if child:IsA("BasePart") and child.Name ~= "Head" then
		
		child:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
			child.LocalTransparencyModifier = child.Transparency
		end)
		
		child.LocalTransparencyModifier = child.Transparency
		
		
	end
end

camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
	if camera.CameraSubject:IsA("VehicleSeat") then
		camera.CameraSubject = humanoid
	end
end)
