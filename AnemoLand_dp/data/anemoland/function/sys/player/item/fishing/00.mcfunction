
execute at @p[tag=player_check] if block ~ ~ ~ water run return run function anemoland:sys/player/item/fishing/end_as_bobber
execute at @p[tag=player_check] if block ~ ~ ~ seagrass run return run function anemoland:sys/player/item/fishing/end_as_bobber

# 糸ディスプレイの調整
    execute as @p[tag=player_check] run function km_distance:as_to_at
    execute on passengers store result entity @s transformation.scale[2] float 1 run data get storage km_distance: out
    execute on passengers at @p[tag=player_check] positioned ~ ~1.1 ~ positioned ^ ^ ^0.25 facing entity @s eyes facing ^ ^ ^-1 run rotate @s ~ ~

# 浮きを投げている
execute if score @p[tag=player_check] action0 matches 1 run function anemoland:sys/player/item/fishing/casting/0
# ヒットを待っている
execute if score @p[tag=player_check] action0 matches 2 run function anemoland:sys/player/item/fishing/waiting/0
# 大物ヒット中
execute if score @p[tag=player_check] action0 matches 3 run function anemoland:sys/player/item/fishing/battle/0

execute if score @p[tag=player_check] action_time matches 0.. run scoreboard players remove @p[tag=player_check] action_time 1
