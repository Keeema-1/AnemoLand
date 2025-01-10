
# 属性被ダメージ率
    scoreboard players set #armor.elem.mul temp 100
    execute if score @s armor.ice.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = @s armor.ice.mul

# 共通ダメージ
    scoreboard players operation #damage.elem.ice temp = #damage.common temp
# 属性攻撃力
    scoreboard players operation #damage.elem.ice temp *= #damage.src.attack.ice.base temp
# 属性被ダメージ率
    scoreboard players operation #damage.elem.ice temp *= #armor.elem.mul temp
# /100
    scoreboard players set #temp temp 1000
    scoreboard players operation #damage.elem.ice temp /= #temp temp

scoreboard players operation #damage.elem temp += #damage.elem.ice temp

# tellraw @a [{"text":" ❄","color":"aqua"},{"score":{"name":"#damage.elem.ice","objective":"temp"},"color":"aqua"}]
