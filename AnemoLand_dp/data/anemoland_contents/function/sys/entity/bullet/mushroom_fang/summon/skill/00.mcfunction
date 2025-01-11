
# scoreboard players operation @s action_way = #action_way temp
scoreboard players operation @s attack.base = #attack.base temp

tag @s remove newly_summoned.aj
function animated_java:mushroom_fang/animations/fast/play
execute if score #bullet.pet_flag temp matches 1 run tag @s add pet_bullet

tag @s add skill_bullet
