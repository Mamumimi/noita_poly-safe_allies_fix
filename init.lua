function OnPlayerSpawned(player_id)
    local luaHomunculusComponents = EntityGetComponent(player_id, "LuaComponent", "homunculus_type")
    if luaHomunculusComponents then
        for _,component in ipairs(luaHomunculusComponents) do
            if ComponentGetValue2(component,"script_polymorphing_to") == "mods/poly_safe_allies_fix/files/applier_entity_spawner.lua"
                then
                --GamePrintImportant("Already applied, skipping")
                return
            end
        end
    end
    --GamePrintImportant("Not found, initializing now")
    EntityAddComponent2( player_id, "LuaComponent", {
        execute_every_n_frame=-1,
        script_polymorphing_to="mods/poly_safe_allies_fix/files/applier_entity_spawner.lua",
        _tags="homunculus_type"
    })
end