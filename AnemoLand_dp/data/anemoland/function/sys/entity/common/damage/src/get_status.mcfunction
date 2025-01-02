scoreboard players operation #damage.src.attack.base temp = @s attack.base
scoreboard players set #const temp 10
scoreboard players operation #damage.src.attack.base temp *= #const temp
scoreboard players set #damage.src.attack.weapon temp 0
scoreboard players set #damage.src.attack.skill.add temp 0
