execute if entity @s[tag=ship_05] as @a[tag=player_check,limit=1] run return run function anemoland:sys/player/area/common/ship/0
execute if entity @s[tag=village_15] as @a[tag=player_check,limit=1] run return run function anemoland_contents:sys/area/beta1/village/15/enter/0
execute if entity @s[tag=field_14] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=1,area2=104}] run return run function anemoland_contents:sys/area/beta1/field/14/enter/0
execute if entity @s[tag=field_04] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=1,area2=4}] run return run function anemoland_contents:sys/area/beta1/field/04/enter/0
execute if entity @s[tag=field_arena1] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=1,area2=9901}] run return run function anemoland_contents:sys/area/beta1/field/arena1/enter/0
execute if entity @s[tag=field_26] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=1,area2=206}] run return run function anemoland_contents:sys/area/beta1/field/26/enter/0
execute if entity @s[tag=field_25] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=1,area2=205}] run return run function anemoland_contents:sys/area/beta1/field/25/enter/0
execute if entity @s[tag=field_24] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=1,area2=204}] run return run function anemoland_contents:sys/area/beta1/field/24/enter/0
