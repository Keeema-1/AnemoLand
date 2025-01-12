
# 浮遊効果をクリア
    execute if score @s action_time matches 5.. run effect clear @s levitation

# 着地または10秒経過で終了
    execute if score @s action_time matches 200.. run function anemoland_contents:sys/player/weapon_skill/tick/dust_impact_crater/end
    execute if score @s action_time matches 6.. if predicate anemoland:is_on_ground run function anemoland_contents:sys/player/weapon_skill/tick/dust_impact_crater/end
