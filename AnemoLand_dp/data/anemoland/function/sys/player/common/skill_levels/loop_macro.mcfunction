
$execute store result score #skill_level temp run data get storage temp:_ data.skill_levels.$(id)
execute store result score #skill_level_add temp run data get storage temp:_ data.armor_skill.level
scoreboard players operation #skill_level temp += #skill_level_add temp
$execute store result storage temp:_ data.skill_levels.$(id) int 1 run scoreboard players get #skill_level temp
