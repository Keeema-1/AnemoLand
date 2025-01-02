kill @e[tag=arena_display,distance=..8]

execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~-1.5 ~3 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob1_type"],billboard:"fixed",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.25f,1.25f,1.25f]},background:0}
execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~-0.5 ~3 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob2_type"],billboard:"fixed",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.25f,1.25f,1.25f]},background:0}
execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~0.5 ~3 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob3_type"],billboard:"fixed",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.25f,1.25f,1.25f]},background:0}
execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~1.5 ~3 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob4_type"],billboard:"fixed",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.25f,1.25f,1.25f]},background:0}

execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~-1.5 ~2 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob1_level"],billboard:"fixed",background:0}
execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~-0.5 ~2 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob2_level"],billboard:"fixed",background:0}
execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~0.5 ~2 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob3_level"],billboard:"fixed",background:0}
execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~1.5 ~2 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","mob4_level"],billboard:"fixed",background:0}

execute positioned ~0.5 ~0.5 ~0.5 align xyz positioned ~ ~3.5 ~0.5 run summon text_display ~ ~ ~ {text:'""',Tags:["arena_display","title"],billboard:"fixed",background:0}
