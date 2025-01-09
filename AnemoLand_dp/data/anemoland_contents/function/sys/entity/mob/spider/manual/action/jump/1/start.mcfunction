scoreboard players set @s action1 1
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/spider/animation/jump

data modify storage temp:_ data.motion set value {speed:1.3}
execute rotated ~ -30 run function anemoland:sys/entity/common/motion/0

execute as @a[distance=..64] at @s run playsound entity.spider.ambient hostile @s ~ ~ ~ 1.5 1.2
