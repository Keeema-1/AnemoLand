function anemoland:sys/entity/common/follow_player/stop
execute unless entity @a[tag=pet_owner,distance=..8] if entity @a[tag=pet_owner,distance=..32] run function rpg:sys/entity/mob/martellos/tick/action/follow_player/1_walk/start
