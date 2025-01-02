execute unless data storage temp:_ data.player_data.Inventory[{Slot:9b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/team/supporter/click/0
execute if data storage anemoland:progress data.supporter{girl2:1b} unless data storage temp:_ data.player_data.Inventory[{Slot:10b,components:{"minecraft:custom_data":{menu:1b}}}] run return run function anemoland:sys/player/menu/team/supporter/click/1

function anemoland:sys/player/menu/team/supporter/update
