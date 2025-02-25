

data modify storage anemoland:progress data set value {}
# data modify storage anemoland:progress data merge value {tutorial:{first:0b,map:0b}}

data modify storage player:_ data set value {}

data modify storage anemoland:settings data.arena.custom merge value {mob1:{level:10},mob2:{level:10},mob3:{level:10},mob4:{level:10}}

function anemoland_contents:command/progress/init_event

# scoreboard players set #npc.sally talk0 0
# scoreboard players set #npc.sally talk1 0

# scoreboard players set #npc.boy1 talk0 0
# scoreboard players set #npc.boy1 talk1 0

scoreboard players set #beta1.event_counter score 0

# タイムアタック
function anemoland_contents:sys/arena/time_attack/init

execute as @a run function anemoland:sys/player/init
function anemoland:command/talk/girl1/hello