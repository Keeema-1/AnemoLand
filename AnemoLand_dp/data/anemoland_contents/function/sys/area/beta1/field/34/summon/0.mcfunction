function anemoland_contents:sys/area/beta1/field/34/init/remove_entity
data modify storage temp:_ data.event set from storage anemoland:progress data.beta1.field.34.event
execute at @p run function anemoland:sys/player/area/common/field/summon_npc
execute if data storage temp:_ data.event.with_npc1 run data modify storage anemoland:progress data.beta1.field.34.event.npc1_exist set value 1b
function anemoland:sys/player/area/common/field/set_pet_timer
data modify storage anemoland:progress data.beta1.field.34.summon_flag set value 1b
execute if data storage anemoland:progress data.beta1.field.34.event{wave:1} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.beta1.field.34.event.waves[0]
execute if data storage anemoland:progress data.beta1.field.34.event{wave:2} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.beta1.field.34.event.waves[1]
execute if data storage anemoland:progress data.beta1.field.34.event{wave:3} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.beta1.field.34.event.waves[2]
data remove storage temp:_ data.event_bonus
data modify storage temp:_ data.event_bonus set from storage anemoland:progress data.beta1.field.34.event.bonus
execute positioned 2048.0 0.0 1024.0 run function anemoland_contents:sys/event/field/branch with storage temp:_ data.wave
execute if score #boss_flag temp matches 1 run data modify storage anemoland:progress data.beta1.field.34.boss_flag set value 1b
