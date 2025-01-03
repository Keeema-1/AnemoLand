# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$data merge entity $(bone_right_leg) { transformation: [-2.127683310887461f,1.13247017670295f,0.6636829268930787f,-0.48821919050808044f,1.3092083835393442f,1.9219457136793126f,0.9176590228075006f,-0.596258887001501f,-0.09453643234897069f,1.128554815925265f,-2.228772507549979f,0.16517324622400098f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_leg) { transformation: [-1.9822229275540226f,1.4578465941092462f,-0.44212619637749556f,0.34583288360335357f,1.4932801569574135f,1.715787303742806f,-1.0373949590933216f,-1.0179159499973236f,-0.30150727738547767f,-1.086626539506128f,-2.231218529262549f,0.23912396559948845f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_tail) { transformation: [-2.00472833864498f,1.1104823843691192f,-0.9989460256888835f,0.16041803231766968f,0.16408359424316732f,1.8255685681138112f,1.7001105779375454f,-0.5516108903741674f,1.4846349256076332f,1.2977396800286127f,-1.5367923934433205f,-0.9533818349938682f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_jaw) { transformation: [0.017012801539213362f,0.505314319592798f,2.4483398463036656f,-1.2394678753736548f,-0.10246772641055213f,2.446479947654027f,-0.504218435572325f,1.7433443317304014f,-2.4978412538886525f,-0.09691905974171738f,0.037359954908189094f,2.5845975461430655f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_head) { transformation: [0.017012801539213362f,2.2631013733993353f,1.0621123943829263f,-0.8643494156651148f,-0.10246772641055213f,1.0618756660667215f,-2.2609556463715976f,1.1401455786783115f,-2.4978412538886525f,-0.028146821017680915f,0.09998413293397679f,2.6118972076413636f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck2) { transformation: [-0.31805728893586244f,2.189161258690917f,1.1646512544111955f,-0.421235768831355f,0.9962202052363978f,1.1880741500751568f,-1.9611285313823628f,0.622482242733469f,-2.270767461373691f,0.21459915510084215f,-1.0235049286625273f,2.3227252817835193f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck1) { transformation: [-1.3054254446410933f,1.9189631544297796f,0.929217316037813f,-0.15191198103638553f,0.92737462710755f,1.4921335784397127f,-1.7786269100319578f,-0.054447842835347315f,-1.9198543459025055f,-0.5840529051666546f,-1.4909867519484041f,1.8126085048482616f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_front_body) { transformation: [-2.053714457574235f,1.3473747127643227f,0.4656590063059299f,0.018148443937868672f,1.1337766629459136f,2.0387838606564377f,-0.8988386107005302f,-0.52769318048129f,-0.8641801926159814f,-0.5272018142325483f,-2.285880758429913f,0.7875791409833999f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_back_body) { transformation: [-2.2241388642971573f,1.141580450436235f,-0.0006224987996048956f,5.35782974626967e-17f,1.1244188346555268f,2.1904667796802464f,-0.43305608342241203f,-0.7784472656249999f,-0.19720191833463338f,-0.38555072597396983f,-2.4622067421534863f,-0.4375f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
execute on vehicle unless entity @s[tag=aj.transforms_only] positioned ^-0.5707124129 ^-1.819548645 ^0.0630512058 rotated ~359.9855143954 ~-9.975231285 run function animated_java:squirrel_head/animations/die/zzz/frames/zzz/18
data modify entity @s data merge value {"locators":{"tail":{"posx":-1.5084097115046697,"posy":-0.7883269273902582,"posz":-3.1806668026000535,"roty":326.97532075144704,"rotx":42.847099520256485},"tail2":{"posx":-0.8007212515910181,"posy":-1.2960881098376913,"posz":-2.168944415873028,"roty":326.97532075144704,"rotx":42.847099520256485},"neck":{"posx":-1.0607846624629902,"posy":-0.49385094522993556,"posz":2.21835503332993,"roty":31.93211193578628,"rotx":-45.3530763959956},"head":{"posx":-2.0069273109844694,"posy":1.1838772219645124,"posz":2.6023211254949676,"roty":95.37780765803447,"rotx":-64.74021176308024}},"cameras":{}}