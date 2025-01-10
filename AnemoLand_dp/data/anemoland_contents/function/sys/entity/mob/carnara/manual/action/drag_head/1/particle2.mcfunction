
execute if entity @s[tag=hitbox.neck] run particle block{block_state:{Name:"ice"}} ~ 0.5 ~ 2 1 2 1 3
execute if entity @s[tag=hitbox.neck] run particle block{block_state:{Name:"blue_ice"}} ~ 0.5 ~ 2 1 2 1 3
execute if entity @s[tag=hitbox.neck] run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ 0.5 ~ 2 1 2 0 3

execute if entity @s[tag=hitbox.neck] run particle block{block_state:{Name:"ice"}} ~ 0.5 ~ 2 1 2 1 3
execute if entity @s[tag=hitbox.neck] run particle block{block_state:{Name:"blue_ice"}} ~ 0.5 ~ 2 1 2 1 3
execute if entity @s[tag=hitbox.neck] run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ 0.5 ~ 2 1 2 0 3

execute if predicate anemoland:random_chance/0_2 if entity @s[tag=hitbox.head] run particle explosion ~ 0.5 ~ 1 0.5 1 1 1
execute if predicate anemoland:random_chance/0_2 if entity @s[tag=hitbox.neck] run particle explosion ~ 0.5 ~ 1 0.5 1 1 1
