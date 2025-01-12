
execute if score @s area2 matches 1.. unless score @s stamina matches 10000.. run return 1
execute if score @s area2 matches 1.. run scoreboard players remove @s stamina 10000

playsound entity.player.attack.sweep master @a ~ ~ ~ 0.5 0

particle poof ~ ~ ~ 0.1 0.1 0.1 0 1

tag @s add cannot_avoid

# 回避距離を計算
    scoreboard players set $strength hb.Motion 0
    function anemoland_contents:sys/player/skill/avoid/0
    scoreboard players add $strength hb.Motion 4000

# 水中やダッシュ中
    scoreboard players set #mul temp 100

    execute if predicate anemoland:is_sprinting run scoreboard players set #mul temp 70

    execute if block ~ ~ ~ water unless predicate anemoland:is_swiming run scoreboard players set #mul temp 150
    execute if block ~ ~ ~ water if predicate anemoland:is_swiming run scoreboard players set #mul temp 40

    scoreboard players operation $strength hb.Motion *= #mul temp
    scoreboard players set #mul temp 100
    scoreboard players operation $strength hb.Motion /= #mul temp

execute if predicate anemoland:input/forward unless predicate anemoland:input/right unless predicate anemoland:input/left rotated ~ 0 run return run function #p_motion:looking
execute if predicate anemoland:input/backward unless predicate anemoland:input/right unless predicate anemoland:input/left rotated ~180 0 run return run function #p_motion:looking
execute if predicate anemoland:input/left unless predicate anemoland:input/forward unless predicate anemoland:input/backward rotated ~-90 0 run return run function #p_motion:looking
execute if predicate anemoland:input/right unless predicate anemoland:input/forward unless predicate anemoland:input/backward rotated ~90 0 run return run function #p_motion:looking

execute if predicate anemoland:input/forward if predicate anemoland:input/right rotated ~45 0 run return run function #p_motion:looking
execute if predicate anemoland:input/forward if predicate anemoland:input/left rotated ~-45 0 run return run function #p_motion:looking
execute if predicate anemoland:input/backward if predicate anemoland:input/right rotated ~135 0 run return run function #p_motion:looking
execute if predicate anemoland:input/backward if predicate anemoland:input/left rotated ~-135 0 run return run function #p_motion:looking

execute unless predicate anemoland:input/forward unless predicate anemoland:input/backward unless predicate anemoland:input/right unless predicate anemoland:input/left rotated ~180 0 run return run function #p_motion:looking
# execute rotated ~180 0 run function #p_motion:looking
