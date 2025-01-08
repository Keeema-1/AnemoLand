
execute store result score #stamina.add temp run data get storage temp:_ data.player_storage.skill_levels.stamina_recovery 1

scoreboard players operation @s stamina += #stamina.add temp

execute if score @s stamina > @s max_stamina run scoreboard players operation @s stamina = @s max_stamina
