repeat wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer

player.PlayerGui:WaitForChild("ScreenGui").Background.Inner.Main.Home.Logo.Image = "rbxassetid://6207065266"
player.PlayerGui:WaitForChild("ScreenGui").Background.Inner.Main.Home.Logo.Visible = true
player.PlayerGui:WaitForChild("ScreenGui").Background.Inner.Title.Text = "Boba Free Rank Centre"
player.PlayerGui:WaitForChild("ScreenGui").Background.Inner.Main.Home.Start.Text = "Please Wait..."

for _,v in pairs(getconnections(player.PlayerGui:WaitForChild("ScreenGui").Background.Inner.Main.Home.Start.MouseButton1Click)) do
	v:Disable()
end

for _,v in pairs(player.PlayerGui.ScreenGui.Background.Inner.Main:GetChildren()) do
	if v.Name == "Home" then
		v:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.5)
	elseif v.Position == UDim2.new(0, 0, 0, 0) then
		v:TweenPosition(UDim2.new(-1, 0, 0, 0), "Out", "Linear", 0.5)
	end
end

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SendData", {
	"Flez_ent",
	"No warnings. You call an MR/HR to ban.",
	"Coffee, Tea, and Macarons.",
	"A Trainee attends training to get promoted.",
	"Warn them 1 time - then call an admin.",
	"I would either contact an admin on discord or the group wall.",
	"Greetings! May I have a Classic Milk Tea?",
	"Hi! Welcome to Boba. I am Bob. What can I get for you on this wonderful day?",
	"I love Boba Tea!",
	"Hello, may I have Boba Tea?",
	"Yes"
})