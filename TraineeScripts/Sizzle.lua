repeat wait() until game:IsLoaded()

local com = game:GetService("ReplicatedStorage").SubmitAnswer
local question = 0
local function send(answer)
	question++
	com:InvokeServer(question, tostring(answer))
end

send(4)
send(2)
send(1)
send(3)
send(3)
send(3)
send(2)
send(2)
send("Hello! Can I have a burger, please?")
send("Could I get you something from our burger menu?")
send("SizzleBurger is the best company!")
send("Hello! Welcome to SizzleBurger! What can I get you?")
send("SizzleBurger was founded in 2014 by SilverAuthority.")
send(1)
send(1)
send(1)
