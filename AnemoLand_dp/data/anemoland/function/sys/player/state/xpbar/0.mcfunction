
xp set @s 28 levels

scoreboard players set #xpbar.value temp 100
scoreboard players operation #xpbar.value temp *= @s stamina
scoreboard players operation #xpbar.value temp /= @s max_stamina
execute store result storage temp:_ data.xpbar.value int 1 run scoreboard players add #xpbar.value temp 1

function anemoland:sys/player/state/xpbar/00 with storage temp:_ data.xpbar

xp set @s 0 levels
