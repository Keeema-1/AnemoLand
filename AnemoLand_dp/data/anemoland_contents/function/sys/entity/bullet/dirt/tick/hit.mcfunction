function anemoland_contents:sys/entity/bullet/dirt/attack
execute on passengers run kill @s
kill @s
particle block{block_state:{Name:"dirt"}} ^ ^ ^ 0.5 0.5 0.5 1 50