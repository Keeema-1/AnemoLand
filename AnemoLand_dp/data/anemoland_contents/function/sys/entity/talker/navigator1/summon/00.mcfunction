
data merge entity @s {Silent:1b,Invulnerable:1b,NoAI:1b}

execute on passengers if entity @s[tag=display1] run data merge entity @s {text:'[{"translate": "anemoland.talker.navigator1.name"}]',billboard:"vertical",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.25f,0.0f],scale:[1.0f,1.0f,1.0f]}}

execute on passengers if entity @s[type=interaction] run data merge entity @s {width:0.7,height:-2.0}

effect give @s invisibility infinite 1 true

tag @s add npc
tag @s add navigator1
tag @s add talker

execute positioned ~ ~ ~ rotated ~ 0 run function animated_java:human1/summon {args:{variant:"navigator1",animation:"default"}}

ride @e[tag=newly_summoned.aj,limit=1] mount @s
tag @e[tag=newly_summoned.aj,limit=1] remove newly_summoned.aj

tag @s remove newly_summoned

function anemoland_contents:sys/entity/mob/human1/animation/standing2

tp @s ~ ~ ~ ~ ~
