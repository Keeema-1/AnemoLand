function anemoland:sys/player/menu/common/click

scoreboard players set @s menu0 2
scoreboard players set @s menu1 0

data remove storage temp:_ data.player_data.Inventory[{Slot:10b}]
data remove storage temp:_ data.player_data.Inventory[{Slot:11b}]
data remove storage temp:_ data.player_data.Inventory[{Slot:12b}]
data remove storage temp:_ data.player_data.Inventory[{Slot:13b}]

function anemoland:sys/player/menu/armor/main/init
