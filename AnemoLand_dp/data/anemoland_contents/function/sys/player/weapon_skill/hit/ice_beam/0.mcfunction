# 武器技スコアをセット
# 数tickにわたって処理される技はスコアを使用して管理する
    scoreboard players reset @s action0
    scoreboard players reset @s action1
    scoreboard players reset @s action_time

# モデルを召喚
    execute positioned ~ ~1.5 ~ positioned ^ ^ ^-1 run function animated_java:ice_beam/summon {args:{variant:"default",animation:"default",start_animation:true}}

# パーティクルやサウンド
    execute positioned ^ ^ ^4 run particle wax_off ~ ~ ~ 1 1 1 0 1
    execute positioned ^ ^ ^4 run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1
    execute positioned ^ ^ ^8 run particle wax_off ~ ~ ~ 1 1 1 0 1
    execute positioned ^ ^ ^8 run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1
    execute positioned ^ ^ ^12 run particle wax_off ~ ~ ~ 1 1 1 0 1
    execute positioned ^ ^ ^12 run particle dust{color:[1.0, 1.0, 1.0], scale:1.0} ~ ~ ~ 1 1 1 0 1
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1

    playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
    playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1

# メイン攻撃のステータスを取得
    execute store result score #damage.src.attack.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[0].physical.mul 10

# メイン攻撃のヒット処理
    execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-3 ~-3 as @e[type=#anemoland:mob_core,tag=attack_victim,tag=enemy,limit=1,dx=5,dy=5,dz=5] run function anemoland_contents:sys/entity/branch/damaged_by_player

# メイン攻撃のステータスを取得
    execute store result score #damage.src.attack.ice.base temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].ice.base 10
    execute store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].ice.mul 10
    execute if score @s ice_veil_time matches 200.. store result score #damage.src.attack.mul temp run data get storage temp:_ data.weapon_skill_data.attack_damage[1].ice.mul 12

# メイン攻撃のヒット処理
    execute rotated ~ ~ positioned ^ ^ ^2 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ ~ positioned ^ ^ ^4 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ ~ positioned ^ ^ ^6 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ ~ positioned ^ ^ ^8 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ ~ positioned ^ ^ ^10 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ ~ positioned ^ ^ ^12 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ ~ positioned ^ ^ ^14 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player
    execute rotated ~ ~ positioned ^ ^ ^16 positioned ~-0.5 ~ ~-0.5 as @e[type=#anemoland:mob_core,tag=enemy,dx=0,dy=2,dz=0] run function anemoland_contents:sys/entity/branch/damaged_by_player

# ゲージを消費
    function anemoland:sys/player/item/weapon/weapon_skill/common/consume_gauge
