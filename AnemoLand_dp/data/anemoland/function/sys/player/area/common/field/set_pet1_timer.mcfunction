execute if score #team_members temp matches 4.. run return 1

function anemoland:sys/player/common/player_storage/read

execute if data storage temp:_ data.player_storage.pet.1.count run scoreboard players set @s pet1.timer 10
# execute if data storage temp:_ data.player_storage.pet.2.count run scoreboard players set @s pet2.timer 10

scoreboard players add #team_members temp 1
