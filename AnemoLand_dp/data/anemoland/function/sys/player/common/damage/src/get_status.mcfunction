#> anemoland:sys/player/common/damage/src/get_status
#
# 攻撃したプレイヤーのステータスを取得
#
# @within anemoland:sys/enchantment/post_attack/victim2victim/as_attacker_player

scoreboard players operation #damage.src.skill_mode temp = @s skill_mode
scoreboard players operation #damage.src.attack.base temp = @s attack.base_total
execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.player_data.SelectedItem.components."minecraft:custom_data".status.attack.mul
execute unless score #damage.src.attack.mul temp matches 1.. run scoreboard players set #damage.src.attack.mul temp 10
# scoreboard players operation #damage.src.attack.mul temp = @s attack.mul

function anemoland:sys/player/skill/attack/0
