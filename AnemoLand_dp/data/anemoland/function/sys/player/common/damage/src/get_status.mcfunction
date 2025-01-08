#> anemoland:sys/player/common/damage/src/get_status
#
# 攻撃したプレイヤーのステータスを取得
#
# @output
#   #damage.src.attack.base temp
#       物理攻撃力
#   #damage.src.attack.mul temp
#       武器倍率 (武器技発動時は技に応じて後で上書きされる)
#
# @within anemoland:sys/enchantment/post_attack/victim2victim/as_attacker_player

# 物理攻撃力
    scoreboard players operation #damage.src.attack.base temp = @s attack.base_total

# 武器倍率
    scoreboard players operation #damage.src.attack.mul temp = @s attack.mul
    # execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.mul
    # execute unless score #damage.src.attack.mul temp matches 1.. run scoreboard players set #damage.src.attack.mul temp 10

# 属性攻撃力
    scoreboard players operation #damage.src.attack.fire.base temp = @s attack.fire.base
    scoreboard players operation #damage.src.attack.water.base temp = @s attack.water.base
    scoreboard players operation #damage.src.attack.ice.base temp = @s attack.ice.base
    scoreboard players operation #damage.src.attack.thunder.base temp = @s attack.thunder.base

# スキル
    function anemoland_contents:sys/player/skill/attack/src/0
