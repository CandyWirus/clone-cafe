local answers = 32413412431423

repeat wait() until game:IsLoaded()

game:GetService("Players").LocalPlayer.PlayerGui.AppUI.Start.root.rootbutton:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.AppUI.Start.root["app/title"].Text = "Please Wait..."

for i = 1, #tostring(answers) do
	game:GetService("ReplicatedStorage").SubmitAnswer:InvokeServer(tonumber(string.sub(tostring(answers), i, i)))
end

game:GetService("Players").LocalPlayer.PlayerGui.AppUI.Start.root["app/title"].Text = "Success! Please leave the game."