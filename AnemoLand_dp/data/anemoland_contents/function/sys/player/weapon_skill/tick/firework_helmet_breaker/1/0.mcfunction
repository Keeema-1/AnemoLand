
# 浮遊効果をクリア
    execute if score @s action_time matches 5.. run effect clear @s levitation

# パーティクルやサウンド
    execute if score @s action_time matches ..10 run particle firework ~ ~ ~ 0 0 0 0 1

# 着地または10秒経過で終了
    execute if score @s action_time matches 200.. run function anemoland_contents:sys/player/weapon_skill/tick/firework_helmet_breaker/end
    execute if score @s action_time matches 6.. if predicate anemoland:is_on_ground run function anemoland_contents:sys/player/weapon_skill/tick/firework_helmet_breaker/end
