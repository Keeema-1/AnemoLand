kill @e[tag=fishing_center,distance=..32]
execute positioned ~0.3 ~0.3 ~0.3 align xyz positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["fishing_center","not_killed"]}
execute positioned ~0.3 ~0.3 ~0.3 align xyz positioned ~ ~ ~ run particle end_rod ~ ~ ~ 0 0.3 0 0 10
