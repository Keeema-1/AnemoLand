# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$data merge entity $(bone_right_leg) { transformation: [-2.086736306408575f,1.1843965734337074f,0.7019518105645084f,-0.48591384656962894f,1.373219081537693f,1.8821504097923143f,0.9065203742991106f,-0.6075563727611246f,-0.09899970513629519f,1.1422410392544637f,-2.2215950275929703f,0.16304487618179664f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_leg) { transformation: [-1.9380409087432748f,1.5087085879937798f,-0.4666860106660113f,0.3362510037233824f,1.548581112634133f,1.6706764979355675f,-1.0299206653129065f,-1.051337160638043f,-0.3096675211099349f,-1.087491809513784f,-2.2296788088444632f,0.24056791310638903f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_tail) { transformation: [-1.9911960149672314f,1.1683039132689823f,-0.9592728476398147f,0.16874879247870994f,0.19930626040071092f,1.7754972512221565f,1.748681367621801f,-0.5798316708760876f,1.4984710356038589f,1.3163113146755785f,-1.5072853340735954f,-0.9525434574323104f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_jaw) { transformation: [0.0904440264892229f,0.649133752034498f,2.4125598956382475f,-1.1582225892328581f,-0.23490019159833198f,2.405655443611495f,-0.6384698791716413f,1.8164919298017521f,-2.4872960776834514f,-0.203585998025402f,0.14802352295671548f,2.47145187931937f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_head) { transformation: [0.0904440264892229f,2.3248342461765525f,0.9148582435968518f,-0.8226366769343336f,-0.23490019159833198f,0.9193152413816328f,-2.312937826001922f,1.1938775853793056f,-2.4872960776834514f,-0.002283586681348218f,0.2517002327618809f,2.5424542708410582f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck2) { transformation: [-0.21757312748532637f,2.233683972077385f,1.1015070799050042f,-0.3958968193041042f,0.9127755003633821f,1.1002826975061686f,-2.050906841254602f,0.6458514945324878f,-2.3172187682937126f,0.2236825841525129f,-0.9112975811524038f,2.286513000708479f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck1) { transformation: [-1.2342749661873778f,1.9861916153515986f,0.8840860676145472f,-0.1446673070729364f,0.9147151726420013f,1.3966967390897929f,-1.8607886424724476f,-0.057212253740242025f,-1.972273170932886f,-0.5952151595204433f,-1.416282970700203f,1.803218196701608f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_front_body) { transformation: [-2.008863322875096f,1.4162141560710106f,0.45695252942871856f,0.019274996770804395f,1.1836357359838514f,1.9859246114462337f,-0.9513726305470925f,-0.5527415526409558f,-0.9019282646137635f,-0.5481248961652836f,-2.266293119544469f,0.7877672971143246f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_back_body) { transformation: [-2.1924396007813636f,1.2013357483879186f,-0.0010082514044862311f,5.35782974626967e-17f,1.1834154343384493f,2.159372418725062f,-0.43201697538293027f,-0.802490234375f,-0.20672809846557963f,-0.3793457221252345f,-2.462389148045063f,-0.4375f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
execute on vehicle unless entity @s[tag=aj.transforms_only] positioned ^-0.6005418428 ^-1.8281743218 ^0.0599715046 rotated ~359.9765396355 ~-9.9510520419 run function animated_java:squirrel_head/animations/die/zzz/frames/zzz/20
data modify entity @s data merge value {"locators":{"tail":{"posx":-1.518207521427027,"posy":-0.7386543063280853,"posz":-3.17307776545322,"roty":327.5263383374803,"rotx":44.384701680341976},"tail2":{"posx":-0.8195141138691855,"posy":-1.2800892555348313,"posz":-2.1726267269147517,"roty":327.5263383374803,"rotx":44.384701680341976},"neck":{"posx":-1.0770785932756968,"posy":-0.4475719043795054,"posz":2.2056898346178793,"roty":31.973639792373376,"rotx":-48.10033551920678},"head":{"posx":-1.9593494725394027,"posy":1.3064479689102022,"posz":2.4904895337051287,"roty":105.38290122604565,"rotx":-67.6947779859588}},"cameras":{}}