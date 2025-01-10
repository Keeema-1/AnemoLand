
execute store result score #random temp run random value 0..7
execute if score #random temp matches 0 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"large_ball",colors:[3932415]}]}}}}
execute if score #random temp matches 1 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"large_ball",colors:[16711680]}]}}}}
execute if score #random temp matches 2 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"large_ball",colors:[16751872]}]}}}}
execute if score #random temp matches 3 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"large_ball",colors:[16514816]}]}}}}
execute if score #random temp matches 4 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"large_ball",colors:[611830]}]}}}}
execute if score #random temp matches 5 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"burst",colors:[16732415]}]}}}}
execute if score #random temp matches 6 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"burst",colors:[65344]}]}}}}
execute if score #random temp matches 7 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{fireworks:{explosions:[{shape:"burst",colors:[12189929]}]}}}}

scoreboard players set @s action_time 100