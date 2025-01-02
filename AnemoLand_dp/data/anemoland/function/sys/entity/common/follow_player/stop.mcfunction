
execute facing entity @a[tag=pet_owner,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# execute unless predicate anemoland:is_on_ground run 
data modify entity @s Motion set value [0.0d,-0.3d,0.0d]
