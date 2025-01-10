# 攻撃後であれば終了
    execute if score @s action0 matches 3 if score @s action1 matches 2 run return 1

# 着地するまでの2回目のヒット：発動
    execute if score @s action0 matches 3 if score @s action1 matches 1 if score @s action_time matches 10.. run return run function anemoland_contents:sys/player/weapon_skill/hit/impact_crater/01
    execute if score @s action0 matches 3 if score @s action1 matches 1 unless score @s action_time matches 10.. run return 1

# 最初のヒット：ジャンプ
    function anemoland_contents:sys/player/weapon_skill/hit/impact_crater/00
