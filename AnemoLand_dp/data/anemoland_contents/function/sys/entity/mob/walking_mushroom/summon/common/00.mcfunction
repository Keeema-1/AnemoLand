data merge entity @s {Silent:1b,Age:0,DeathLootTable:"empty",ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"anemoland:post_attack/victim2victim":1,"anemoland:mob_experience/0":1}}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],IsImmuneToZombification:1b,Size:0}
tag @s add mob
tag @s add mob_root
tag @s add walking_mushroom
attribute @s scale base set 1.0
function anemoland:sys/entity/common/summon/0
execute if data storage temp:_ data.new_entity{"variant":"default"} rotated ~ 0 run function animated_java:walking_mushroom/summon {args:{variant:"default",animation:"default",start_animation:true}}
execute if data storage temp:_ data.new_entity{"variant":"blue"} rotated ~ 0 run function animated_java:walking_mushroom/summon {args:{variant:"blue",animation:"default",start_animation:true}}
execute if data storage temp:_ data.new_entity{"variant":"brown"} rotated ~ 0 run function animated_java:walking_mushroom/summon {args:{variant:"brown",animation:"default",start_animation:true}}
execute if data storage temp:_ data.new_entity{"variant":"gold"} rotated ~ 0 run function animated_java:walking_mushroom/summon {args:{variant:"gold",animation:"default",start_animation:true}}
ride @e[type=item_display,tag=newly_summoned.aj,distance=..32,limit=1] mount @s
tag @e[type=item_display,tag=newly_summoned.aj,distance=..32,limit=1] remove newly_summoned.aj
function anemoland_contents:sys/entity/mob/walking_mushroom/animation/default
tag @s remove newly_summoned
execute if data storage temp:_ data.new_entity{"variant":"default"} run function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/variant/default
execute if data storage temp:_ data.new_entity{"variant":"blue"} run function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/variant/blue
execute if data storage temp:_ data.new_entity{"variant":"brown"} run function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/variant/brown
execute if data storage temp:_ data.new_entity{"variant":"gold"} run function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/variant/gold
execute if data storage temp:_ data.new_entity{"summon_type":"enemy"} run function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/enemy
execute if data storage temp:_ data.new_entity{"summon_type":"pet"} run function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/pet
execute if data storage temp:_ data.new_entity{"summon_type":"player_side"} run function anemoland_contents:sys/entity/mob/walking_mushroom/summon/common/player_side
