# フィールドにプレイヤーがいたらスキップ
    execute positioned 1024.0 0 3584.0 if entity @a[distance=..128] unless data storage anemoland:progress data.beta1.field.35{cleared:1b} run return 1
# ボーナス
    data modify storage anemoland:progress data.beta1.field.35.event.bonus set value {xp:0,gold:0,drop:0}
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.drop set value 2
# 一定確率でイベントを変化させずにスキップ
    execute store result score #random temp run random value 0..999
    execute if score #random temp matches 800.. run return 1
# フィールドidとレベルをセット
    data modify storage temp:_ data.field_event set value {field_id:35,level:10}
    execute store result score #level temp run random value 1..3
    execute if data storage anemoland:progress data.rank{silver:1b} store result score #level temp run random value 1..5
    execute if data storage anemoland:progress data.rank{gold:1b} store result score #level temp run random value 1..8
    execute store result storage temp:_ data.field_event.level int 5 run scoreboard players get #level temp
execute store result score #random temp run random value 0..58
execute if score #random temp matches 0..7 if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/stone_a with storage temp:_ data.field_event
execute if score #random temp matches 8..15 if data storage anemoland:progress data.mob_list.raptor{unlock:1b} if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/stone_b with storage temp:_ data.field_event
execute if score #random temp matches 16..16 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars with storage temp:_ data.field_event
execute if score #random temp matches 17..21 if data storage anemoland:progress data.mob_list.spider{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/spiders with storage temp:_ data.field_event
execute if score #random temp matches 22..29 if data storage anemoland:progress data.mob_list.raptor{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/raptors with storage temp:_ data.field_event
execute if score #random temp matches 30..30 unless score #level temp matches 1.. run data modify storage temp:_ data.field_event.level set value 5
execute if score #random temp matches 30..30 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 30..30 if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/king_boar with storage temp:_ data.field_event
execute if score #random temp matches 31..38 unless score #level temp matches 4.. run data modify storage temp:_ data.field_event.level set value 20
execute if score #random temp matches 31..38 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 31..38 if data storage anemoland:progress data.mob_list.martellos{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/martellos_stone with storage temp:_ data.field_event
execute if score #random temp matches 39..42 unless score #level temp matches 4.. run data modify storage temp:_ data.field_event.level set value 20
execute if score #random temp matches 39..42 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 39..42 if data storage anemoland:progress data.mob_list.ojinushi{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/ojinushi with storage temp:_ data.field_event
execute if score #random temp matches 43..43 unless score #level temp matches 4.. run data modify storage temp:_ data.field_event.level set value 20
execute if score #random temp matches 43..43 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 43..43 if data storage anemoland:progress data.mob_list.muscleroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/muscleroom with storage temp:_ data.field_event
execute if score #random temp matches 44..58 unless score #level temp matches 6.. run data modify storage temp:_ data.field_event.level set value 30
execute if score #random temp matches 44..58 unless score #level temp matches ..8 run data modify storage temp:_ data.field_event.level set value 40
execute if score #random temp matches 44..58 if data storage anemoland:progress data.mob_list.bagikeros{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/bagikeros with storage temp:_ data.field_event
data modify storage anemoland:progress data.beta1.field.35.event.bonus set value {xp:0,gold:0,drop:0}
# ボーナス
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.xp set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.xp set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.gold set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.gold set value 2
    execute store result score #random temp run random value 0..19
    execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.drop set value 1
    execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.35.event.bonus.drop set value 2
