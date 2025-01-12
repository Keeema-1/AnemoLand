
scoreboard players operation #attack.base temp = @s attack.base_total

execute store result score #temp temp run data get storage temp:_ data.player_storage.skill_levels.dust_avoiding 25
scoreboard players operation #attack.base temp *= #temp temp

scoreboard players set #temp temp 100
scoreboard players operation #attack.base temp /= #temp temp

function anemoland_contents:sys/entity/bullet/auto_ignite_dust/summon/default/0
