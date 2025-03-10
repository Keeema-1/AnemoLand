#> anemoland_contents:sys/entity/mob/carnara/manual/action/bark/tick
#
# アクション bark 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/bark/tick

# プレイヤーの方を向く
    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
# 終了
    execute if score @s action_time matches 160.. run function anemoland_contents:sys/entity/mob/carnara/action/bark/end

scoreboard players operation #entity_id temp = @s entity_id
execute if score @s action_time matches 30..90 as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp at @s run particle flash ^ ^ ^1 0 0 0 1 1

execute if score @s action_time matches 30..90 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 0
