# scoreboard players operation @s xp += #xp.pet temp

scoreboard players operation #xp.display temp = #xp.pet temp

# execute at @s anchored eyes positioned ~ ~1 ~ summon area_effect_cloud run function anemoland:sys/entity/common/drop_gold_xp/xp_display/0

execute if entity @s[tag=pet1] run scoreboard players operation #xp.pet1 temp += #xp.pet1 temp
execute if entity @s[tag=pet2] run scoreboard players operation #xp.pet2 temp += #xp.pet2 temp
execute if entity @s[tag=pet3] run scoreboard players operation #xp.pet3 temp += #xp.pet3 temp
