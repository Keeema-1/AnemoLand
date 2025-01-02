kill @e[tag=chest_menu,tag=custom_battle,distance=..2]
execute positioned ~ ~0.5 ~ align xyz positioned ~0.5 ~0.25 ~0.5 run summon text_display ~ ~ ~ {text:'{"text":"カスタムバトルの設定"}',Tags:["chest_menu","custom_battle"],billboard:"center"}
data modify block ~ ~-0.5 ~ CustomName set value '"カスタムバトルの設定"'
