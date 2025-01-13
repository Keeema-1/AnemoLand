function anemoland:sys/player/menu/common/click

scoreboard players set @s menu0 1
scoreboard players set @s menu1 1

data remove storage temp:_ data.player_data.Inventory[{Slot:10b}]
data remove storage temp:_ data.player_data.Inventory[{Slot:11b}]

function anemoland:sys/player/menu/pet/supporter/init
