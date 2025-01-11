data merge entity @s {DeathLootTable:"empty",NoAI:1b,Silent:1b,ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"anemoland:post_attack/victim2victim":1,"anemoland:mob_experience/0":1}}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
tag @s add mob
tag @s add bagikeros
tag @s add hitbox
execute if data storage temp:_ data.new_entity{summon_type:"pet"} run tag @s add pet
execute if data storage temp:_ data.new_entity{summon_type:"player_side"} run tag @s add pet
execute if data storage temp:_ data.new_entity{summon_type:"pet"} run team join player_side
execute if data storage temp:_ data.new_entity{summon_type:"player_side"} run team join player_side
execute if data storage temp:_ data.new_entity{summon_type:"pet"} run tag @s add player_side
execute if data storage temp:_ data.new_entity{summon_type:"player_side"} run tag @s add player_side
execute if data storage temp:_ data.new_entity{summon_type:"enemy"} run tag @s add enemy
attribute @s max_health base set 1024.0
data modify entity @s Health set value 1024.0f
scoreboard players operation @s entity_id = #new_entity_id entity_id
scoreboard players operation @s attack.base = #attack.base temp
execute if entity @s[tag=hitbox.front_body] run attribute @s scale base set 5
execute if entity @s[tag=hitbox.front_body] run scoreboard players set @s armor.mul 120
execute if entity @s[tag=hitbox.front_body] run scoreboard players set @s armor.fire.mul 70
execute if entity @s[tag=hitbox.front_body] run scoreboard players set @s armor.water.mul 130
execute if entity @s[tag=hitbox.head] run attribute @s scale base set 4
execute if entity @s[tag=hitbox.head] run scoreboard players set @s armor.mul 150
execute if entity @s[tag=hitbox.head] run scoreboard players set @s armor.fire.mul 90
execute if entity @s[tag=hitbox.head] run scoreboard players set @s armor.water.mul 160
execute if entity @s[tag=hitbox.left_arm] run attribute @s scale base set 4
execute if entity @s[tag=hitbox.left_arm] run scoreboard players set @s armor.mul 100
execute if entity @s[tag=hitbox.left_arm] run scoreboard players set @s armor.fire.mul 50
execute if entity @s[tag=hitbox.left_arm] run scoreboard players set @s armor.water.mul 130
execute if entity @s[tag=hitbox.right_arm] run attribute @s scale base set 4
execute if entity @s[tag=hitbox.right_arm] run scoreboard players set @s armor.mul 100
execute if entity @s[tag=hitbox.right_arm] run scoreboard players set @s armor.fire.mul 50
execute if entity @s[tag=hitbox.right_arm] run scoreboard players set @s armor.water.mul 130
execute if entity @s[tag=hitbox.left_leg] run attribute @s scale base set 4
execute if entity @s[tag=hitbox.left_leg] run scoreboard players set @s armor.mul 100
execute if entity @s[tag=hitbox.left_leg] run scoreboard players set @s armor.fire.mul 50
execute if entity @s[tag=hitbox.left_leg] run scoreboard players set @s armor.water.mul 130
execute if entity @s[tag=hitbox.right_leg] run attribute @s scale base set 4
execute if entity @s[tag=hitbox.right_leg] run scoreboard players set @s armor.mul 100
execute if entity @s[tag=hitbox.right_leg] run scoreboard players set @s armor.fire.mul 50
execute if entity @s[tag=hitbox.right_leg] run scoreboard players set @s armor.water.mul 130
execute if entity @s[tag=hitbox.tail1] run attribute @s scale base set 4.5
execute if entity @s[tag=hitbox.tail1] run scoreboard players set @s armor.mul 120
execute if entity @s[tag=hitbox.tail1] run scoreboard players set @s armor.fire.mul 50
execute if entity @s[tag=hitbox.tail1] run scoreboard players set @s armor.water.mul 130
execute if entity @s[tag=hitbox.tail2] run attribute @s scale base set 4.5
execute if entity @s[tag=hitbox.tail2] run scoreboard players set @s armor.mul 120
execute if entity @s[tag=hitbox.tail2] run scoreboard players set @s armor.fire.mul 50
execute if entity @s[tag=hitbox.tail2] run scoreboard players set @s armor.water.mul 130
