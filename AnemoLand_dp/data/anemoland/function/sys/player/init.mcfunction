#> anemoland:sys/player/init
#
# プレイヤーの初期化処理
#
# @within
#    function anemoland:sys/player/first_login

# チーム・タグ
    team join player
    tag @s add player_side

# スコアの初期化
    scoreboard players set @s skill_gauge_max 300
    scoreboard players set @s max_stamina 10000
    scoreboard players set @s attack.base 10
    scoreboard players set @s attack.mul 10
    scoreboard players set @s gold 100

# attributeの初期化
    attribute @s attack_damage base set 10
    attribute @s attack_speed base set 2.0
    attribute @s armor base set 1.0

# プレイヤー別のストレージを初期化
    execute store result storage temp:_ data.player_id.id int 1 run scoreboard players get @s player_id
    function anemoland:sys/player/init_player_storage with storage temp:_ data.player_id

# トリガーを許可
    scoreboard players enable @s trigger

# 初期アイテム
    clear @s
    loot give @s loot anemoland_contents:item/weapon/wooden_sword/1
    give @s cooked_beef 16

# レシピの初期化
    recipe take @s *
