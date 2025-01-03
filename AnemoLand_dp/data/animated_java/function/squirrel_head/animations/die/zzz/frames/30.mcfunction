# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$data merge entity $(bone_right_leg) { transformation: [-2.278316179774986f,0.9067351715820255f,0.4869360467162281f,-0.4939090374481184f,1.0260317117350224f,2.093893915735215f,0.901591479640945f,-0.5873738880615265f,-0.08083508823285762f,1.0214889124523883f,-2.280356570856238f,0.17402625911176095f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_leg) { transformation: [-2.1888117381675696f,1.1723210247787994f,-0.2911470242359481f,0.38164092457900434f,1.183775232877158f,1.9618869180982528f,-0.9998379461800653f,-0.9173523202683467f,-0.24037340303472104f,-1.0132438677122728f,-2.2727862837620654f,0.23261591922882197f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_tail) { transformation: [-2.117254209845543f,0.7984911204080689f,-1.0628483153869093f,0.12588536371350526f,0.10212082707946385f,2.09056301923442f,1.3671567573932673f,-0.4752623395945487f,1.3254455656751547f,1.1144317804329404f,-1.8031183708212657f,-0.9560954428059087f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_jaw) { transformation: [-1.045213745168314f,-0.2411865157005031f,2.2581756556024324f,-1.3458018587255556f,0.9445869557084836f,2.214463229450065f,0.673727013351081f,0.786888640019368f,-2.0652563303417333f,1.1348928011305026f,-0.8347063075870191f,3.5655376493343005f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_head) { transformation: [-1.045213745168314f,1.5842870580461053f,1.6271332903664777f,-0.8336776442398033f,0.9445869557084836f,1.9321808820587423f,-1.2745322758220285f,0.49116216367349236f,-2.0652563303417333f,0.08192409117174473f,-1.406415562082942f,3.1710981658377464f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck2) { transformation: [-1.237908967488451f,1.8561477115582259f,1.1279614625902943f,-0.41690061203352713f,1.5291541735949725f,1.6668008913255614f,-1.0646418656305934f,0.2580354250197838f,-1.5424878934982769f,0.16275890621859665f,-1.9606735161310695f,2.6055062058116114f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_neck1) { transformation: [-1.8388390423829017f,1.4286398055703107f,0.9097578151070513f,-0.13915018022903794f,1.0428752950533604f,2.0131331702941515f,-1.0534258197086235f,-0.17818276141115197f,-1.3345718771110446f,-0.39532663027102494f,-2.076688411924826f,1.8819337070317204f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_front_body) { transformation: [-2.2601973345285615f,0.9896124310048872f,0.40270987744352804f,0.013409119212266785f,0.9137576322798271f,2.278778988769758f,-0.4713950676363131f,-0.46417398250200204f,-0.5536740904542563f,-0.2789866605092035f,-2.4219024432907226f,0.7871727394482977f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_back_body) { transformation: [-2.334799898738994f,0.8937047614675984f,0.0011100353713289885f,5.35782974626967e-17f,0.8799424858848539f,2.2993853130461375f,-0.4341985763248201f,-0.717201166180758f,-0.15623909364549587f,-0.4051160099006953f,-2.462005354205992f,-0.4375f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
execute on vehicle unless entity @s[tag=aj.transforms_only] positioned ^-0.4469911352 ^-1.8126190007 ^0.0728086742 rotated ~0.0258327373 ~-10.001818286 run function animated_java:squirrel_head/animations/die/zzz/frames/zzz/10
data modify entity @s data merge value {"locators":{"tail":{"posx":-1.3325013319146088,"posy":-1.1811422718531024,"posz":-3.231323039092887,"roty":329.48277188024827,"rotx":33.15204636954482},"tail2":{"posx":-0.6513600891446413,"posy":-1.472740084443282,"posz":-2.120807894851078,"roty":329.48277188024827,"rotx":33.15204636954482},"neck":{"posx":-0.8390879646935789,"posy":-0.914888433147638,"posz":2.270658203201775,"roty":23.657314398871648,"rotx":-24.921132283435533},"head":{"posx":-1.8192210681669516,"posy":-0.02595531063895823,"posz":3.4333615490250606,"roty":49.16144581678057,"rotx":-30.65136859783841}},"cameras":{}}