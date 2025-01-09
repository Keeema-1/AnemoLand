
execute if entity @s[tag=particle_display] run function anemoland_contents:sys/entity/display/tick

execute if entity @s[tag=bullet] run function anemoland_contents:sys/entity/branch/bullet_tick

# 一時的なスコアとストレージをリセット
    scoreboard players reset * temp
    data remove storage temp:_ data
