#> anemoland_contents:sys/arena/time_attack/update
#
# タイムアタックの本を更新
#
# @within function anemoland:sys/player/area/common/arena_prepare/book/update


data modify storage temp:_ data.pages set value []

execute if data storage anemoland:progress data.arena.time_attack.king_boar_and_squirrel_head{unlocked:1b} run function anemoland_contents:sys/arena/time_attack/update/king_boar_and_squirrel_head with storage anemoland:progress data.arena.time_attack.king_boar_and_squirrel_head
execute unless data storage anemoland:progress data.arena.time_attack.king_boar_and_squirrel_head{unlocked:1b} run data modify storage temp:_ data.pages append value '["",{"text":"\\n\\n\\n\\n\\n\\n          未解放","color": "gray"}]'

execute if data storage anemoland:progress data.arena.time_attack.martellos{unlocked:1b} run function anemoland_contents:sys/arena/time_attack/update/martellos with storage anemoland:progress data.arena.time_attack.martellos
execute unless data storage anemoland:progress data.arena.time_attack.martellos{unlocked:1b} run data modify storage temp:_ data.pages append value '["",{"text":"\\n\\n\\n\\n\\n\\n          未解放","color": "gray"}]'

execute if data storage anemoland:progress data.arena.time_attack.muscleroom{unlocked:1b} run function anemoland_contents:sys/arena/time_attack/update/muscleroom with storage anemoland:progress data.arena.time_attack.muscleroom
execute unless data storage anemoland:progress data.arena.time_attack.muscleroom{unlocked:1b} run data modify storage temp:_ data.pages append value '["",{"text":"\\n\\n\\n\\n\\n\\n          未解放","color": "gray"}]'

execute if data storage anemoland:progress data.arena.time_attack.carnara{unlocked:1b} run function anemoland_contents:sys/arena/time_attack/update/carnara with storage anemoland:progress data.arena.time_attack.carnara
execute unless data storage anemoland:progress data.arena.time_attack.carnara{unlocked:1b} run data modify storage temp:_ data.pages append value '["",{"text":"\\n\\n\\n\\n\\n\\n          未解放","color": "gray"}]'

execute if data storage anemoland:progress data.arena.time_attack.garuda{unlocked:1b} run function anemoland_contents:sys/arena/time_attack/update/carnara with storage anemoland:progress data.arena.time_attack.garuda
execute unless data storage anemoland:progress data.arena.time_attack.garuda{unlocked:1b} run data modify storage temp:_ data.pages append value '["",{"text":"\\n\\n\\n\\n\\n\\n          未解放","color": "gray"}]'

data modify block ~ ~ ~ Book.components."minecraft:written_book_content".pages set from storage temp:_ data.pages
