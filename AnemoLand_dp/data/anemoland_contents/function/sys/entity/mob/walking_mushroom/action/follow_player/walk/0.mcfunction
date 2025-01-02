function anemoland:sys/entity/common/follow_player/walk
execute if entity @a[tag=pet_owner,distance=..6] run function anemoland_contents:sys/entity/mob/walking_mushroom/action/follow_player/stop/start
execute unless entity @a[tag=pet_owner,distance=..128] run function anemoland_contents:sys/entity/mob/walking_mushroom/action/follow_player/stop/start
