# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$data merge entity $(bone_right_leg) { transformation: [-1.6268815541851667f,1.4945107712539065f,1.17033925135326f,-0.3968563878643539f,1.8315079879665226f,1.640911549014254f,0.4505416499353406f,-0.9765855916999443f,-0.4988335380333546f,1.150585434862485f,-2.1627108587176957f,0.12689046029338047f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_leg) { transformation: [-0.7472634834473711f,2.2921679008370726f,-0.6614859036126673f,0.14087147936253597f,2.3208754802453684f,0.5379552290917873f,-0.7577210414714833f,-1.7328737082105836f,-0.5523896192923321f,-0.8405774716615769f,-2.2887322304352478f,0.26024440898785905f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_tail) { transformation: [-1.653765892595312f,1.87274322924589f,0.08883225654066124f,0.2879831083947219f,1.820156958937302f,1.5753181754210284f,0.6748342692989687f,-1.2578131224050377f,0.44954089616022996f,0.5110826190566813f,-2.4055576358045596f,-0.9341444592513917f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_jaw) { transformation: [0.07710664747601265f,-1.1914263196513901f,2.196487625678085f,-1.758771355721944f,2.4965862570496586f,0.12943390053184775f,-0.017433488001181136f,-1.5440928796846536f,-0.1054116977654071f,2.1940260231444517f,1.193791516027468f,3.373205768813287f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_head) { transformation: [0.07710664747601265f,1.017296405830492f,2.282358996214086f,-1.080453163040854f,2.4965862570496586f,0.06496345031127601f,-0.1132996524020703f,-1.573929603547639f,-0.1054116977654071f,2.2827369039834657f,-1.013903644912177f,3.1627252105600157f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck2) { transformation: [-0.09404374208606124f,1.8803510120982612f,1.6448209160499796f,-0.5114328943454486f,2.4181366531082293f,-0.3449279438689182f,0.5325784828857544f,-1.4343937885215672f,0.6275116743686782f,1.6109949673538413f,-1.8058029553889914f,2.7102971762440484f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck1) { transformation: [-0.7425990652235921f,2.0886465923368873f,1.1558988020793846f,-0.16708146236909432f,2.3841582526440006f,0.5882017318502719f,0.46883701752085033f,-1.2866309745579367f,0.11973326471182602f,1.241601439660832f,-2.166584826484668f,1.903713633369143f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_front_body) { transformation: [-1.3340433101602547f,2.0342133911457876f,0.5764584338005865f,0.03199824305799203f,2.1137781672932983f,1.2678158544104217f,0.41783348211908106f,-1.135874839717756f,0.04764772912588999f,0.7103652853206776f,-2.3964788451643844f,0.7896190443748492f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_back_body) { transformation: [-1.4339409792717066f,2.0478801888697604f,-2.3021380393359167e-7f,5.35782974626967e-17f,2.016768310695038f,1.41215616137082f,-0.43412044052164955f,-1.375f,-0.355610529851943f,-0.24900142155655333f,-2.462019383173341f,-0.4375f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
execute on vehicle unless entity @s[tag=aj.transforms_only] positioned ^-1.0239400657 ^-2.0268130256 ^-0.0052468663 rotated ~359.9999946425 ~-9.9999999152 run function animated_java:squirrel_head/animations/die/zzz/frames/zzz/21
data modify entity @s data merge value {"locators":{"tail":{"posx":-1.1962581859190349,"posy":-2.0562477844513505,"posz":-3.161552980011126,"roty":2.1148533851891216,"rotx":15.660322113873326},"tail2":{"posx":-0.889534958705761,"posy":-2.098292761209392,"posz":-1.862946171035718,"roty":2.1148533851891216,"rotx":15.660322113873326},"neck":{"posx":-1.171765927983453,"posy":-1.5848855364298111,"posz":1.6114667793427784,"roty":28.080452051731186,"rotx":10.808953184631118},"head":{"posx":-1.973346173848292,"posy":-1.576512145468541,"posz":2.4484256889483555,"roty":66.04753483463625,"rotx":-2.5975264513424783}},"cameras":{}}