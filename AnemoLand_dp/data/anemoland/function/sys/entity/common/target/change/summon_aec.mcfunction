
tag @s add me
execute on passengers if entity @s[type=area_effect_cloud,tag=target_recorder] run kill @s
execute at @s summon area_effect_cloud run function anemoland:sys/entity/common/target/change/summoned_aec
tag @s remove me
