repeat wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
local remote = game:GetService("ReplicatedStorage").JobCenterManager.SubmitAnswer

player.PlayerGui:WaitForChild("ScreenGui")

spawn(function()
	player.PlayerGui.ScreenGui.ImageLabel:TweenPosition(UDim2.new(.5, 0, 1.5, 0), "Out", "Back", .5, true)
	wait(.5)
	game:GetService("ReplicatedStorage").StopBlur:FireServer()
end)
game:GetService("Workspace")[""].Head.face.Texture = "rbxassetid://6207065266"

remote:FireServer("QuestionOne", "AnswerTwo")
remote:FireServer("QuestionTwo", "AnswerOne")
remote:FireServer("QuestionThree", "AnswerThree")
remote:FireServer("QuestionFour", "AnswerFour")
remote:FireServer("QuestionFive", "AnswerOne")
remote:FireServer("QuestionSix", "AnswerTwo")
remote:FireServer("QuestionSeven", "AnswerOne")
remote:FireServer("QuestionEight", "AnswerFour")
remote:FireServer("QuestionNine", "AnswerThree")
remote:FireServer("QuestionTen", "AnswerTwo")
remote:FireServer("QuestionEleven", "AnswerTwo")
remote:FireServer("QuestionTwelve", "AnswerThree")
game:GetService("ReplicatedStorage").Rank:InvokeServer(12)

player.PlayerGui.BillboardGui.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Back", .2, true);
player.PlayerGui.BillboardGui.Frame:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Back", .2, true);

local function playMessage(message)
	for i = 1, #message do
		player.PlayerGui.BillboardGui.Frame.TextLabel.Text = string.sub(message, 1, i)
		wait()
	end
	wait(2)
end

playMessage("you are a trainee now.")
playMessage("pastriez is pretty cringe bro")
player:Kick()
game:shutdown()