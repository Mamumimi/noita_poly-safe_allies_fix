local applier_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(applier_id)
local player_id = EntityGetClosestWithTag( pos_x, pos_y, "polymorphed_player" ) --this is why putting the applier near the player was important :)
local effect = EntityLoad( "mods/poly_safe_allies_fix/files/effect_charm_simple.xml", pos_x, pos_y )
EntityAddChild( player_id, effect ) -- The only method that works and I never would've thought of it on my own. Thanks spoopy
--GetGameEffectLoadTo(player_id, "CHARM", true) -- Cannot remove cosmetic particles
--LoadGameEffectEntityTo(player_id, "data/entities/misc/effect_charm.xml") -- Loads the effect entity but not the effect...
EntityKill( applier_id )
