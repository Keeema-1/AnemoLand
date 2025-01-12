# フィールドにプレイヤーがいたらスキップ
    execute positioned 1024.0 0 2560.0 if entity @a[distance=..128] unless data storage anemoland:progress data.beta1.field.43{cleared:1b} run return 1
# ボーナス
    data modify storage anemoland:progress data.beta1.field.43.event.bonus set value {xp:0,gold:0,drop:0}
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.drop set value 2
# 一定確率でイベントを変化させずにスキップ
    execute store result score #random temp run random value 0..999
    execute if score #random temp matches 800.. run return 1
# フィールドidとレベルをセット
    data modify storage temp:_ data.field_event set value {field_id:43,level:10}
    execute store result score #level temp run random value 1..3
    execute if data storage anemoland:progress data.rank{silver:1b} store result score #level temp run random value 1..5
    execute if data storage anemoland:progress data.rank{gold:1b} store result score #level temp run random value 1..8
    execute store result storage temp:_ data.field_event.level int 5 run scoreboard players get #level temp
execute store result score #random temp run random value 0..69
execute if score #random temp matches 0..3 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_a with storage temp:_ data.field_event
execute if score #random temp matches 4..6 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_b with storage temp:_ data.field_event
execute if score #random temp matches 7..8 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_c with storage temp:_ data.field_event
execute if score #random temp matches 9..10 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_d with storage temp:_ data.field_event
execute if score #random temp matches 11..13 if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_e with storage temp:_ data.field_event
execute if score #random temp matches 14..16 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/plain_f with storage temp:_ data.field_event
execute if score #random temp matches 17..19 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms with storage temp:_ data.field_event
execute if score #random temp matches 20..20 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/many_walking_mushrooms with storage temp:_ data.field_event
execute if score #random temp matches 21..22 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars with storage temp:_ data.field_event
execute if score #random temp matches 23..27 if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/spiders with storage temp:_ data.field_event
execute if score #random temp matches 28..32 if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrels with storage temp:_ data.field_event
execute if score #random temp matches 33..33 if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/garapases with storage temp:_ data.field_event
execute if score #random temp matches 34..35 unless score #level temp matches 1.. run data modify storage temp:_ data.field_event.level set value 5
execute if score #random temp matches 34..35 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 34..35 if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/king_boar with storage temp:_ data.field_event
execute if score #random temp matches 36..40 unless score #level temp matches 1.. run data modify storage temp:_ data.field_event.level set value 5
execute if score #random temp matches 36..40 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 36..40 if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrel_head with storage temp:_ data.field_event
execute if score #random temp matches 41..41 unless score #level temp matches 2.. run data modify storage temp:_ data.field_event.level set value 10
execute if score #random temp matches 41..41 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 41..41 if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/garapapas with storage temp:_ data.field_event
execute if score #random temp matches 42..43 unless score #level temp matches 4.. run data modify storage temp:_ data.field_event.level set value 20
execute if score #random temp matches 42..43 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 42..43 if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/martellos with storage temp:_ data.field_event
execute if score #random temp matches 44..51 unless score #level temp matches 4.. run data modify storage temp:_ data.field_event.level set value 20
execute if score #random temp matches 44..51 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 44..51 if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/martellos_cherry with storage temp:_ data.field_event
execute if score #random temp matches 52..66 unless score #level temp matches 4.. run data modify storage temp:_ data.field_event.level set value 20
execute if score #random temp matches 52..66 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 52..66 if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/ojinushi with storage temp:_ data.field_event
execute if score #random temp matches 67..69 unless score #level temp matches 4.. run data modify storage temp:_ data.field_event.level set value 20
execute if score #random temp matches 67..69 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 67..69 if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/muscleroom with storage temp:_ data.field_event
data modify storage anemoland:progress data.beta1.field.43.event.bonus set value {xp:0,gold:0,drop:0}
# ボーナス
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.43.event.bonus.drop set value 2
