data modify storage temp:_ data.dropped_item set from entity @s Item

item replace entity @a[tag=me,limit=1] weapon.mainhand from entity @s container.0
kill @s

execute as @a[tag=me,limit=1] run function anemoland:sys/player/item/weapon/drop/000
