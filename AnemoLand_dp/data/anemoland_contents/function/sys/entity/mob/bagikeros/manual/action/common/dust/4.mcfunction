scoreboard players set #action_way temp 4
execute if entity @s[tag=aj.global.root] on vehicle run scoreboard players operation #attack.base temp = @s attack.base
execute if entity @s[tag=mob_root] run scoreboard players operation #attack.base temp = @s attack.base
execute rotated ~ 0 run function anemoland_contents:sys/entity/bullet/ignitable_dust/summon