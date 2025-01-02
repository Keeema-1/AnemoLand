
scoreboard players operation #xp.pet1 temp = #xp temp
scoreboard players set #const temp 4
scoreboard players operation #xp.pet1 temp /= #const temp
scoreboard players operation #xp.pet2 temp = #xp.pet1 temp
scoreboard players operation #xp.pet3 temp = #xp.pet1 temp

scoreboard players operation #player_id temp = @s player_id

execute as @e[type=#anemoland:mob_core,distance=..64,tag=pet,tag=!npc] if score @s player_id = #player_id temp run function anemoland:sys/entity/common/drop_gold_xp/on_attacker/other/pet

function anemoland:sys/entity/common/drop_gold_xp/on_attacker/player/common
