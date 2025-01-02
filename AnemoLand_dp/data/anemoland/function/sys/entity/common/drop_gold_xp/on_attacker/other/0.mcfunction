
scoreboard players operation #player_id temp = @s player_id

scoreboard players operation #xp.pet1 temp = #xp temp
scoreboard players set #const temp 4
scoreboard players operation #xp.pet1 temp /= #const temp
scoreboard players operation #xp.pet2 temp = #xp.pet1 temp
scoreboard players operation #xp.pet3 temp = #xp.pet1 temp

scoreboard players operation #xp.pet temp = #xp temp

execute if entity @s[tag=pet,tag=!npc] run function anemoland:sys/entity/common/drop_gold_xp/on_attacker/other/pet

execute if entity @s[tag=pet1] run scoreboard players operation #xp.pet1 temp += #xp.pet1 temp
execute if entity @s[tag=pet2] run scoreboard players operation #xp.pet2 temp += #xp.pet2 temp
execute if entity @s[tag=pet3] run scoreboard players operation #xp.pet3 temp += #xp.pet3 temp

execute as @a if score @s player_id = #player_id temp run function anemoland:sys/entity/common/drop_gold_xp/on_attacker/player/common
