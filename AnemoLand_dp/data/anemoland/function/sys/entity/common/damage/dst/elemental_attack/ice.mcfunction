
# 属性被ダメージ率
# 省略時は物理と同率
    scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.mul temp
    execute if score @s armor.ice.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.ice.mul temp

scoreboard players set #attack.elem.mul temp 10

scoreboard players operation #damage.elem.ice temp = #damage.common temp
# 属性攻撃値
    scoreboard players operation #damage.elem.ice temp *= #damage.src.attack.ice.base temp
# 属性攻撃倍率
    scoreboard players operation #damage.elem.ice temp *= #attack.elem.mul temp
# 属性被ダメージ率
    scoreboard players operation #damage.elem.ice temp *= #armor.elem.mul temp
scoreboard players set #const temp 10000
scoreboard players operation #damage.elem.ice temp /= #const temp

scoreboard players operation #damage.elem temp += #damage.elem.ice temp

# tellraw @a [{"text":" ❄","color":"aqua"},{"score":{"name":"#damage.elem.ice","objective":"temp"},"color":"aqua"}]
