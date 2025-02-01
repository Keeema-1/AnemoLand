kill @e[tag=fishing_spot,distance=..8]
execute positioned ~0.3 ~0.3 ~0.3 align xyz positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["fishing_spot","not_killed"]}
execute positioned ~0.3 ~0.3 ~0.3 align xyz positioned ~ ~ ~ run particle end_rod ~ ~ ~ 0 0.3 0 0 10
