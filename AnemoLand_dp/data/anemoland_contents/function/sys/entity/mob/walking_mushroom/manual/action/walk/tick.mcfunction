#> anemoland_contents:sys/entity/mob/walking_mushroom/manual/action/walk/tick
#
# アクション walk 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/walk/tick

execute unless score #hostile_target.exist temp matches 1 run return run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/stop/start
execute if entity @s[tag=damaged] run return 1

execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland_contents:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^1 positioned ~-0.5 ~-1 ~-0.5 if entity @a[tag=hostile_target,sort=nearest,dx=0,dy=2,dz=0,limit=1] run return run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/attack/start
execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^1 positioned ~-0.5 ~-1 ~-0.5 if entity @e[type=#anemoland_contents:mob_core,tag=hostile_target,sort=nearest,dx=0,dy=2,dz=0,limit=1] run return run function anemoland_contents:sys/entity/mob/walking_mushroom/tick/action/attack/start

data modify storage temp:_ data.rot2vec set value {abs:0.1}
function anemoland:sys/entity/common/rot2vec/0
data modify entity @s Motion set from storage temp:_ data.vec

execute unless entity @s[tag=damaged] if predicate anemoland:random_chance/0_2 run function anemoland:sys/entity/common/collide/1
