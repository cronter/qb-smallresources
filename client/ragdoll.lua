local isInRagdoll = false
RagdollEnabled = true,

Citizen.CreateThread(function()
 while true do
    Citizen.Wait(10)
    if isInRagdoll then
      SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
    end
  end
end)

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
    if IsControlJustPressed(2, 303) and RagdollEnabled and IsPedOnFoot(PlayerPedId()) then
        if isInRagdoll then
            isInRagdoll = false
        else
            isInRagdoll = true
            Wait(500)
        end
    end
  end
end)


RegisterCommand("carryped", function()
TriggerEvent("carryped")
end, false)
isAIPedBeingGrabbed1 = false
RegisterNetEvent("carryped")
AddEventHandler("carryped",function()
	
		local player = PlayerPedId()
		local playerPos = GetEntityCoords( player )
		local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( player, 0.0, 5.0, 0.0 ) -- get the ped DIRECTLY IN FRONT OF THE PLAYER (can be hard to get right, need some other way to do this. Maybe get the closest ped to the player)
		local infrontPed = GetPedInDirection(playerPos, inFrontOfPlayer)
		AIdraggingPed = infrontPed

		lib = 'amb@code_human_wander_clipboard@male@base'
		anim1 = 'static'
		controlFlagMe = 49

		if (DoesEntityExist(AIdraggingPed) or DoesEntityExist(AIgrabbedPed)) and not IsPedAPlayer(AIdraggingPed) and not IsEntityAVehicle(AIdraggingPed) then --- ai dragging
			
			if isAIPedBeingGrabbed1 == false then
				dragingAIBackInProgress = true
				AttachEntityToEntity(AIdraggingPed, player, 11816, -0.3, 0.4, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
				TaskPlayAnim(player, lib, anim1, 8.0, -8, -1, controlFlagMe, 0, 0, 0, 0)
				SetBlockingOfNonTemporaryEvents(AIdraggingPed, true)
				AIgrabbedPed = AIdraggingPed
				isAIPedBeingGrabbed1 = true
			elseif isAIPedBeingGrabbed1 == true then
				dragingAIBackInProgress = false
				ClearPedSecondaryTask(PlayerPedId())
				DetachEntity(AIgrabbedPed, true, false)
				isAIPedBeingGrabbed1 = false				
			end
		else
			ShowNotification("No one nearby to carry!")
		end		




end)
function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = #(vector3(targetCoords['x'], targetCoords['y'], targetCoords['z']) - vector3(plyCoords['x'], plyCoords['y'], plyCoords['z']))
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	--print("closest player is dist: " .. tostring(closestDistance))
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
	end
function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
    return true
end

function GetPedInDirection( coordFrom, coordTo )
    local lPed = PlayerPedId()
    local lPedCoords = GetEntityCoords(lPed, alive)
    local lPedOffset = GetOffsetFromEntityInWorldCoords(lPed, 0.0, 3.0, 0.0)
    local rayHandle = StartShapeTestCapsule(lPedCoords.x, lPedCoords.y, lPedCoords.z, lPedOffset.x, lPedOffset.y, lPedOffset.z, 1.2, 10, lPed, 7)
    local returnValue, hit, endcoords, surface, ped = GetShapeTestResult(rayHandle)

    if hit then
        return ped
    else
        return false
    end
end