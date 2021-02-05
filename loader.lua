local index = {
	[666171398] = "TraineeScripts/Bakiez.lua",
	[2801444915] = "TraineeScripts/Boba.lua",
	[5259564906] = "TraineeScripts/Coast.lua",
	[3205450315] = "TraineeScripts/Iron.lua",
	[1010641748] = "TraineeScripts/Koala.lua",
	[2177912106] = "TraineeScripts/Pastriez.lua",
	[456009291] = "TraineeScripts/Sizzle.lua",
	[5403347872] = "TraineeScripts/Starblox.lua",
	[454583783] = "TraineeScripts/Verde.lua",
	[3453864261] = "TraineeScripts/ChickenShack.lua",
	[2025031960] = "TraineeScripts/Iceberg.lua",
	[2778877544] = "TraineeScripts/Nova.lua",
	[1052294222] = "TraineeScripts/Solera.lua"
}

repeat wait() until game:IsLoaded()

pcall(function()loadstring(syn.request({Url = "https://raw.githubusercontent.com/CandyWirus/clone-cafe/main/" .. index[game.PlaceId], Method = "GET"}).Body)()end)
