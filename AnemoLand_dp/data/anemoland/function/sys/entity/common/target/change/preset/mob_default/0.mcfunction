execute store result score #random temp run random value 0..3

# execute if score #random temp matches 0..1 run function anemoland:sys/entity/common/target/change/same_if_not_player_else_attacker/0
# execute if score #random temp matches 2 run function anemoland:sys/entity/common/target/change/same/0
execute if score #random temp matches ..3 run function anemoland:sys/entity/common/target/change/attacker/0
# execute if score #random temp matches 4 run function anemoland:sys/entity/common/target/change/player/random/0
