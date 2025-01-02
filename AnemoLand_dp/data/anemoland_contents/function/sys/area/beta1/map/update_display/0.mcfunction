data remove storage temp:_ data.field_display_data
function anemoland_contents:sys/area/beta1/map/update_display/00
execute unless data storage temp:_ data.field_display_data{display_update_flag:1b} run return 1
data modify storage temp:_ data.field_display_macro.field_name set from storage temp:_ data.field_display_data.display_name
data modify storage temp:_ data.field_display_macro.bonus_display_base set value ""
data modify storage temp:_ data.field_display_macro.bonus_display_gold set value ""
data modify storage temp:_ data.field_display_macro.bonus_display_xp set value ""
data modify storage temp:_ data.field_display_macro.bonus_display_drop set value ""
execute if data storage temp:_ data.field_display_data.event.bonus unless data storage temp:_ data.field_display_data.event.bonus{gold:0,xp:0,drop:0} run data modify storage temp:_ data.field_display_macro.bonus_display_base set value ",{\"text\":\"\\\\n\\\\n【\",\"color\":\"aqua\"},{\"translate\":\"common.bonus\",\"color\":\"aqua\"},{\"text\":\"】\",\"color\":\"aqua\"}"
execute if data storage temp:_ data.field_display_data.event.bonus{gold:1} run data modify storage temp:_ data.field_display_macro.bonus_display_gold set value ",{\"text\":\"\\\\n\"},{\"translate\":\"common.gold\",\"color\":\"aqua\"},{\"text\":\" +50%\",\"color\":\"aqua\"}"
execute if data storage temp:_ data.field_display_data.event.bonus{gold:2} run data modify storage temp:_ data.field_display_macro.bonus_display_gold set value ",{\"text\":\"\\\\n\"},{\"translate\":\"common.gold\",\"color\":\"aqua\"},{\"text\":\" +100%\",\"color\":\"aqua\"}"
execute if data storage temp:_ data.field_display_data.event.bonus{xp:1} run data modify storage temp:_ data.field_display_macro.bonus_display_xp set value ",{\"text\":\"\\\\n\"},{\"translate\":\"common.gold\",\"color\":\"aqua\"},{\"text\":\" +50%\",\"color\":\"aqua\"}"
execute if data storage temp:_ data.field_display_data.event.bonus{xp:2} run data modify storage temp:_ data.field_display_macro.bonus_display_xp set value ",{\"text\":\"\\\\n\"},{\"translate\":\"common.gold\",\"color\":\"aqua\"},{\"text\":\" +100%\",\"color\":\"aqua\"}"
execute if data storage temp:_ data.field_display_data.event.bonus{drop:1} run data modify storage temp:_ data.field_display_macro.bonus_display_drop set value ",{\"text\":\"\\\\n\"},{\"translate\":\"common.gold\",\"color\":\"aqua\"},{\"text\":\" +50%\",\"color\":\"aqua\"}"
execute if data storage temp:_ data.field_display_data.event.bonus{drop:2} run data modify storage temp:_ data.field_display_macro.bonus_display_drop set value ",{\"text\":\"\\\\n\"},{\"translate\":\"common.gold\",\"color\":\"aqua\"},{\"text\":\" +100%\",\"color\":\"aqua\"}"
function anemoland_contents:sys/event/display/branch
function anemoland_contents:sys/area/beta1/map/update_display/01
