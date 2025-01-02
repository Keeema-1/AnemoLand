
scoreboard players operation #player_id temp = @s player_id

execute as @a[distance=..128] if score @s player_id = #player_id temp run return 1

function anemoland:sys/player/item/fishing/kill_bobber
