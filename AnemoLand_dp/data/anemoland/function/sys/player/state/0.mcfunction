#> anemoland:sys/player/state/0
#
# 状態管理などの処理
#
# @within function anemoland:sys/player/tick

# 状態管理スコアの計算
    execute unless predicate anemoland:is_sneaking run scoreboard players set @s sneak_time 0
    execute unless score @s hurt_time matches ..-1 run scoreboard players remove @s hurt_time 1

# 死亡検知
    execute if score @s death_count matches 1.. run function anemoland:sys/player/state/dead/0

function anemoland:sys/player/state/sprint/0
function anemoland:sys/player/state/jump/0
function anemoland:sys/player/state/stamina/0
function anemoland:sys/player/state/xpbar/0
function anemoland:sys/player/state/damage/0
