
scoreboard players operation #damage temp = #damage.src.attack.base temp
scoreboard players operation #damage temp *= #damage.src.attack.mul temp

# tellraw @a [{"score":{"name": "#damage.src.attack.base","objective": "temp"},"color": "red"}]
# tellraw @a [{"score":{"name": "#damage.src.attack.mul","objective": "temp"},"color": "red"}]

# tellraw @a [{"text":"DAMAGE:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]

scoreboard players set #const temp 10
scoreboard players operation #damage temp *= #const temp
execute store result score #damage.dst.armor.base temp run attribute @s armor get 100
scoreboard players operation #damage temp /= #damage.dst.armor.base temp

# tellraw @a [{"text":" / 物理:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]

execute if data storage temp:_ data.elemental_attack.fire run function anemoland:sys/player/common/damage/dst/elemental_attack/fire
execute if data storage temp:_ data.elemental_attack.water run function anemoland:sys/player/common/damage/dst/elemental_attack/water
execute if data storage temp:_ data.elemental_attack.ice run function anemoland:sys/player/common/damage/dst/elemental_attack/ice
execute if data storage temp:_ data.elemental_attack.thunder run function anemoland:sys/player/common/damage/dst/elemental_attack/thunder

# ice_veil
    execute if score @s ice_veil_time matches 200.. run function anemoland:sys/player/common/damage/dst/skill/ice_veil

# tellraw @a [{"text":" / DAMAGE:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]

# tellraw @a [{"text":"  ATK BASE:"},{"score":{"name": "#damage.src.attack.base","objective": "temp"}},{"text":" / MUL:"},{"score":{"name": "#damage.src.attack.mul","objective": "temp"}},{"text":" / DAMAGE:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]
# execute unless score #weapon_skill_flag temp matches 1 run tellraw @a [{"text":"HEALTH:"},{"score":{"name": "#health","objective": "temp"}},{"text":"  ATK BASE:"},{"score":{"name": "#damage.src.attack.base","objective": "temp"}},{"text":" / WEAPON:"},{"score":{"name": "#damage.src.attack.weapon","objective": "temp"}},{"text":" / MUL:"},{"score":{"name": "#damage.src.attack.mul","objective": "temp"}},{"text":" / DAMAGE:","color": "red"},{"score":{"name": "#damage","objective": "temp"},"color": "red"}]

execute store result storage temp:_ data.player_damage.value float 0.1 run scoreboard players get #damage temp

function anemoland:sys/player/common/damage/dst/apply_ with storage temp:_ data.player_damage

# damage @s 1

# scoreboard players set $strength hb.Motion 1000
# execute if score #player_is_leftside temp matches 1 rotated ~ -10 as @a[tag=hostile_target] run function #p_motion:looking

scoreboard players set @s hurt_time 20
