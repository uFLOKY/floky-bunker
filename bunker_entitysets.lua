
local entitysets = {
    ['upgrade_bunker_set'] = true,
    ['bunker_style_c'] = true,
    ['office_upgrade_set'] = true,
    ['gun_locker_upgrade'] = true,
    ['gun_range_lights'] = true,
    ['upgrade_bunker_set_more'] = true,
    ['security_upgrade'] = true,
}

CreateThread(function()
    RequestIpl("floky_bunker_milo_")
    interiorID = GetInteriorAtCoords(2206.84229, 3326.489, 29.907299)
    if IsValidInterior(interiorID) then  
        for k, v in pairs(entitysets) do 
            DeactivateInteriorEntitySet(interiorID, k)
        end    

        for k, v in pairs(entitysets) do 
            ActivateInteriorEntitySet(interiorID, k)
        end    
        RefreshInterior(interiorID)
    end
end)

