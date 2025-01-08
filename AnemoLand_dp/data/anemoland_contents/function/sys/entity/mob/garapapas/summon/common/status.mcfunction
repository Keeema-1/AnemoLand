execute unless score #new_entity.level temp matches 0.. run scoreboard players set #new_entity.level temp 15
scoreboard players operation @s level = #new_entity.level temp
scoreboard players set @s max_health 400
scoreboard players operation @s max_health *= #new_entity.level temp
scoreboard players add @s max_health 1000
scoreboard players set #rank_mul temp 100
execute if score #new_entity.level temp matches 20.. run scoreboard players add #rank_mul temp 20
execute if score #new_entity.level temp matches 30.. run scoreboard players add #rank_mul temp 20
scoreboard players operation @s max_health *= #rank_mul temp
scoreboard players set #rank_mul temp 100
scoreboard players operation @s max_health /= #rank_mul temp
scoreboard players operation @s max_health /= #rank_mul temp
scoreboard players operation @s max_health *= #rank_mul temp
execute store result score #team_mul temp if entity @a[gamemode=adventure,distance=..64]
scoreboard players add #team_mul temp 1
scoreboard players operation @s max_health *= #team_mul temp
scoreboard players set #team_mul temp 2
scoreboard players operation @s max_health /= #team_mul temp
scoreboard players operation @s health = @s max_health
scoreboard players set @s attack.base 80
scoreboard players operation @s attack.base *= #new_entity.level temp
scoreboard players set #temp temp 10
scoreboard players operation @s attack.base /= #temp temp
scoreboard players set @s attack.mul 10
scoreboard players set @s armor.mul 100
scoreboard players set @s armor.fire.mul 60
scoreboard players set @s armor.water.mul 40
scoreboard players set @s armor.ice.mul 120
scoreboard players operation @s anger.damage = @s max_health
scoreboard players set #temp temp 50
scoreboard players operation @s anger.damage *= #temp temp
scoreboard players set #temp temp 100
scoreboard players operation @s anger.damage /= #temp temp
scoreboard players operation #attack.base temp = @s attack.base
