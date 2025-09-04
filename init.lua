function OnPlayerSpawned(player_id)
    if GameHasFlagRun("poly_safe_allies_fix") then return end
    GameAddFlagRun("poly_safe_allies_fix")
    EntityAddComponent2( player_id, "LuaComponent", {
        execute_every_n_frame=-1,
        script_polymorphing_to="mods/poly_safe_allies_fix/files/applier_entity_spawner.lua"
    })
end
