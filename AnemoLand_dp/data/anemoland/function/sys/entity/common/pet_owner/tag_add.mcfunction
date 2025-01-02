scoreboard players operation #player_id temp = @s player_id

execute as @a if score @s player_id = #player_id temp run tag @s add pet_owner
