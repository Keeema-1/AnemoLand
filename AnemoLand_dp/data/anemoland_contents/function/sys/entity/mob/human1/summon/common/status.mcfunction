# level
    execute unless score #new_entity.level temp matches 0.. run scoreboard players set #new_entity.level temp 20
    scoreboard players operation @s level = #new_entity.level temp
# max health
    scoreboard players set @s max_health 50
    scoreboard players operation @s max_health *= #new_entity.level temp
    scoreboard players add @s max_health 1000
# health
    scoreboard players operation @s health = @s max_health
# attack damage
    scoreboard players set @s attack.base 40
    scoreboard players operation @s attack.base *= #new_entity.level temp
    scoreboard players set #temp temp 10
    scoreboard players operation @s attack.base /= #temp temp
    scoreboard players add @s attack.base 4
    scoreboard players set @s attack.mul 10
    scoreboard players set @s attack.state_mul 100
# armor
    scoreboard players set @s armor.mul 100
scoreboard players operation #attack.base temp = @s attack.base
