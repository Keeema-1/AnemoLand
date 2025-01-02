kill @e[tag=chest_menu,tag=power_up,distance=..2]
execute positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.25 ~0.5 run summon text_display ~ ~ ~ {text:'{"text":"装備・ペットの強化"}',Tags:["chest_menu","power_up"],billboard:"center"}
# data modify block ~ ~-1 ~ CustomName set value '{"text":"装備の強化"}'
data modify block ~ ~-1 ~ CustomName set value '"装備・ペットの強化"'
