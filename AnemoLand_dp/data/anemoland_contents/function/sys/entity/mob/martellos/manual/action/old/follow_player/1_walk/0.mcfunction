function anemoland:sys/entity/common/follow_player/walk
execute if entity @a[tag=pet_owner,distance=..6] run function rpg:sys/entity/mob/martellos/tick/action/follow_player/0_stop/start
execute unless entity @a[tag=pet_owner,distance=..128] run function rpg:sys/entity/mob/martellos/tick/action/follow_player/0_stop/start
