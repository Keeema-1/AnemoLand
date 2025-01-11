# フィールドにプレイヤーがいたらスキップ
    execute positioned 2048.0 0 3072.0 if entity @a[distance=..128] unless data storage anemoland:progress data.beta1.field.51{cleared:1b} run return 1
# ボーナス
    data modify storage anemoland:progress data.beta1.field.51.event.bonus set value {xp:0,gold:0,drop:0}
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.drop set value 2
# 一定確率でイベントを変化させずにスキップ
    execute store result score #random temp run random value 0..999
    execute if score #random temp matches 800.. run return 1
# フィールドidとレベルをセット
    data modify storage temp:_ data.field_event set value {field_id:51,level:10}
    execute store result score #level temp run random value 1..3
    execute if data storage anemoland:progress data.rank{silver:1b} store result score #level temp run random value 1..5
    execute if data storage anemoland:progress data.rank{gold:1b} store result score #level temp run random value 1..8
    execute store result storage temp:_ data.field_event.level int 5 run scoreboard players get #level temp
execute store result score #random temp run random value 0..73
execute if score #random temp matches 0..3 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_a with storage temp:_ data.field_event
execute if score #random temp matches 4..6 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_b with storage temp:_ data.field_event
execute if score #random temp matches 7..8 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_c with storage temp:_ data.field_event
execute if score #random temp matches 9..10 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_d with storage temp:_ data.field_event
execute if score #random temp matches 11..13 if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_e with storage temp:_ data.field_event
execute if score #random temp matches 14..16 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_f with storage temp:_ data.field_event
execute if score #random temp matches 17..19 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms with storage temp:_ data.field_event
execute if score #random temp matches 20..29 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/many_walking_mushrooms with storage temp:_ data.field_event
execute if score #random temp matches 30..31 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars with storage temp:_ data.field_event
execute if score #random temp matches 32..36 if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/spiders with storage temp:_ data.field_event
execute if score #random temp matches 37..39 if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrels with storage temp:_ data.field_event
execute if score #random temp matches 40..41 if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/king_boar with storage temp:_ data.field_event
execute if score #random temp matches 42..44 if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrel_head with storage temp:_ data.field_event
execute if score #random temp matches 45..46 if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/martellos with storage temp:_ data.field_event
execute if score #random temp matches 47..54 if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/martellos_mushroom with storage temp:_ data.field_event
execute if score #random temp matches 55..57 if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/ojinushi with storage temp:_ data.field_event
execute if score #random temp matches 58..72 if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/muscleroom with storage temp:_ data.field_event
execute if score #random temp matches 73..73 if data storage anemoland:progress data.mob_list.bagikeros{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/bagikeros with storage temp:_ data.field_event
data modify storage anemoland:progress data.beta1.field.51.event.bonus set value {xp:0,gold:0,drop:0}
# ボーナス
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.51.event.bonus.drop set value 2
