
execute unless data storage temp:_ data.armor_skills[0] run return 1

data modify storage temp:_ data.armor_skill set from storage temp:_ data.armor_skills[-1]

function anemoland:sys/player/common/skill_levels/loop_macro with storage temp:_ data.armor_skill

data remove storage temp:_ data.armor_skills[-1]

function anemoland:sys/player/common/skill_levels/loop
