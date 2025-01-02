
function rpg:sys/player/common/player_storage/read

execute if data storage temp:_ data.player_storage.pet.boss1.components run tellraw @s {"text":"ボスペットの再召喚は120秒後に可能です","color":"yellow"}
execute if data storage temp:_ data.player_storage.pet.boss1.components run function rpg:sys/player/pet/boss_timer/1_remove
execute if data storage temp:_ data.player_storage.pet.boss1.components run scoreboard players set @s pet_boss1.timer 2400
data remove storage temp:_ data.player_storage.pet.boss1

function rpg:sys/player/common/player_storage/write

execute if score @s pet_boss1.timer matches 0 unless data storage temp:_ data.player_storage.pet.boss1.components run tellraw @s {"text":"ボスペットの再召喚が可能になりました","color":"yellow"}
execute if score @s pet_boss1.timer matches 0 unless data storage temp:_ data.player_storage.pet.boss1.components run scoreboard players reset @s pet_boss1.timer
