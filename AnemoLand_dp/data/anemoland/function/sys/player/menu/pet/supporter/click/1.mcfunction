function anemoland:sys/player/menu/common/click

scoreboard players reset #temp temp
execute if data storage temp:_ data.player_storage.supporters.1{id:"boy1"} run scoreboard players set #temp temp 1
execute if score #temp temp matches 1 run data modify storage temp:_ data.player_storage.supporters.1 set value {}
execute unless score #temp temp matches 1 run data modify storage temp:_ data.player_storage.supporters.1 set value {id:"boy1"}

function anemoland:sys/player/menu/pet/supporter/init
