
execute if items entity @p[tag=player_check] weapon.mainhand *[custom_data~{fishing_rod_type:"big_only"}] run return run function anemoland:sys/player/item/fishing/waiting/success/big

execute if predicate anemoland:random_chance/0_5 run return run function anemoland:sys/player/item/fishing/waiting/success/big
execute positioned ~ 0 ~ run function anemoland:sys/player/item/fishing/waiting/success/small
