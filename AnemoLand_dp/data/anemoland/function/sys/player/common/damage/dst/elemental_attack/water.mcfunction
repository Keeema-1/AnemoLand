
# 属性被ダメージ率
    scoreboard players set #armor.elem.mul temp 100
    execute if score @s armor.water.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = @s armor.water.mul

# 属性攻撃力
    scoreboard players operation #damage.elem.water temp = #damage.src.attack.water.base temp
# 属性被ダメージ率
    scoreboard players operation #damage.elem.water temp *= #armor.elem.mul temp
# /100
    scoreboard players set #temp temp 100
    scoreboard players operation #damage.elem.water temp /= #temp temp

scoreboard players operation #damage.elem temp += #damage.elem.water temp

# tellraw @a [{"text":" 🌊","color":"blue"},{"score":{"name":"#damage.elem.water","objective":"temp"},"color":"blue"}]
