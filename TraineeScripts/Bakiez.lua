repeat wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
local com = game:GetService("ReplicatedStorage").com

player.PlayerGui:WaitForChild("ScreenGui")

local question = 0
local function send(answer)
	question++
    com:InvokeServer("submitAnswer", {question, answer})
end

spawn(function()
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://138204323"
	sound:Play()
	sound.Ended:wait()
	sound:Destroy()
end)

player.PlayerGui.ScreenGui.mainFrame.clientHandler.Disabled = true
game:GetService("Workspace")[""].Head.face.Texture = "rbxassetid://6207065266"
local info = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
game:GetService("Workspace").CurrentCamera.CFrame = game:GetService("Workspace").StartCamera.CFrame
game:GetService("TweenService"):Create(game:GetService("Workspace").CurrentCamera, info, {CFrame = game:GetService("Workspace").BeginCamera.CFrame}):Play()
game:GetService("TweenService"):Create(game.Lighting.IntroBlur, info, {Size = 0}):Play()
player.PlayerGui.ScreenGui.intro:TweenPosition(UDim2.new(0.35, 0, 1.3, 0), "Out", "Quad", 2)
player.PlayerGui.ScreenGui.background:TweenPosition(UDim2.new(0.6, 0, 0.55, 0), "Out", "Quad", 1)
player.PlayerGui.ScreenGui.mainFrame:TweenPosition(UDim2.new(0.6, 0, 0.55, 0), "Out", "Quad", 1)
player.PlayerGui.ScreenGui.mainFrame.interviewerFrame.ImageLabel.Image = "rbxassetid://6207065266"

local function sendMessage(p2)
	for i = 0, #p2 do
		player.PlayerGui.ScreenGui.mainFrame.interviewerFrame.Question.Text = p2:sub(1, i)
		wait(0.025)
	end
end

com:InvokeServer("initiateTest")
send("Be polite, use grammar at all times and finish the orders.")
send("I love Bakiez Bakery! It is the best!")
send("Wait patiently until someone is done their shift or try a new server.")
send("Go to the Training Center and wait for trainings to start so you can pass and get promoted.")
send("Ask another Staff member for their assistance.")
send("Hello! Can I have a muffin, please?")
send("Bakiez Bakery was founded by Voulge and Deilghtful.")
send("Please, can I get you anything from our drinks menu?")
send("Report them to one of the Higher Ranks.")
send("Ask them politely to stop and warn them.")
send("Tell them to stop cheating, then check if there is an admin in the server. If there is, report them. If there isn’t, screenshot their name and message a Rank 11.")
send("Trainee")
send("Report them to a member of Staff, or a Moderator in-game")
send("Hello, welcome to Bakiez Bakery!")
send("Yes")
send("Yes")
send("Yes")
send("No")

sendMessage("we did it bro, check your rank.")
wait(2 - 0.025)
player:Kick()
game:shutdown()