# level
    execute unless score #new_entity.level temp matches 0.. run scoreboard players set #new_entity.level temp 15
    scoreboard players operation @s level = #new_entity.level temp
# max health
    scoreboard players set @s max_health 200
    scoreboard players operation @s max_health *= #new_entity.level temp
    scoreboard players add @s max_health 1000
# rank による倍率
    scoreboard players set #rank_mul temp 100
    execute if score #new_entity.level temp matches 20.. run scoreboard players add #rank_mul temp 20
    execute if score #new_entity.level temp matches 30.. run scoreboard players add #rank_mul temp 20
    scoreboard players operation @s max_health *= #rank_mul temp
    scoreboard players set #rank_mul temp 100
    scoreboard players operation @s max_health /= #rank_mul temp
    scoreboard players operation @s max_health /= #rank_mul temp
    scoreboard players operation @s max_health *= #rank_mul temp
# 人数による倍率
    execute store result score #team_mul temp if entity @a[gamemode=adventure,distance=..64]
    scoreboard players add #team_mul temp 1
    scoreboard players operation @s max_health *= #team_mul temp
    scoreboard players set #team_mul temp 2
    scoreboard players operation @s max_health /= #team_mul temp
# health
    scoreboard players operation @s health = @s max_health
# attack damage
    scoreboard players set @s attack.base 60
    scoreboard players operation @s attack.base *= #new_entity.level temp
    scoreboard players set #temp temp 10
    scoreboard players operation @s attack.base /= #temp temp
    scoreboard players add @s attack.base 2
    scoreboard players set @s attack.mul 10
    scoreboard players set @s attack.state_mul 100
# armor
    scoreboard players set @s armor.mul 100
scoreboard players operation #attack.base temp = @s attack.base
