# フィールドにプレイヤーがいたらスキップ
    execute positioned 1024.0 0 1536.0 if entity @a[distance=..128] unless data storage anemoland:progress data.beta1.field.23{cleared:1b} run return 1
# ボーナス
    data modify storage anemoland:progress data.beta1.field.23.event.bonus set value {xp:0,gold:0,drop:0}
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.drop set value 2
# 一定確率でイベントを変化させずにスキップ
    execute store result score #random temp run random value 0..999
    execute if score #random temp matches 800.. run return 1
# フィールドidとレベルをセット
    data modify storage temp:_ data.field_event set value {field_id:23,level:10}
    execute store result score #level temp run random value 1..3
    execute if data storage anemoland:progress data.rank{silver:1b} store result score #level temp run random value 1..5
    execute if data storage anemoland:progress data.rank{gold:1b} store result score #level temp run random value 1..8
    execute store result storage temp:_ data.field_event.level int 5 run scoreboard players get #level temp
execute store result score #random temp run random value 0..9
execute if score #random temp matches 0..8 unless score #level temp matches 1.. run data modify storage temp:_ data.field_event.level set value 5
execute if score #random temp matches 0..8 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 0..8 if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrel_head with storage temp:_ data.field_event
execute if score #random temp matches 9..9 unless score #level temp matches 1.. run data modify storage temp:_ data.field_event.level set value 5
execute if score #random temp matches 9..9 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 9..9 if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrel_head_double with storage temp:_ data.field_event
data modify storage anemoland:progress data.beta1.field.23.event.bonus set value {xp:0,gold:0,drop:0}
# ボーナス
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.23.event.bonus.drop set value 2
