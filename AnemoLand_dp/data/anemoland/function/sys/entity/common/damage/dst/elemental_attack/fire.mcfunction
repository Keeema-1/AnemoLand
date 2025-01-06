
# 属性被ダメージ率
# 省略時は物理と同率
    scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.mul temp
    execute if score @s armor.fire.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.fire.mul temp

scoreboard players set #attack.elem.mul temp 10

scoreboard players operation #damage.elem.fire temp = #damage.common temp
# 属性攻撃値
    scoreboard players operation #damage.elem.fire temp *= #damage.src.attack.fire.base temp
# 属性攻撃倍率
    scoreboard players operation #damage.elem.fire temp *= #attack.elem.mul temp
# 属性被ダメージ率
    scoreboard players operation #damage.elem.fire temp *= #armor.elem.mul temp
scoreboard players set #const temp 10000
scoreboard players operation #damage.elem.fire temp /= #const temp

scoreboard players operation #damage.elem temp += #damage.elem.fire temp

# tellraw @a [{"text":" 🔥","color":"red"},{"score":{"name":"#damage.elem.fire","objective":"temp"},"color":"red"}]
