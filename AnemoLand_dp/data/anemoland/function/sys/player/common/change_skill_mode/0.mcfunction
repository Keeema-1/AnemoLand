
# スキルモードスコアを加算
    scoreboard players add @s skill_mode 1

# 武器に登録された武器技の種類を取得
    execute store result score #num_skills temp run data get storage temp:_ data.weapon_skills

# スキルモードスコアが武器技の数を超えたらスキルモードをリセット
    execute if score @s skill_mode > #num_skills temp run scoreboard players reset @s skill_mode

# ゲージ消費量を取得
    execute if score @s skill_mode matches 1 store result score #gauge_consume temp run data get storage temp:_ data.weapon_skills[0].gauge_consume
    execute if score @s skill_mode matches 2 store result score #gauge_consume temp run data get storage temp:_ data.weapon_skills[1].gauge_consume
    execute if score @s skill_mode matches 3 store result score #gauge_consume temp run data get storage temp:_ data.weapon_skills[2].gauge_consume

# ゲージ消費量分が不足していたらスキルモードをリセット
    execute unless score @s skill_gauge >= #gauge_consume temp run scoreboard players reset @s skill_mode

# 変更後がスキルモードの場合はサウンド
    execute if score @s skill_mode matches 1.. run playsound block.note_block.chime master @s ~ ~ ~ 1 2
