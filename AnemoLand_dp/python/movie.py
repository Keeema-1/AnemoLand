import json
import os

with open('data/movie.json' , encoding='utf-8') as f:
	movie_database = json.load(f)

with open('data/common.json' , encoding='utf-8') as f:
	common_database = json.load(f)

namespace_core = common_database["namespace_core"]
namespace_contents = common_database["namespace_contents"]
namespace_storage = common_database["namespace_core"]

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

base_path = '../data/' + namespace_contents + '/function/sys/movie/'

for movie_name, movie_data in movie_database.items():

	# # forceload
	# path = base_path + movie_name + '/forceload.mcfunction'
	# makedir(path)
	# output = []
	# output.append('execute positioned ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' run forceload add ~-32 ~-32 ~32 ~32\n')
	# with open(path, 'w', encoding='utf-8') as f:
	# 	f.writelines(output)


	# start
	path = base_path + movie_name + '/start.mcfunction'
	makedir(path)
	output = []
	output.append('# 古いカメラをkill\n')
	output.append('    kill @e[type=armor_stand,tag=movie.' + movie_name + ']\n')
	output.append('# カメラを召喚\n')
	output.append('    summon armor_stand ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' {Tags:["camera","camera.near","movie.' + movie_name + '"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}\n')
	output.append('    summon armor_stand ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' {Tags:["camera","camera.far","movie.' + movie_name + '"],Marker:1b,NoAI:1b,Invisible:1b,Rotation:[180.0d,30.0d]}\n')
	# output.append('execute positioned ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' run function animated_java:boar/summon/king_default\n')
	# output.append('tag @e[tag=newly_summoned.aj,limit=1] remove newly_summoned.aj\n')
	output.append('# スコアを初期化\n')
	output.append('    scoreboard players set #movie.' + movie_name + ' action0 0\n')
	output.append('    scoreboard players set #movie.' + movie_name + ' action_time 0\n')
	output.append('# tick関数をschedule\n')
	output.append('    schedule function anemoland_contents:sys/movie/' + movie_name + '/tick 1t replace\n')
	output.append('# プレイヤーごとの処理\n')
	output.append('    execute positioned ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' as @a[distance=..64] run function anemoland_contents:sys/movie/' + movie_name + '/start_as_player\n')
	output.append('# manual\n')
	output.append('    execute positioned ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' run function anemoland_contents:sys/movie/' + movie_name + '/manual/start\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



	path = base_path + movie_name + '/start_as_player.mcfunction'
	makedir(path)
	output = []
	output.append('# スペクテイターモード\n')
	output.append('    gamemode spectator @s\n')
	output.append('# ムービー中タグ\n')
	output.append('    tag @s add playing_movie\n')
	output.append('# 設定に応じてカメラを切り替え\n')
	output.append('    function anemoland_contents:sys/player/common/player_storage/read\n')
	output.append('    tag @s remove movie.near\n')
	output.append('    execute if data storage temp:_ data.player_storage.settings{movie_camera_is_near:1b} run tag @s add movie.near\n')
	output.append('    execute if entity @s[tag=movie.near] run spectate @e[type=armor_stand,tag=camera.near,tag=movie.' + movie_name + ',limit=1]\n')
	output.append('    execute if entity @s[tag=!movie.near] run spectate @e[type=armor_stand,tag=camera.far,tag=movie.' + movie_name + ',limit=1]\n')
	output.append('# フェードアウト・フェードイン演出\n')
	output.append('    title @s times 0 20 20\n')
	output.append('    title @s subtitle {"translate":"anemoland.title.black"}\n')
	output.append('    title @s title ""\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



	path = base_path + movie_name + '/end.mcfunction'
	makedir(path)
	output = []
	output.append('# スコアをリセット\n')
	output.append('    scoreboard players reset #movie.' + movie_name + ' action0\n')
	output.append('    scoreboard players reset #movie.' + movie_name + ' action_time\n')
	output.append('# カメラをkill\n')
	output.append('    kill @e[type=armor_stand,tag=movie.' + movie_name + ']\n')
	output.append('# scheduleをclear\n')
	output.append('    schedule clear anemoland_contents:sys/movie/' + movie_name + '/tick\n')
	output.append('# プレイヤーごとの処理\n')
	output.append('    execute as @a[tag=playing_movie,distance=..64] run function anemoland_contents:sys/movie/' + movie_name + '/end_as_player\n')
	output.append('# manual\n')
	output.append('    function anemoland_contents:sys/movie/' + movie_name + '/manual/end\n')
	if "next_event" in movie_data:
		output.append('# event\n')
		output.append('    function anemoland_contents:command/field_event/' + movie_data["map_id"] + '/change/' + movie_data["next_event"]["id"] + ' {field_id:' + movie_data["field_id"] + ',level:' + str(movie_data["next_event"]["level"]) + '}\n')
	if "next_talk" in movie_data:
		output.append('# talk\n')
		output.append('    function anemoland_contents:command/talk/' + movie_data["next_talk"]["talker_id"] + '/' + movie_data["next_talk"]["talk_id"] + '\n')
	# output.append('execute positioned ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' run forceload remove ~-32 ~-32 ~32 ~32\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)


	path = base_path + movie_name + '/end_as_player.mcfunction'
	makedir(path)
	output = []
	output.append('# ゲームモードをアドベンチャーに戻す\n')
	output.append('    gamemode adventure @s\n')
	output.append('# ムービー中タグを外す\n')
	output.append('    tag @s remove playing_movie\n')
	output.append('# マップへ戻る\n')
	output.append('    function anemoland_contents:sys/area/' + movie_data["map_id"] + '/field/' + movie_data["field_id"] + '/return/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



	path = base_path + movie_name + '/tick.mcfunction'
	makedir(path)
	output = []
	output.append('# 中心位置がロードされていれば\n')
	output.append('    execute if loaded ' + str(int(movie_data["center"][0])) + ' ' + str(int(movie_data["center"][1])) + ' ' + str(int(movie_data["center"][2])) + ' run schedule function anemoland_contents:sys/movie/' + movie_name + '/tick 1t replace\n')
	output.append('# 中心位置がロードされていれば次を実行\n')
	output.append('    execute positioned ' + str(movie_data["center"][0]) + ' ' + str(movie_data["center"][1]) + ' ' + str(movie_data["center"][2]) + ' if loaded ~ ~ ~ run function anemoland_contents:sys/movie/' + movie_name + '/tick_at_center\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



	path = base_path + movie_name + '/tick_at_center.mcfunction'
	makedir(path)
	output = []
	output.append('# schedule\n')
	output.append('    schedule function anemoland_contents:sys/movie/' + movie_name + '/tick 1t replace\n')
	output.append('# タイマーを加算\n')
	output.append('    scoreboard players add #movie.' + movie_name + ' action_time 1\n')
	output.append('# manual関数を実行\n')
	output.append('    function anemoland_contents:sys/movie/' + movie_name + '/manual/tick\n')
	output.append('# 遠距離カメラを近距離カメラの後ろにtp\n')
	output.append('    execute as @e[type=armor_stand,tag=movie.' + movie_name + ',tag=camera.far,distance=..64] at @e[type=armor_stand,tag=movie.' + movie_name + ',tag=camera.near,distance=..64,limit=1] run tp @s ^ ^ ^-4\n')
	output.append('# プレイヤーをカメラにspectateさせる\n')
	output.append('    execute as @a[tag=playing_movie,tag=movie.near,distance=..64] at @s run spectate @e[type=armor_stand,tag=camera.near,tag=movie.' + movie_name + ',sort=nearest,distance=..64,limit=1]\n')
	output.append('    execute as @a[tag=playing_movie,tag=!movie.near,distance=..64] at @s run spectate @e[type=armor_stand,tag=camera.far,tag=movie.' + movie_name + ',sort=nearest,distance=..64,limit=1]\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + movie_name + '/manual/tick.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		for i in range(10):
			output.append('execute if score #movie.' + movie_name + ' action0 matches ' + str(i) + ' run function anemoland_contents:sys/movie/' + movie_name + '/manual/tick/' + str(i) + '/0\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)



	path = base_path + movie_name + '/manual/start.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		output.append('# execute positioned ~ ~ ~ run function animated_java:' + movie_name + '/summon/default\n')
		output.append('# tag @e[tag=newly_summoned.aj,limit=1] remove newly_summoned.aj\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)


	path = base_path + movie_name + '/manual/end.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		output.append('# execute as @e[tag=aj.' + movie_name + '.root,distance=..64] at @s run function animated_java:' + movie_name + '/remove/this\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)
