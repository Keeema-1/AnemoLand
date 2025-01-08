# タグ
    tag @s add bullet
    tag @s add bullet.water
    tag @s add bullet.water.large
    execute if score #bullet.pet_flag temp matches 1 run tag @s add pet_bullet

# nbtをセット
    data merge entity @s {Marker:1b,Invisible:1b}
    data modify entity @s ArmorItems[3] set value {id:"black_dye",count:1,components:{enchantments:{levels:{"anemoland:tick":1}}}}

# ブロックディスプレイを乗せる
    summon block_display ~ ~ ~ {Tags:["newly_summoned"],block_state:{Name:"copper_block"},billboard:"fixed",transformation:[2.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,2.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,2.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,1.0000f],shadow_strength:1,shadow_radius:1.0}
    ride @e[type=block_display,distance=..1,tag=newly_summoned,limit=1] mount @s
    execute on passengers run tag @s remove newly_summoned

tp @s ^ ^0.5 ^ ~ ~

scoreboard players operation @s action_way = #action_way temp
scoreboard players operation @s attack.base = #attack.base temp
