#> anemoland:sys/entity/common/damage/src/get_status
#
# 攻撃したモブのステータスを取得
#
# @output
#   #damage.src.attack.base temp
#       物理攻撃力
#
# @within anemoland:sys/enchantment/post_attack/victim2victim/as_attacker_player

scoreboard players operation #damage.src.attack.base temp = @s attack.base
# scoreboard players set #const temp 10
# scoreboard players operation #damage.src.attack.base temp *= #const temp

scoreboard players operation #damage.src.attack.state_mul temp = @s attack.state_mul
