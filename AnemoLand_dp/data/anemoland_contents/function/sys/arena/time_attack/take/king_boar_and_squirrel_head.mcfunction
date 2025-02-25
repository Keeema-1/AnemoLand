
# tellraw @a {"translate": "anemoland.general.arena.time_attack.take"}

data modify storage anemoland:settings data.arena.active set value {mob1:{type:{id:"king_boar",custom_model_data:1010},level:10},mob2:{type:{id:"squirrel_head",custom_model_data:1020},level:10},time_attack:{id:"king_boar_and_squirrel_head"}}

function anemoland:sys/player/area/common/arena_prepare/update_display/0
