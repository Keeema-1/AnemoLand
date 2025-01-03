
execute if data storage temp:_ data.motion.speed positioned 0. 0. 0. summon marker run function anemoland:sys/entity/common/motion/00 with storage temp:_ data.motion

data modify entity @s Motion set from storage temp:_ data.motion.result

data remove storage temp:_ data.motion
