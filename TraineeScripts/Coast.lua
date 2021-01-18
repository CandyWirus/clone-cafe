local question = 0
local function send(answer)
	question++
	game:GetService("ReplicatedStorage").SubmitAnswer:FireServer(answer, "Question" .. tostring(question))
end

send("Warn them and if they continue call a MR+ to kick them.")
send("Welcome to Coast Grill, how can I help? Menus are above!")
send("1")
send("Welcome to Coast Grill! How can I help?")
send("Apologize and inform that that the maximum is 3 items.")
send("Get a HR+ to instantly ban them.")
send("The ability to lead a group of individuals.")
send("Say hi and get back to work.")
send("Yes")
send("Yes")