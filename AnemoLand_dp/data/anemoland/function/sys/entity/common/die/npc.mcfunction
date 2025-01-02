
function anemoland:sys/entity/common/pet_owner/tag_add
tellraw @a [{"text":"* ","color":"yellow"},{"selector":"@s"},{"text": "がダウンしました。"}]

scoreboard players set @a[tag=pet_owner] npc1.timer 600

tag @a remove pet_owner