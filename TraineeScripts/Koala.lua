repeat wait() until game:IsLoaded()

local player = game:GetService("Players").LocalPlayer
local com = game:GetService("ReplicatedStorage").com

local question = 0
local function send(answer)
    question++
	pcall(function()
		com:InvokeServer("submitAnswer", {question, answer})
	end)
end

if player.PlayerGui.ScreenGui.mainFrame.questionFrame:FindFirstChildOfClass("Frame") then
    player.PlayerGui.ScreenGui.mainFrame.questionFrame:FindFirstChildOfClass("Frame"):Destroy()
elseif player.PlayerGui.ScreenGui.mainFrame.questionFrame:FindFirstChild("begin") then
    player.PlayerGui.ScreenGui.mainFrame.questionFrame:FindFirstChild("begin"):Destroy()
end
player.PlayerGui.ScreenGui.mainFrame.questionFrame.Q.Text = "Did You Know?"
player.PlayerGui.ScreenGui.mainFrame.questionFrame.j.Text = "Koala Cafe skidded their application place off of Bakiez."

com:InvokeServer("initiateTest")
send("Find the item, click it then click their name on the hand-to menu, select the product and give them it.")
send("Calm everyone down and alert an MR or HR.")
send("Tell an MR or HR in game.")
send("Say \"Hello, welcome to Koala Cafe! How can I serve you?\"")
send("True")
send("True")
send("False")
send("True")

player.PlayerGui.ScreenGui.mainFrame.questionFrame.Q.Text = "Success!"
player.PlayerGui.ScreenGui.mainFrame.questionFrame.j.Text = "You are now a Trainee. You may leave the game now."