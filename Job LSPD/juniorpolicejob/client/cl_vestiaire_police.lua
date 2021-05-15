ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)



RMenu.Add('tenue', 'vpolice', RageUI.CreateMenu("Vestaire", "~b~Vestiaire"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('tenue', 'vpolice'), true, true, true, function()

            RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                end
            end)
-- Changement à retrouver sur mon discord
            RageUI.ButtonWithStyle("Tenue Cadet",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0)       --T-shirt
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 180, 0)     --Torse 
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)        --Bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 48, 1)       --Pantalon
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 39, 0)       --Chaussure
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 32, 0)       --Kevlar
                end
            end)
-- Changement à retrouver sur mon discord
            RageUI.ButtonWithStyle("Tenue Officier",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 59, 0)       --T-shirt
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 287, 0)     --Torse  
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 1, 0)        --Bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)       --Pantalon
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 39, 0)       --Chaussure
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 0)       --Kevlar
                end
            end)
-- Changement à retrouver sur mon discord
            RageUI.ButtonWithStyle("Tenue Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 60, 0)       --T-Shirt
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 287, 0)     --Torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 26, 0)       --Bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)       --Pantalon
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 39, 0)       --Chaussure
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 0)       --Kevlar
                end
            end)
-- Changement à retrouver sur mon discord
            RageUI.ButtonWithStyle("Tenue Sergent",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 58, 0)       --T-Shirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 287, 0)     --Torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 28, 0)       --Bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)       --Pantalon
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 39, 0)       --Chaussure
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 0)       --Kevlar
                end
            end)
-- Changement à retrouver sur mon discord
            RageUI.ButtonWithStyle("Tenue Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 58, 0)       --T-Shirt
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 287, 0)     --Torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 26, 0)       --Bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)       --Pantalon
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 39, 0)       --Chaussure
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 0)       --Kevlar
                end
            end)
-- Changement à retrouver sur mon discord
            RageUI.ButtonWithStyle("Tenue - Unité K-9",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0)       --T-Shirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 188, 0)     --Torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 26, 0)       --Bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)       --Pantalon
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 39, 0)       --Chaussure
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 61, 5)       --Kevlar
                end
            end)

            RageUI.Separator("↓ ~o~Gestion GPB~s~ ↓")

            RageUI.ButtonWithStyle("Mettre",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 1, 0)   --Kevlar
                end
            end)

            RageUI.ButtonWithStyle("Enlever",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 0, 0)   --Kevlar
                end
            end)

        end, function()
        end, 1)
                        Citizen.Wait(0)
                                end
                            end)



-- A changer suivant l'emplacement de votre vestiaire 1 et 2
local position = {
    {x = 451.61, y = -993.35, z = 30.69}--1
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
                DrawMarker(2, 451.61, -993.35, 28.69+0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)--2
-- Si vous souhaitez changer le type de marker rendez-vous sur ce site (https://docs.fivem.net/docs/game-references/markers/) et changez à la place de "DrawMarker(2" vous changez uniquement le numéro


            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au vestiaire")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('tenue', 'vpolice'), not RageUI.Visible(RMenu:Get('tenue', 'vpolice')))
                end
            end
        end
    end
    end
end)
