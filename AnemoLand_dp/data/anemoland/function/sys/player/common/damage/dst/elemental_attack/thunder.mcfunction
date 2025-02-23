
# 属性被ダメージ率
    scoreboard players set #armor.elem.mul temp 100
    execute if score @s armor.thunder.mul matches 0.. run scoreboard players operation #armor.elem.mul temp = @s armor.thunder.mul

# 共通ダメージ
    scoreboard players operation #damage.elem.thunder temp = #damage.common temp
# 属性攻撃力 (*10)
    scoreboard players operation #damage.elem.thunder temp *= #damage.src.attack.thunder.base temp
# (/100)
    scoreboard players set #temp temp 100
    scoreboard players operation #damage.elem.thunder temp /= #temp temp
# 属性被ダメージ率 (*100)
    scoreboard players operation #damage.elem.thunder temp *= #armor.elem.mul temp
# (/1000)
    scoreboard players set #temp temp 1000
    scoreboard players operation #damage.elem.thunder temp /= #temp temp

scoreboard players operation #damage.elem temp += #damage.elem.thunder temp

# tellraw @a [{"text":" ⚡","color":"yellow"},{"score":{"name":"#damage.elem.thunder","objective":"temp"},"color":"yellow"}]
