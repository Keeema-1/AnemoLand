tag @s add pet
scoreboard players operation #player_id temp = @p[tag=player_check] player_id
function anemoland:sys/entity/common/summon/pet
scoreboard players set @s attack.mul 10
scoreboard players set @s armor.mul 100
