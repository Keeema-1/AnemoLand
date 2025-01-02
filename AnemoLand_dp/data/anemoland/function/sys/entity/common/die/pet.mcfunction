
function anemoland:sys/entity/common/pet_owner/tag_add
# tellraw @a[tag=pet_owner] [{"text":"* ペットの","color":"yellow"},{"selector":"@s"},{"text": "がダウンしました。"}]

execute if entity @s[tag=pet1] run scoreboard players set @a[tag=pet_owner] pet1.timer 600
execute if entity @s[tag=pet2] run scoreboard players set @a[tag=pet_owner] pet2.timer 600
execute if entity @s[tag=pet3] run scoreboard players set @a[tag=pet_owner] pet3.timer 600

tag @a remove pet_owner