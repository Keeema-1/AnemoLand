
# 属性被ダメージ率
# 省略時は物理と同率
    scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.mul temp
    execute if score @s armor.water.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.water.mul temp

scoreboard players set #attack.elem.mul temp 10

scoreboard players operation #damage.elem.water temp = #damage.common temp
# 属性攻撃値
    scoreboard players operation #damage.elem.water temp *= #damage.src.attack.water.base temp
# 属性攻撃倍率
    scoreboard players operation #damage.elem.water temp *= #attack.elem.mul temp
# 属性被ダメージ率
    scoreboard players operation #damage.elem.water temp *= #armor.elem.mul temp
scoreboard players set #const temp 10000
scoreboard players operation #damage.elem.water temp /= #const temp

scoreboard players operation #damage.elem temp += #damage.elem.water temp

tellraw @a [{"text":" 🌊","color":"blue"},{"score":{"name":"#damage.elem.water","objective":"temp"},"color":"aqua"}]
