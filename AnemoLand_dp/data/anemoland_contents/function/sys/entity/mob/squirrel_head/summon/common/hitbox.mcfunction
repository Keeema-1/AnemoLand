data merge entity @s {DeathLootTable:"empty",NoAI:1b,Silent:1b,ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"anemoland:post_attack/victim2victim":1,"anemoland:mob_experience/0":1}}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
tag @s add mob
tag @s add squirrel_head
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
execute if entity @s[tag=hitbox.head] run attribute @s scale base set 1.75
execute if entity @s[tag=hitbox.head] run scoreboard players set @s armor.mul 150
execute if entity @s[tag=hitbox.head] run scoreboard players set @s armor.fire.mul 170
execute if entity @s[tag=hitbox.head] run scoreboard players set @s armor.ice.mul 60
execute if entity @s[tag=hitbox.neck] run attribute @s scale base set 1.75
execute if entity @s[tag=hitbox.neck] run scoreboard players set @s armor.mul 120
execute if entity @s[tag=hitbox.neck] run scoreboard players set @s armor.fire.mul 140
execute if entity @s[tag=hitbox.neck] run scoreboard players set @s armor.ice.mul 60
execute if entity @s[tag=hitbox.tail] run attribute @s scale base set 2
execute if entity @s[tag=hitbox.tail] run scoreboard players set @s armor.mul 120
execute if entity @s[tag=hitbox.tail] run scoreboard players set @s armor.fire.mul 140
execute if entity @s[tag=hitbox.tail] run scoreboard players set @s armor.ice.mul 60
