
# 属性被ダメージ率
# 省略時は物理と同率
    scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.mul temp
    execute if score @s armor.thunder.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = #damage.dst.armor.thunder.mul temp

scoreboard players set #attack.elem.mul temp 10

scoreboard players operation #damage.elem.thunder temp = #damage.common temp
# 属性攻撃値
    scoreboard players operation #damage.elem.thunder temp *= #damage.src.attack.thunder.base temp
# 属性攻撃倍率
    scoreboard players operation #damage.elem.thunder temp *= #attack.elem.mul temp
# 属性被ダメージ率
    scoreboard players operation #damage.elem.thunder temp *= #armor.elem.mul temp
scoreboard players set #const temp 10000
scoreboard players operation #damage.elem.thunder temp /= #const temp

scoreboard players operation #damage.elem temp += #damage.elem.thunder temp

# tellraw @a [{"text":" ⚡️","color":"yellow"},{"score":{"name":"#damage.elem.thunder","objective":"temp"},"color":"aqua"}]
