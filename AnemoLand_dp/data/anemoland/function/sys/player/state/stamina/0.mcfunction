
execute if score @s stamina < @s max_stamina run scoreboard players add @s stamina 100

execute if score @s stamina > @s max_stamina run scoreboard players operation @s stamina = @s max_stamina
