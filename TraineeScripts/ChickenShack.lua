repeat wait() until game:IsLoaded()

local com = game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction")

local function send(answer)
	print(com:InvokeServer("SendData", answer))
end

game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ScreenGui").Background.Inner.Title.Text = "Chicken Shit Quiz"
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Background.Inner.Main:WaitForChild("Home"):TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Linear", 0.5);

send("I would tell an admin with proof.")
send("Warn them then ask for help.")
send("Hi. Welcome to Chicken Shack.")
send("We serve chicken and drinks.")
send("I must serve customers and help when I can.")
send("I like to help people.")
