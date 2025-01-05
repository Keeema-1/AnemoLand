
# ドロップアイテムの武器技を取得
    data modify storage temp:_ data.weapon_skills set from storage temp:_ data.dropped_item.components."minecraft:custom_data".status.weapon_skills

# スキルモード切り替え処理
    function anemoland:sys/player/common/change_skill_mode/0
