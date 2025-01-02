execute if score @s sneak_time matches 21.. run return 1
tellraw @a {"text":"行き先を選択してください","color":"yellow"}
tellraw @a [{"text":"[","color":"light_purple"},{"text":"■","color":"yellow"},{"text":"エントランス]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger trigger set 10000"}}]
# tellraw @a [{"text":"[","color":"light_purple"},{"text":"■","color":"green"},{"text":"フアス島]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger trigger set 10001"}}]
# tellraw @a [{"text":"[","color":"light_purple"},{"text":"■","color":"white"},{"text":"デモプレイ1]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger trigger set 10002"}}]
# tellraw @a {"text":"[フアス島]","color":"light_purple"}
