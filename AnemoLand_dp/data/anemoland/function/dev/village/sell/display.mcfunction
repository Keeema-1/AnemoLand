kill @e[tag=chest_menu,tag=sell,distance=..2]
execute positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.25 ~0.5 run summon text_display ~ ~ ~ {text:'{"text":"アイテムの売却"}',Tags:["chest_menu","sell"],billboard:"center"}
# data modify block ~ ~-1 ~ CustomName set value '{"text":"装備の強化"}'
data modify block ~ ~-1 ~ CustomName set value '"アイテムの売却"'
