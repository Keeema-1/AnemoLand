data modify storage temp:_ data.dropped_item set from entity @s Item

item replace entity @a[tag=me,limit=1] weapon.mainhand from entity @s container.0
kill @s
