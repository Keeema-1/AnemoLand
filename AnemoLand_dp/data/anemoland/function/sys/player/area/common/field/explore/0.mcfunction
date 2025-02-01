
# 釣りスポット表示
    execute if entity @s[tag=!fishing] at @s positioned ~-2 ~-2 ~-2 if entity @e[type=marker,tag=fishing_spot,dx=3,dy=3,dz=3] run return run title @s actionbar {"translate":"anemoland.general.fishing.fishing_spot"}
    title @s actionbar ""
