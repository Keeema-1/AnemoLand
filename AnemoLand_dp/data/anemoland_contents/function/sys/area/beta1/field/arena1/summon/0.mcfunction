
function anemoland_contents:sys/area/beta1/field/arena1/init/remove_entity

execute at @p run function anemoland:sys/player/area/common/field/summon_npc
function anemoland:sys/player/area/common/field/set_pet_timer
data modify storage anemoland:progress data.beta1.field.arena1.summon_flag set value 1b
data modify storage anemoland:progress data.beta1.field.arena1.event merge value {wave:1,waves_len:1}

data modify storage temp:_ data.arena_summon set value {}
data modify storage temp:_ data.arena_summon.id set from storage anemoland:settings data.arena.active.mob1.type.id
data modify storage temp:_ data.arena_summon.level set from storage anemoland:settings data.arena.active.mob1.level
data modify storage temp:_ data.arena_summon.side set value "enemy"
execute if data storage anemoland:settings data.arena.active.mob1.type.id positioned ~-8 ~ ~-8 run function anemoland_contents:sys/area/beta1/field/arena1/summon/00 with storage temp:_ data.arena_summon

data modify storage temp:_ data.arena_summon set value {}
data modify storage temp:_ data.arena_summon.id set from storage anemoland:settings data.arena.active.mob2.type.id
data modify storage temp:_ data.arena_summon.level set from storage anemoland:settings data.arena.active.mob2.level
data modify storage temp:_ data.arena_summon.side set value "enemy"
execute if data storage anemoland:settings data.arena.active.mob2.type.id positioned ~-8 ~ ~8 run function anemoland_contents:sys/area/beta1/field/arena1/summon/00 with storage temp:_ data.arena_summon

data modify storage temp:_ data.arena_summon set value {}
data modify storage temp:_ data.arena_summon.id set from storage anemoland:settings data.arena.active.mob3.type.id
data modify storage temp:_ data.arena_summon.level set from storage anemoland:settings data.arena.active.mob3.level
data modify storage temp:_ data.arena_summon.side set value "enemy"
execute if data storage anemoland:settings data.arena.active{player_side:1} run data modify storage temp:_ data.arena_summon.side set value "player_side"
execute if data storage anemoland:settings data.arena.active.mob3.type.id positioned ~8 ~ ~-8 run function anemoland_contents:sys/area/beta1/field/arena1/summon/00 with storage temp:_ data.arena_summon

data modify storage temp:_ data.arena_summon set value {}
data modify storage temp:_ data.arena_summon.id set from storage anemoland:settings data.arena.active.mob4.type.id
data modify storage temp:_ data.arena_summon.level set from storage anemoland:settings data.arena.active.mob4.level
data modify storage temp:_ data.arena_summon.side set value "enemy"
execute if data storage anemoland:settings data.arena.active{player_side:1} run data modify storage temp:_ data.arena_summon.side set value "player_side"
execute if data storage anemoland:settings data.arena.active.mob4.type.id positioned ~8 ~ ~8 run function anemoland_contents:sys/area/beta1/field/arena1/summon/00 with storage temp:_ data.arena_summon

data modify storage anemoland:progress data.demo2.fieldarena1.boss_flag set value 1b

tag @e[type=#anemoland:mob_core,tag=mob_root,distance=..64] add arena

execute as @a[distance=..64] run function anemoland_contents:sys/player/music/king_boar/set
