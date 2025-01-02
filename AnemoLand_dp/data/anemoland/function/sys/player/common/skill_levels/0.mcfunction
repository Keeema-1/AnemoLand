
function anemoland:sys/player/common/player_storage/read

data modify storage temp:_ data.skill_levels set value {}

data modify storage temp:_ data.armor_skills set from storage temp:_ data.player_storage.equipments.active_armor.head.components."minecraft:custom_data".status.skills
function anemoland:sys/player/common/skill_levels/loop

data modify storage temp:_ data.armor_skills set from storage temp:_ data.player_storage.equipments.active_armor.chest.components."minecraft:custom_data".status.skills
function anemoland:sys/player/common/skill_levels/loop

data modify storage temp:_ data.armor_skills set from storage temp:_ data.player_storage.equipments.active_armor.legs.components."minecraft:custom_data".status.skills
function anemoland:sys/player/common/skill_levels/loop

data modify storage temp:_ data.armor_skills set from storage temp:_ data.player_storage.equipments.active_armor.feet.components."minecraft:custom_data".status.skills
function anemoland:sys/player/common/skill_levels/loop

# tellraw @a {"storage":"temp:_","nbt":"data.skill_levels"}