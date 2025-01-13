function anemoland:sys/entity/common/follow_player/stop
execute if score @s action_time matches 40 if entity @s[tag=clear] run function anemoland_contents:sys/entity/mob/human1/emote/after_clear/branch
execute unless entity @a[tag=pet_owner,distance=..8] if entity @a[tag=pet_owner,distance=..32] run function anemoland_contents:sys/entity/mob/human1/action/follow_player/walk/start
