
# 属性被ダメージ率
    scoreboard players set #armor.elem.mul temp 100
    execute if score @s armor.fire.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = @s armor.fire.mul

# 属性攻撃力
    scoreboard players operation #damage.elem.fire temp = #damage.src.attack.fire.base temp
# 属性被ダメージ率
    scoreboard players operation #damage.elem.fire temp *= #armor.elem.mul temp
# /100
    scoreboard players set #temp temp 100
    scoreboard players operation #damage.elem.fire temp /= #temp temp

scoreboard players operation #damage.elem temp += #damage.elem.fire temp

# tellraw @a [{"text":" 🔥","color":"red"},{"score":{"name":"#damage.elem.fire","objective":"temp"},"color":"red"}]
