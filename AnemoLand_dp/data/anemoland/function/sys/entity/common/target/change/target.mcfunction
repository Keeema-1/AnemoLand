data modify storage temp:_ data.target_uuid set from entity @s UUID
scoreboard players set #new_target.exist temp 1

# tellraw @a [{"text":"new target: "},{"selector": "@s"}]
