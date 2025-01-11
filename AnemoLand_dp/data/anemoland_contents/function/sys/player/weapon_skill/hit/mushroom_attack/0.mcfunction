# 武器技スコアをセット
# 数tickにわたって処理される技はスコアを使用して管理する
    scoreboard players reset @s action0
    scoreboard players reset @s action1
    scoreboard players reset @s action_time

# パーティクルやサウンド
    execute at @s anchored eyes positioned ^ ^ ^2 run particle crit ~ ~ ~ 0.5 0.5 0.5 1 10
    playsound entity.player.attack.crit player @a ~ ~ ~ 1 1
    playsound entity.player.attack.crit player @a ~ ~ ~ 1 1

# メイン攻撃のステータスを取得
    execute store result score #damage.src.attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.mul 10

# メイン攻撃のヒット処理
    execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,limit=1,dx=5,dy=5,dz=5] run function anemoland_contents:sys/entity/branch/damaged_by_player

# サブ攻撃のステータスを取得
    execute store result score #attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].physical.base 10
    execute store result score #attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].physical.mul 10

# マッシュルームファングを召喚
    execute rotated ~ 0 positioned ^ ^ ^1 positioned over motion_blocking run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/skill/0
    execute rotated ~ 0 positioned ^-1.5 ^ ^3 positioned over motion_blocking run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/skill/0
    execute rotated ~ 0 positioned ^1.5 ^ ^3 positioned over motion_blocking run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/skill/0
    execute rotated ~ 0 positioned ^ ^ ^5 positioned over motion_blocking run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/skill/0
    execute rotated ~ 0 positioned ^-3 ^ ^5 positioned over motion_blocking run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/skill/0
    execute rotated ~ 0 positioned ^3 ^ ^5 positioned over motion_blocking run function anemoland_contents:sys/entity/bullet/mushroom_fang/summon/skill/0

# ゲージを消費
    function anemoland:sys/player/item/weapon/weapon_skill/common/consume_gauge
