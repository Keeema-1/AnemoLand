#> anemoland:sys/entity/common/damage/dst/apply
#
# モンスターが受けるをダメージ計算して反映
#
# @input
#   score #damage.src.attack.base temp
#       攻撃元の攻撃力
#   score #damage.src.attack.skill.add temp
#       攻撃元の攻撃力のスキルによる加算値
#   score #damage.src.attack.mul temp
#       攻撃元の攻撃力の倍率
#   score #health temp
#       攻撃対象のHealth減少量、チャージ率を反映
#   score #damage.dst.armor.mul
#       攻撃対象の防御率
#
# @within function anemoland_contents:sys/entity/mob/*/damaged/common

scoreboard players operation #damage temp = #damage.src.attack.base temp
scoreboard players operation #damage temp += #damage.src.attack.skill.add temp
scoreboard players operation #damage temp *= #damage.src.attack.mul temp
scoreboard players operation #damage temp *= #health temp
scoreboard players operation #damage temp *= #damage.dst.armor.mul temp
scoreboard players set #const temp 1000000
scoreboard players operation #damage temp /= #const temp

# tellraw @a [{"text":"[物理] "},{"score":{"name": "#damage","objective": "temp"}}]

# tellraw @a [{"text":"[物理] Base:"},{"score":{"name": "#damage.src.attack.base","objective": "temp"}},{"text":" / Mul:"},{"score":{"name": "#damage.src.attack.mul","objective": "temp"}},{"text":" / Skill:+"},{"score":{"name": "#damage.src.attack.skill.add","objective": "temp"}},{"text":" / Armor Mul:"},{"score":{"name": "#damage.dst.armor.mul","objective": "temp"}},{"text":" / Damage:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]

execute if data storage temp:_ data.elemental_attack run function anemoland:sys/entity/common/damage/dst/elemental_attack/0

# execute if score #weapon_skill_flag temp matches 1 run tellraw @a [{"text":"HEALTH:","color": "yellow"},{"score":{"name": "#health","objective": "temp"}},{"text":"  ATK BASE:"},{"score":{"name": "#damage.src.attack.base","objective": "temp"}},{"text":" / WEAPON:"},{"score":{"name": "#damage.src.attack.weapon","objective": "temp"}},{"text":" / MUL:"},{"score":{"name": "#damage.src.attack.mul","objective": "temp"}},{"text":" / DAMAGE:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]
# execute unless score #weapon_skill_flag temp matches 1 run tellraw @a [{"text":"HEALTH:"},{"score":{"name": "#health","objective": "temp"}},{"text":"  ATK BASE:"},{"score":{"name": "#damage.src.attack.base","objective": "temp"}},{"text":" / WEAPON:"},{"score":{"name": "#damage.src.attack.weapon","objective": "temp"}},{"text":" / MUL:"},{"score":{"name": "#damage.src.attack.mul","objective": "temp"}},{"text":" / DAMAGE:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]

# tellraw @a [{"text":"  ATK BASE:"},{"score":{"name": "#damage.src.attack.base","objective": "temp"}},{"text":" / MUL:"},{"score":{"name": "#damage.src.attack.mul","objective": "temp"}},{"text":" / SKILL_ADD:"},{"score":{"name": "#damage.src.attack.skill.add","objective": "temp"}},{"text":" / ARMOR MUL:"},{"score":{"name": "#damage.dst.armor.mul","objective": "temp"}},{"text":" / DAMAGE:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]
# tellraw @a [{"text":"Total Damage:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]

scoreboard players operation @s health += #damage temp
scoreboard players operation #health temp = @s health
execute if score @s anger.damage matches 1.. run scoreboard players operation @s anger.damage += #damage temp

scoreboard players set #const temp -1
# scoreboard players operation #health temp /= #const temp
scoreboard players operation #damage temp *= #const temp

scoreboard players set #const temp 9
scoreboard players operation #health.ratio temp = @s health
scoreboard players operation #health.ratio temp *= #const temp
scoreboard players operation #health.ratio temp /= @s max_health

execute if entity @s[tag=pet] run function anemoland:sys/entity/common/damage/dst/health_display/pet
execute if entity @s[tag=enemy] run function anemoland:sys/entity/common/damage/dst/health_display/enemy

function anemoland:sys/entity/common/damage/dst/damage_display/0
