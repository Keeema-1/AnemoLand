# 武器技スコアをセット
# 数tickにわたって処理される技はスコアを使用して管理する
    scoreboard players reset @s action0
    scoreboard players reset @s action1
    scoreboard players reset @s action_time

# パーティクルやサウンド
    function anemoland_contents:sys/entity/display/particle/sweep_attack/summon/large
    playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
    playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1

# メイン攻撃のステータスを取得
    execute store result score #damage.src.attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.mul 10

# メイン攻撃のヒット処理
    execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,limit=1,dx=5,dy=5,dz=5] run function anemoland_contents:sys/entity/branch/damaged_by_player

# サブ攻撃のステータスを取得
    execute store result score #damage.src.attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].physical.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].physical.mul 10

# サブ攻撃のヒット処理
    execute rotated ~-60 0 positioned ^ ^ ^3 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~-30 0 positioned ^ ^ ^2.5 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~30 0 positioned ^ ^ ^2.5 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~60 0 positioned ^ ^ ^3 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player

# ゲージを消費
    function anemoland:sys/player/item/weapon/weapon_skill/common/consume_gauge
