function anemoland_contents:command/progress/unlock/armor/king_boar
execute if entity @s[tag=variant.default] run recipe give @a anemoland_contents:boss/02010_king_boar
data modify storage anemoland:progress data.mob_list.king_boar.unlock set value 1b
execute if score @s level matches 15.. run data modify storage anemoland:progress data.mob_list.king_boar.defeated_levels.15 set value 1b
execute if score @s level matches 20.. run data modify storage anemoland:progress data.mob_list.king_boar.defeated_levels.20 set value 1b
execute if score @s level matches 25.. run data modify storage anemoland:progress data.mob_list.king_boar.defeated_levels.25 set value 1b
execute if score @s level matches 30.. run data modify storage anemoland:progress data.mob_list.king_boar.defeated_levels.30 set value 1b
execute if score @s level matches 35.. run data modify storage anemoland:progress data.mob_list.king_boar.defeated_levels.35 set value 1b
execute if score @s level matches 40.. run data modify storage anemoland:progress data.mob_list.king_boar.defeated_levels.40 set value 1b
