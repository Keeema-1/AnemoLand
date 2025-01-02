scoreboard players operation #gold temp = @s gold
scoreboard players operation #xp temp = @s xp
scoreboard players reset #attacker_flag temp
execute on attacker run function anemoland:sys/entity/common/drop_gold_xp/on_attacker/0
execute unless score #attacker_flag temp matches 1 as @p[distance=..64] run function anemoland:sys/entity/common/drop_gold_xp/on_attacker/0
scoreboard players operation #gold.display temp = @s gold
scoreboard players operation #xp.display temp = @s xp
execute positioned ~ ~0.25 ~ summon area_effect_cloud run function anemoland:sys/entity/common/drop_gold_xp/gold_display/0
execute positioned ~ ~0.5 ~ summon area_effect_cloud run function anemoland:sys/entity/common/drop_gold_xp/xp_display/0
