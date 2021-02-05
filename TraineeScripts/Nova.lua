while game:GetService("RunService").Heartbeat:Wait() do
	pcall(function()
		for _,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.ApplicationCenter.Questions.Answers.AnswerA.MouseButton1Click)) do
			game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(debug.getconstant(v.Function, 22), debug.getconstant(v.Function, 34))
			coroutine.yield()
		end
	end)
end
