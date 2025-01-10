
tag @s add bullet
tag @s add bullet.auto_ignite_dust
execute if score #bullet.pet_flag temp matches 1 run tag @s add pet_bullet
data merge entity @s {Marker:1b,Invisible:1b}
data modify entity @s ArmorItems[3] set value {id:"black_dye",count:1,components:{enchantments:{levels:{"anemoland:tick":1}}}}
tp @s ^ ^ ^ ~ ~

scoreboard players operation @s attack.base = #attack.base temp
