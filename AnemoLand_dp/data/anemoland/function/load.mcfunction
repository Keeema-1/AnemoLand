#> anemoland:load
#
# load時に実行される
#
# @within tag/function minecraft:load

# スコアボード定義

    # バージョン管理用
        scoreboard objectives add version dummy
        scoreboard players set #system version 100

    # 一時的な計算・フラグ用
        scoreboard objectives add temp dummy

    # 汎用スコア用
        scoreboard objectives add score dummy

    # エンティティid
        scoreboard objectives add entity_id dummy

    # 選択しているアイテムスロット (アイテム入れ替え検知用)
        scoreboard objectives add selected_item_slot dummy

    # 汎用タイマー
        scoreboard objectives add timer dummy

    # バトルの時間計測用
        scoreboard objectives add battle_timer dummy

    # vec 共通
        scoreboard objectives add vec0 dummy
        scoreboard objectives add vec1 dummy
        scoreboard objectives add vec2 dummy

    # プレイヤー用
        # プレイヤーログイン検知用
            scoreboard objectives add exist dummy
        # プレイヤーid
            scoreboard objectives add player_id dummy
        # 場所
            # エントランスかゲーム中など、ゲームシステム的な区切り
                scoreboard objectives add area0 dummy
            # どこのマップかなど
                scoreboard objectives add area1 dummy
            # どこのフィールドかなど
                scoreboard objectives add area2 dummy
        # スニーク時間
            scoreboard objectives add sneak_time custom:sneak_time
        # ダッシュ時間
            scoreboard objectives add sprint_time dummy
        # ジャンプ時間
            scoreboard objectives add jump_time dummy
        # 音楽管理用
            scoreboard objectives add music_time dummy
            scoreboard objectives add music_id dummy
        # メニュー管理用
            scoreboard objectives add menu0 dummy
            scoreboard objectives add menu1 dummy
        # スキル用
            # アイスヴェール
                scoreboard objectives add ice_veil_time dummy
        # スタミナ
            scoreboard objectives add max_stamina dummy
            scoreboard objectives add stamina dummy
        # 技モード・技ゲージ
            scoreboard objectives add skill_gauge dummy
            scoreboard objectives add skill_gauge_max dummy
            scoreboard objectives add skill_mode dummy
        # ドロップ・右クリック検知用
            scoreboard objectives add dropped.carrot_on_a_stick dropped:carrot_on_a_stick
            scoreboard objectives add dropped.ender_eye dropped:ender_eye
            scoreboard objectives add used.carrot_on_a_stick used:carrot_on_a_stick
            scoreboard objectives add dropped.knowledge_book dropped:knowledge_book
            scoreboard objectives add used.snowball used:snowball
            scoreboard objectives add used.ender_eye used:ender_eye
            
        # 死亡検知用
            scoreboard objectives add death_count deathCount
        # トリガー用
            scoreboard objectives add trigger trigger

    # トーク管理用
        # トーク番号
            scoreboard objectives add talk0 dummy
        # トーク中のセリフ番号
            scoreboard objectives add talk1 dummy

    # プレイヤー・モンスター共通
        # ゴールド
            scoreboard objectives add gold dummy
        # 経験値
            scoreboard objectives add xp dummy
        # ダメージ後の無敵時間
            scoreboard objectives add hurt_time dummy
        # HP
            scoreboard objectives add max_health dummy
            scoreboard objectives add health dummy
        # 攻撃力
            # 基礎攻撃力
                scoreboard objectives add attack.base dummy
            # 攻撃モーションなどの攻撃倍率
                scoreboard objectives add attack.mul dummy
            # 状態変化による攻撃倍率
                scoreboard objectives add attack.state_mul dummy
            # 基礎攻撃力+武器攻撃力
                scoreboard objectives add attack.base_total dummy
            # 属性攻撃力
                scoreboard objectives add attack.fire.base dummy
                scoreboard objectives add attack.water.base dummy
                scoreboard objectives add attack.ice.base dummy
                scoreboard objectives add attack.thunder.base dummy
        # 防御力
            # 防御値
                scoreboard objectives add armor.base dummy
            # 被ダメージ倍率
                scoreboard objectives add armor.mul dummy
            # 属性被ダメージ倍率
                scoreboard objectives add armor.fire.mul dummy
                scoreboard objectives add armor.water.mul dummy
                scoreboard objectives add armor.ice.mul dummy
                scoreboard objectives add armor.thunder.mul dummy
        # アクション
            # アクションの種類
                scoreboard objectives add action0 dummy
            # サブアクションの種類
                scoreboard objectives add action1 dummy
            # アクションの方向
                scoreboard objectives add action_way dummy
            # アクションの方向2
                scoreboard objectives add action_way2 dummy
            # アクションの時間
                scoreboard objectives add action_time dummy
            # 連続攻撃などのカウント
                scoreboard objectives add action_counter dummy

    # モンスター用
        # レベル
            scoreboard objectives add level dummy
        # ドロップボーナス
            scoreboard objectives add drop_bonus dummy
        # 怒り残り時間/クールタイム
            scoreboard objectives add anger.time dummy
        # 怒り移行までのHP
            scoreboard objectives add anger.damage dummy

    scoreboard objectives add pet1.timer dummy
    scoreboard objectives add pet2.timer dummy
    scoreboard objectives add pet3.timer dummy
    scoreboard objectives add pet_boss1.timer dummy
    scoreboard objectives add npc1.timer dummy
    scoreboard objectives add npc1.id dummy

# チーム
    # プレイヤー用
        team add player
        team modify player friendlyFire false
        team modify player color aqua
        team modify player seeFriendlyInvisibles false
        team modify player nametagVisibility always
        team modify player collisionRule pushOwnTeam
    # プレイヤーの味方用
        team add player_side
        team modify player_side friendlyFire false
        team modify player_side color aqua
        team modify player_side seeFriendlyInvisibles false
        team modify player_side nametagVisibility never
        team modify player_side collisionRule pushOwnTeam
    # NoCollision用
        team add no_collision
        team modify no_collision collisionRule never

# ゲームルール
    gamerule disableRaids true
    gamerule doFireTick false
    gamerule doInsomnia false
    gamerule doMobSpawning false
    gamerule doPatrolSpawning false
    gamerule doTraderSpawning false
    gamerule doVinesSpread false
    gamerule doWardenSpawning false
    gamerule doWeatherCycle false
    gamerule fallDamage false
    gamerule forgiveDeadPlayers false
    gamerule keepInventory true
    gamerule mobGriefing false
    gamerule randomTickSpeed 0
    gamerule spawnRadius 0
    # gamerule sendCommandFeedback false
    defaultgamemode adventure
    setworldspawn 0 -6 0

scoreboard players enable @a trigger

scoreboard players set #beta1.random_event_cycle score 3

forceload add 0 0

tellraw @a "AnemoLand: Reloaded"
