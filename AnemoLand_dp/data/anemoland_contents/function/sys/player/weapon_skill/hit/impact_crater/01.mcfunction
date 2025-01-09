
# 武器技スコアをセット
# 数tickにわたって処理される技はスコアを使用して管理する
    scoreboard players set @s action0 3
    scoreboard players set @s action1 2
    scoreboard players reset @s action_time

# パーティクルやサウンド
    execute rotated ~ 0 positioned ^ ^ ^2 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,dx=5,dy=5,dz=5,limit=1] run particle explosion ~ ~ ~ 0 0 0 1 1
    playsound entity.player.attack.crit player @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit player @a ~ ~ ~ 2 1

# メイン攻撃のステータスを取得
    execute store result score #damage.src.attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.mul 10

# メイン攻撃のヒット処理
    execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,dx=5,dy=5,dz=5,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_player

# ゲージを消費
    function anemoland:sys/player/item/weapon/weapon_skill/common/consume_gauge
