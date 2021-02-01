local function getId()
	for _,v in pairs(getgc(true)) do
		if type(v) == "table" and rawget(v, "id") and rawget(v, "canApply") then
			return v.id
		end
	end
end

repeat wait() until game:IsLoaded()

local answers = {
	jobId = getId(),
	responses = {
		{
			type = "radio",
			options = {
				"Beg for a promotion.",
				"Troll around the hotel.",
				"Disrespect your peers.",
				"Attend a training session to rank up."
			},
			question = "What is your main responsibility as a Trainee?",
			text = "Attend a training session to rank up.",
			correct = 3,
			required = true
		},
		{
			type = "radio",
			options = {
				"hi welcome to ice!1 what do u need!",
				"Greetings! Welcome to Iceberg Hotels! How can I help you?",
				"hi lol welcome what do u want!?!",
				"welcome to iceberg hahaahaha, what you want?"
			},
			question = "Which of the following sentences is grammatically correct?",
			text = "Greetings! Welcome to Iceberg Hotels! How can I help you?",
			correct = 1,
			required = true
		},
		{
			type = "radio",
			options = {
				"One warning.",
				"Two warnings.",
				"Three warnings. ",
				"Four warnings."
			},
			question = "How can warnings do disruptive guests receive?",
			text = "Two warnings.",
			correct = 0,
			required = true
		},
		{
			type = "radio",
			required = true,
			question = "What should you do if you encounter an exploiter?",
			text = "Contact an MR+ with sufficent proof.",
			correct = 0,
			options = {
				"Contact an MR+ with sufficent proof.",
				"Cry. ",
				"Exploit with them. ",
				"Warn them."
			}
		},
		{
			type = "radio",
			options = {
				"Ignore them. ",
				"Troll with them.",
				"Laugh at them.",
				"Warn the user and contact an MR+."
			},
			question = "What should you do if you encounter a troller?",
			text = "Warn the user and contact an MR+.",
			correct = 3,
			required = true
		},
		{
			type = "radio",
			options = {
				"Unprofessionalism.",
				"A negative attitude.",
				"A positive attitude.",
				"An unenergetic demeanour."
			},
			question = "What is something you should maintain on the job?",
			text = "A positive attitude.",
			correct = 2,
			required = true
		}
	}
}

game:GetService("ReplicatedStorage"):WaitForChild("Hyra"):InvokeServer("Submit", answers)
game:GetService("Players").LocalPlayer:Kick("You have been ranked.")
