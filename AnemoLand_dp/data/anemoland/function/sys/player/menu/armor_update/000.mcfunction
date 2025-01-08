
data modify storage temp:_ data.ArmorItems_temp set value []

data modify storage temp:_ data.ArmorItems_temp append value {id:"chainmail_boots",count:1,components:{"minecraft:lore":['{"text":"装備メニューから変更可能","color":"dark_gray","italic":false}'],"minecraft:attribute_modifiers":{"show_in_tooltip":0b,modifiers:[{"id":"helmet.armor.0","type": "minecraft:armor","amount": 0.0,"operation": "add_value","slot": "any"}]},"minecraft:custom_name":'{"text":"脚装備スロット","color":"gray","italic":false}',"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_data":{menu_armor:1b},"minecraft:enchantments":{show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}}}
data modify storage temp:_ data.ArmorItems_temp append value {id:"chainmail_leggings",count:1,components:{"minecraft:lore":['{"text":"装備メニューから変更可能","color":"dark_gray","italic":false}'],"minecraft:attribute_modifiers":{"show_in_tooltip":0b,modifiers:[{"id":"chestplate.armor.0","type": "minecraft:armor","amount": 0.0,"operation": "add_value","slot": "any"}]},"minecraft:custom_name":'{"text":"腰装備スロット","color":"gray","italic":false}',"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_data":{menu_armor:1b},"minecraft:enchantments":{show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}}}
data modify storage temp:_ data.ArmorItems_temp append value {id:"chainmail_chestplate",count:1,components:{"minecraft:lore":['{"text":"装備メニューから変更可能","color":"dark_gray","italic":false}'],"minecraft:attribute_modifiers":{"show_in_tooltip":0b,modifiers:[{"id":"leggings.armor.0","type": "minecraft:armor","amount": 0.0,"operation": "add_value","slot": "any"}]},"minecraft:custom_name":'{"text":"胴装備スロット","color":"gray","italic":false}',"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_data":{menu_armor:1b},"minecraft:enchantments":{show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}}}
data modify storage temp:_ data.ArmorItems_temp append value {id:"chainmail_helmet",count:1,components:{"minecraft:lore":['{"text":"装備メニューから変更可能","color":"dark_gray","italic":false}'],"minecraft:attribute_modifiers":{"show_in_tooltip":0b,modifiers:[{"id":"boots.armor.0","type": "minecraft:armor","amount": 0.0,"operation": "add_value","slot": "any"}]},"minecraft:custom_name":'{"text":"頭装備スロット","color":"gray","italic":false}',"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_data":{menu_armor:1b},"minecraft:enchantments":{show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}}}

data modify storage temp:_ data.selected_set.head.components."minecraft:custom_data" set value {menu_armor:1b}
data modify storage temp:_ data.selected_set.chest.components."minecraft:custom_data" set value {menu_armor:1b}
data modify storage temp:_ data.selected_set.legs.components."minecraft:custom_data" set value {menu_armor:1b}
data modify storage temp:_ data.selected_set.feet.components."minecraft:custom_data" set value {menu_armor:1b}
# data modify storage temp:_ data.selected_set.head.components."minecraft:enchantments" set value {show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}
# data modify storage temp:_ data.selected_set.chest.components."minecraft:enchantments" set value {show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}
# data modify storage temp:_ data.selected_set.legs.components."minecraft:enchantments" set value {show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}
# data modify storage temp:_ data.selected_set.feet.components."minecraft:enchantments" set value {show_in_tooltip:0b,levels:{"minecraft:binding_curse":1}}

execute if data storage temp:_ data.selected_set.head.count run data modify storage temp:_ data.ArmorItems_temp[3] set from storage temp:_ data.selected_set.head
execute if data storage temp:_ data.selected_set.chest.count run data modify storage temp:_ data.ArmorItems_temp[2] set from storage temp:_ data.selected_set.chest
execute if data storage temp:_ data.selected_set.legs.count run data modify storage temp:_ data.ArmorItems_temp[1] set from storage temp:_ data.selected_set.legs
execute if data storage temp:_ data.selected_set.feet.count run data modify storage temp:_ data.ArmorItems_temp[0] set from storage temp:_ data.selected_set.feet

execute if data storage temp:_ data.player_storage.equipments.visual_armor1.head.count run function anemoland:sys/player/menu/armor_update/visual/head
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.chest.count run function anemoland:sys/player/menu/armor_update/visual/chest
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.legs.count run function anemoland:sys/player/menu/armor_update/visual/legs
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.feet.count run function anemoland:sys/player/menu/armor_update/visual/feet

execute unless data storage temp:_ data.player_storage.equipments.visual_armor1.head.count if data storage temp:_ data.player_storage.equipments.armor_visuality{head:0b} run function anemoland:sys/player/menu/armor_update/visual/head
execute unless data storage temp:_ data.player_storage.equipments.visual_armor1.chest.count if data storage temp:_ data.player_storage.equipments.armor_visuality{chest:0b} run function anemoland:sys/player/menu/armor_update/visual/chest
execute unless data storage temp:_ data.player_storage.equipments.visual_armor1.legs.count if data storage temp:_ data.player_storage.equipments.armor_visuality{legs:0b} run function anemoland:sys/player/menu/armor_update/visual/legs
execute unless data storage temp:_ data.player_storage.equipments.visual_armor1.feet.count if data storage temp:_ data.player_storage.equipments.armor_visuality{feet:0b} run function anemoland:sys/player/menu/armor_update/visual/feet

data modify entity @s ArmorItems set from storage temp:_ data.ArmorItems_temp

item replace entity @a[tag=player_check] armor.head from entity @s armor.head
item replace entity @a[tag=player_check] armor.chest from entity @s armor.chest
item replace entity @a[tag=player_check] armor.legs from entity @s armor.legs
item replace entity @a[tag=player_check] armor.feet from entity @s armor.feet

stopsound @a * item.armor.equip_chain

kill @s