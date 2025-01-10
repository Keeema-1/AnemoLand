# タグ
    tag @s add bullet
    tag @s add bullet.firework_motion
    execute if score #bullet.pet_flag temp matches 1 run tag @s add pet_bullet

# nbtをセット
    data merge entity @s {Marker:1b,Invisible:1b}
    data modify entity @s ArmorItems[3] set value {id:"black_dye",count:1,components:{enchantments:{levels:{"anemoland:tick":1}}}}

# ディスプレイを乗せる
    summon item_display ~ ~ ~ {Tags:["newly_summoned"],item:{id:"fire_charge",count:1b},billboard:"center"}
    ride @e[type=item_display,distance=..1,tag=newly_summoned,limit=1] mount @s
    execute on passengers run tag @s remove newly_summoned

tp @s ^ ^0.5 ^ ~ ~

execute store result score @s action_way run random value 0..3
scoreboard players operation @s attack.base = #attack.base temp
