Citizen.CreateThread(function()
	if (GetCurrentResourceName() ~= "NI_PvpHud") then 
		print("[" .. GetCurrentResourceName() .. "] " .. "IMPORTANT: This resource must be named NI_PvpHud for it to work properly!");
	end
end)