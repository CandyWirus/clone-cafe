repeat wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer

local function send(answer)
    game.ReplicatedStorage.RemoteFunction:InvokeServer("SendData", answer)
end

player.PlayerGui:WaitForChild("ScreenGui").Background.Inner.Main:Destroy()
player.PlayerGui.ScreenGui.Background.Inner.Title.Text = "IDIOT CAFE"
player.PlayerGui.ScreenGui.Background.Inner.Title:GetPropertyChangedSignal("Text"):Connect(function()
	if player.PlayerGui.ScreenGui.Background.Inner.Title ~= "IDIOT CAFE" then
		player.PlayerGui.ScreenGui.Background.Inner.Title.Text = "IDIOT CAFE"
	end
end)
player.PlayerGui.ScreenGui.Title.Text = "You're automatically becoming a Trainee"

send("Hello! And welcome to Iron Cafe, what may I get you on this fine day/evening?")
send("Three")
send("A Management/Executive or a Moderator")
send("Inform a Community Moderator or higher")
send("Inform an Executive Board or Corporate Member")
send("Inform an Executive Board or Corporate Member")
send("YourDailyPepsi")
send("Work hard at the register and attend trainings")
send("Iron Cafe is a fun, exciting cafe hangout where you can meet new friends, and serve virtual food and drinks!")
send("Work at the cafe, learn some stuff about how everything works then attend a training")
send("Ask a fellow staff member who may be more experienced")
send("I understand this")
send("I understand this")
send("I understand this")
send("Yes")
send("I understand this")
send("I understand this")