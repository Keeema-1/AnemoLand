execute if predicate anemoland:random_chance/0_5 run function anemoland:sys/entity/common/target/change/boss/0
execute if score #new_target.exist temp matches 1.. run return 1

execute store result score #random temp run random value 0..7

execute if score #random temp matches 0 run function anemoland:sys/entity/common/target/change/same/0
execute if score #random temp matches 1 run function anemoland:sys/entity/common/target/change/attacker/0
execute if score #random temp matches 2 run function anemoland:sys/entity/common/target/change/nearest/0
execute if score #random temp matches 3..4 run function anemoland:sys/entity/common/target/change/player/nearest/0
execute if score #random temp matches 5..6 run function anemoland:sys/entity/common/target/change/player/random/0
execute if score #random temp matches 7 run function anemoland:sys/entity/common/target/change/pet/0

execute unless score #new_target.exist temp matches 1.. run function anemoland:sys/entity/common/target/change/player/nearest/0
