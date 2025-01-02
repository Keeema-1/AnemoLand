
execute unless score @s sprint_time matches 1.. run function anemoland:sys/player/state/sprint/start

scoreboard players add @s sprint_time 1
