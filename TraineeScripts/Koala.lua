repeat wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
local gui = player.PlayerGui:WaitForChild("ScreenGui")
local com = game:GetService("ReplicatedStorage"):WaitForChild("CheckAnswers")

gui.MainFrame.QuestionFrame.Visible = false

for i,v in pairs(gui.BillboardGui:GetDescendants()) do
	if v.Name == "Question" and v:IsA("TextLabel") then
		v.Text = "Hi, you must be... " .. player.Name .. "! Don't worry, Chads like you don't have to fill out an application."
	end
end
local certificate = gui.MainFrame.Certificate:Clone()
certificate.Main.Image = "rbxassetid://6266583835"

local question = 0
local function send(answer)
	question++
	com:InvokeServer({Answer = answer, CurrentRank = 1, Question = question})
end

send(1)
send(2)
send(1)
send(1)
send(1)
send(2)
send(2)
send(1)

certificate.Size = UDim2.new()
certificate.Visible = true
certificate.PlayersName.Text = player.Name
certificate.Parent = gui.MainFrame
game:GetService("TweenService"):Create(certificate, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = gui.MainFrame.Certificate.Size}):Play()
wait(.75)
certificate.Stamp.Visible = true
certificate.Stamp.ImageTransparency = 1
game:GetService("TweenService"):Create(certificate.Stamp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.new(.25, 0, .25, 0), ImageTransparency = 0}):Play()
wait(.9)
game:GetService("SoundService").Stamp:Play()
