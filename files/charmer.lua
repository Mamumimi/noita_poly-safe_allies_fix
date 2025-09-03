local applier_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(applier_id)
local player_id = EntityGetClosestWithTag( pos_x, pos_y, "polymorphed_player" ) --this is why putting the applier near the player was important :)
local effect = EntityLoad( "mods/poly_safe_allies_fix/files/effect_charm_simple.xml", pos_x, pos_y )
EntityAddChild( player_id, effect ) -- Problem: child effect detaches and lingers on player death, at least with resurrection mod enabled, but it's invisible and doesn't seem to affect anything so I don't care. Spoopy's method, the only one that works how I want it to.
--GetGameEffectLoadTo(player_id, "CHARM", true) -- Problem: provides no means with which to remove cosmetic effects
--LoadGameEffectEntityTo(player_id, "data/entities/misc/effect_charm.xml") -- Problem: loads the effect entity but does not apply the GameEffect... Used default charm to make particles visible in case you wanna see how it doesn't work.
EntityKill( applier_id )
