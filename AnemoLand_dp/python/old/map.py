import json
import os
import math

data_path = 'data/map.json'

with open(data_path , encoding='utf-8') as f:
	data = json.load(f)

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

with open('data/event.json' , encoding='utf-8') as f:
	event_database = json.load(f)

with open('data/mob.json' , encoding='utf-8') as f:
	mob_data = json.load(f)

MAX_WAVES = 3

base_path = '../data/anemoland/function/dev/map/'

arena_prepare_field = '14'

# base
for map_data in data["maps"]:
	path = base_path + map_data["name"] + '/base.mcfunction'
	makedir(path)
	output = []
	center_pos = map_data["pos"]
	size = map_data["size"]
	map = map_data["map"]
	for y in range(size):
		for x in range(size):
			if map[y][x] == "##":
				continue
			else:
				flag = False
				for field in map_data["fields"]:
					if field["id"] == map[y][x]:
						if field["type"] == "ship":
							flag = True
							break
				if not flag:
					output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -8 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~ ~ ~ ~7 ~ ~7 grass_block\n')
			if map[y][x] == "**":
				output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -8 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~ ~1 ~ ~7 ~1 ~7 stone\n')

	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

# barrier
for map_data in data["maps"]:
	path = base_path + map_data["name"] + '/barrier.mcfunction'
	makedir(path)
	output = []
	center_pos = map_data["pos"]
	size = map_data["size"]
	map = map_data["map"]
	for y in range(size):
		for x in range(size):
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -1 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~ ~ ~ ~7 ~ ~7 barrier\n')
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -1 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~ ~1 ~ ~ ~6 ~7 barrier\n')
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -1 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~ ~1 ~ ~7 ~6 ~ barrier\n')
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -1 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~7 ~1 ~7 ~ ~6 ~7 barrier\n')
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -1 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~7 ~1 ~7 ~7 ~6 ~ barrier\n')

	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)


# display
for map_data in data["maps"]:
	path = base_path + map_data["name"] + '/display.mcfunction'
	makedir(path)
	output = []
	center_pos = map_data["pos"]
	size = map_data["size"]
	map = map_data["map"]
	output.append('execute positioned ' + str(center_pos[0]) + ' 0 ' + str(center_pos[1]) + ' run kill @e[tag=area_info,distance=..256]\n')
	for y in range(size):
		for x in range(size):
			if map[y][x] == "##" or map[y][x] == "**":
				continue
			flag = False
			for field in map_data["fields"]:
				tags_add = ''
				if "auto_unlock" in field and field["auto_unlock"]:
					tags_add = ',"auto_unlock"'
				if field["id"] == map[y][x]:
					flag = True
					if field["type"] == "village":
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","village","village_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"<拠点>\\\\n","color":"yellow"},{"text":"' + field["display_name"] + '\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif field["type"] == "ship":
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","ship","ship_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"' + field["display_name"] + '\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif "special_field" in field and field["special_field"] in ["explore"]:
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","explore","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"<探索フィールド>\\\\n","color":"yellow"},{"text":"' + field["display_name"] + '\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif "special_field" in field and field["special_field"] in ["arena_prepare"]:
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","explore","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"<闘技場フィールド>\\\\n","color":"yellow"},{"text":"' + field["display_name"] + '\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif field["type"] == "field":
						monsters = ',{"text":"???"}'
						# if "default_monsters" in event_database["events"][field["default_event"]]:
						# 	monsters = ''
						# 	for monster in field["default_monsters"]:
						# 		monsters += ',{"translate":"mob.' + monster + '"}," "'
						enemies = set()
						enemies_boss = []
						min_level = 10000
						max_level = 0
						event_data = event_database["events"][field["initial_event"]] if "initial_event" in field else event_database["events"][field["default_event"]]
						waves_len = len(event_data["waves"])
						for wave_data_ in (event_data["waves"]):
							for wave_id, wave_level in wave_data_.items():
								wave_data = event_database["waves"][wave_id]["enemies"]
								for enemy in wave_data:
									min_level = min(enemy["level"] + wave_level, min_level)
									max_level = max(enemy["level"] + wave_level, max_level)
									if mob_data[enemy["entity_id"]]["type"] == "boss":
										enemies_boss.append(enemy["entity_id"])
									else:
										enemies.add(enemy["entity_id"])
						if "display_overwrite" in event_data:
							enemies_boss = event_data["display_overwrite"]["enemies"]
							enemies = set()
							min_level = min(event_data["display_overwrite"]["levels"])
							max_level = max(event_data["display_overwrite"]["levels"])
							waves_len = event_data["display_overwrite"]["waves"]
						monsters = ''
						for enemy in enemies_boss:
							monsters += ',{"translate":"mob.' + enemy + '.secret"}," "'
						for enemy in enemies:
							monsters += ',{"translate":"mob.' + enemy + '.secret"}," "'

						if ("decoy" in enemy):
							output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","field","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"<戦闘フィールド>\\\\n","color":"yellow"},{"text":"' + field["display_name"] + '\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
						else:
							output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","field","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"<戦闘フィールド>\\\\n","color":"yellow"},{"text":"' + field["display_name"] + '\\\\n"},{"text":"----------------\\\\n"},{"text":"出現モンスター\\\\n"}' + monsters + ',{"text":"\\\\n\\\\n\\\\nウェーブ数 ' + str(len(event_database["events"][field["default_event"]]["waves"])) + '\\\\nLv. ' + ((str(min_level)) if (min_level == max_level) else (str(min_level) + ' - ' + str(max_level))) + '"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					break
			if flag == False:
				output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","field","field_' + map[y][x] + '","skip","auto_unlock"],text:\'[""]\',view_range:0}\n')

	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

# cloud
for map_data in data["maps"]:
	path = base_path + map_data["name"] + '/cloud.mcfunction'
	makedir(path)
	output = []
	center_pos = map_data["pos"]
	size = map_data["size"]
	map = map_data["map"]
	output.append('execute positioned ' + str(center_pos[0]) + ' 0 ' + str(center_pos[1]) + ' run kill @e[tag=cloud,distance=..256]\n')
	for y in range(size):
		for x in range(size):
			if map[y][x] == "##" or map[y][x] == "**":
				continue
			else:
				flag = False
				for field in map_data["fields"]:
					if field["id"] == map[y][x]:
						flag = True
						if "no_cloud" in field and field["no_cloud"]:
							flag = False
							break
						elif "special_field" in field and field["special_field"] == "training":
							flag = False
							break
				if flag:
					output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' 0 ' + str(center_pos[1]+y*8-size*4) + ' run function anemoland:dev/map/common/cloud/0\n')

	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)




base_path = '../data/anemoland/function/sys/player/area/'

for map_data in data["maps"]:
	# path = base_path + map_data["name"] + '/cloud.mcfunction'
	map_name = map_data["name"]
	center_pos = map_data["pos"]
	size = map_data["size"]

	# branch
	output = []
	path = base_path + map_name + '/field/branch.mcfunction'
	makedir(path)
	for field in map_data["fields"]:
		if field["type"] == "field":
			field_score = int(field["index"][0])*100+int(field["index"][1])
			output.append('execute if score @s area2 matches ' + str(field_score) + ' run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# enter_field
	output = []
	path = base_path + map_name + '/map/enter_field.mcfunction'
	makedir(path)
	for field in map_data["fields"]:
		field_score = int(field["index"][0])*100+int(field["index"][1])
		if field["type"] == "ship":
			output.append('execute if entity @s[tag=' + field["type"] + '_' + field["id"] + '] as @a[tag=player_check,limit=1] run function anemoland:sys/player/area/common/ship/0\n')
		elif field["type"] == "village":
			output.append('execute if entity @s[tag=' + field["type"] + '_' + field["id"] + '] as @a[tag=player_check,limit=1] run function anemoland:sys/player/area/' + map_name + '/' + field["type"] + '/' + field["id"] + '/enter/0\n')
		else:
			output.append('execute if entity @s[tag=' + field["type"] + '_' + field["id"] + '] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=' + str(map_data["score"]) + ',area2=' + str(field_score) + '}] run function anemoland:sys/player/area/' + map_name + '/' + field["type"] + '/' + field["id"] + '/enter/_0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# random_event
	output = []
	path = base_path + map_name + '/event/update/00.mcfunction'
	makedir(path)
	for field in map_data["fields"]:
		if field["type"] == "field" and "random_event" in field:
			output.append('execute if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared_once:1b,event:{random_event_enable:1b}} run function anemoland:sys/player/area/' + map_name + '/event/update/field/' + field["id"] + '\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# each field
	field_types = data["field_types"]
	for field in map_data["fields"]:
		skip_battle_process = False
		if "special_field" in field and field["special_field"] in ["explore","arena_prepare"]:
			skip_battle_process = True
		skip_reset_process = False
		if "special_field" in field and field["special_field"] in ["arena_prepare"]:
			skip_reset_process = True

		if field["type"] == "field":
			field_type_data = field_types[field["field_type"]]
			center = [map_data["pos"][0], map_data["pos"][1] + field["z_offset"]]
			field_score = int(field["index"][0])*100+int(field["index"][1])
			exits = []
			for exit in field_type_data["exits"]:
				exits.append({"start": [center[0] + exit["start"][0] - field_type_data["center"][0], exit["start"][1], center[1] + exit["start"][2] - field_type_data["center"][2]], "aabb": exit["aabb"]})
			entrance = [center[0] + field_type_data["entrance"][0] - field_type_data["center"][0], field_type_data["entrance"][1], center[1] + field_type_data["entrance"][2] - field_type_data["center"][2]]
			return_pos = [map_data["pos"][0]-size*8/2+4+8*field["index"][1], map_data["pos"][1]+size*8/2-4-8*field["index"][0]]

			# 0
			output = []
			path = base_path + map_name + '/field/' + field["id"] + '/0.mcfunction'
			makedir(path)
			distance = max(int(math.sqrt( (entrance[0]-center[0])**2 + (entrance[2]-center[1])**2 ) - 6), 8)
			for exit in exits:
				exit_start = exit["start"]
				output.append('execute positioned ' + str(exit_start[0]) + ' ' + str(exit_start[1]) + ' ' + str(exit_start[2]) + ' if entity @s[dx=' + str(exit["aabb"][0]-1) + ',dy=2,dz=' + str(exit["aabb"][1]-1) + '] at @s run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/return/0\n')
			if not skip_battle_process:
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{summon_flag:1b} if loaded ~ ~ ~ unless entity @e[tag=enemy,tag=mob_root,distance=..64] run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/clear/0\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{summon_flag:1b} if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{wave_interval:1b} unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/summon/warn\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{summon_flag:1b} unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{wave_interval:1b} unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} if entity @a[distance=..' + str(distance) + ',tag=player_check,limit=1] run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/summon/0\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/clear/tick\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} run function anemoland:sys/player/title/actionbar/field/skill_gauge/0\n')
			if "special_field" in field and field["special_field"]  in ["arena_prepare"]:
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function anemoland:sys/player/area/common/arena_prepare/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# clear
			if not skip_battle_process:
				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/clear/0.mcfunction'
				makedir(path)

				for i in range(MAX_WAVES):
					output.append('execute unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{wave:' + str(i+1) + ',waves_len:' + str(i+1) + '} run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/clear/clear\n')
				for i in range(MAX_WAVES-1)[1::-1]:
					output.append('execute unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{wave:' + str(i+1) + '} unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{waves_len:' + str(i+1) + '} run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/clear/wave_clear\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/clear/wave_clear.mcfunction'
				makedir(path)
				output.append('title @a[distance=..64] times 10 40 10\n')
				output.append('title @a[distance=..64] subtitle {"text": "WAVE CLEAR!","color": "white"}\n')
				output.append('title @a[distance=..64] title ""\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.wave_interval set value 1b\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.summon_flag set value 0b\n')
				output.append('schedule function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/clear/wave_interval 5s\n')
				for i in range(MAX_WAVES-1)[1::-1]:
					output.append('execute if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{wave:' + str(i+1) + '} run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.wave set value ' + str(i+2) + '\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/clear/wave_interval.mcfunction'
				makedir(path)
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.wave_interval set value 0b\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/clear/clear.mcfunction'
				makedir(path)
				if field["remove_cloud_when_clear"]:
					# output.append('execute unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared_once:1b} run summon marker ' + str(return_pos[0]) + ' 0.0 ' + str(return_pos[1]) + ' {Tags:["clear_flag"]}\n')
					output.append('summon marker ' + str(return_pos[0]) + ' 0.0 ' + str(return_pos[1]) + ' {Tags:["clear_flag"]}\n')
				if "unlock" in field:
					for unlock_id in field["unlock"]:
						for field2 in map_data["fields"]:
							if field2["id"] == unlock_id:
								# return_pos2 = [map_data["pos"][0]-size*8/2+4+8*field2["index"][1], map_data["pos"][1]+size*8/2-4-8*field2["index"][0]]
								output.append('execute unless data storage anemoland:progress data.' + map_name + '.field' + field2["id"] + '{cleared_once:1b} run function anemoland:command/progress/unlock/field/' + map_name + '/field' + field2["id"] + '\n')
				output.append('execute unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared_once:1b} run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/clear/first_clear\n')
				output.append('execute if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{boss_flag:1b} run function anemoland:sys/player/area/common/field/clear_boss\n')
				output.append('execute unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{boss_flag:1b} run function anemoland:sys/player/area/common/field/clear_mob\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.cleared set value 1b\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.cleared_once set value 1b\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.random_event_enable set value 1b\n')
				output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/clear/clear_\n')
				output.append('data modify storage temp:_ data.event_id.event_id set from storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.event_id\n')
				output.append('function anemoland:sys/event/clear with storage temp:_ data.event_id\n')
				output.append('function anemoland:command/field_event/' + map_name + '/change/' + field["default_event"] + ' {field_id:' + field["id"] + '}\n')
				output.append('function anemoland:sys/player/area/' + map_name + '/event/update/0\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/clear/tick.mcfunction'
				makedir(path)

				output.append('function anemoland:sys/player/title/actionbar/field/return/0\n')
				output.append('execute if score @s sneak_time matches 20.. run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/return/0\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			# enter
			output = []
			path = base_path + map_name + '/field/' + field["id"] + '/enter/_0.mcfunction'
			makedir(path)
			output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/0\n')
			# output.append('scoreboard players set @s area0 100\n')
			# output.append('scoreboard players set @s area1 ' + str(map_data["score"]) + '\n')
			# output.append('scoreboard players set @s area2 ' + str(field_score) + '\n')
			# output.append('tp @s ' + str(entrance[0]) + ' ' + str(entrance[1]) + ' ' + str(entrance[2]) + ' 180 30\n')
			# output.append('execute at @s run function anemoland:sys/player/area/common/field/enter\n')
			# output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/enter/0\n')
			if not skip_battle_process:
				output.append('scoreboard players set #members temp 0\n')
				output.append('scoreboard players operation #team temp = @s team\n')
				output.append('execute if score #team temp matches 1.. at @s as @a[distance=..4] if score @s team = #team temp run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/enter/_1\n')
				output.append('execute unless score #team temp matches 1.. at @s as @a[distance=..4] unless score @s team matches 1.. run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/enter/_1\n')
			else:
				output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/enter/_1\n')
			output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/enter/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# enter
			output = []
			path = base_path + map_name + '/field/' + field["id"] + '/enter/_1.mcfunction'
			makedir(path)
			# output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/0\n')
			if not skip_battle_process:
				output.append('execute if score #members temp matches 4.. run return 1\n')
			output.append('scoreboard players set @s area0 100\n')
			output.append('scoreboard players set @s area1 ' + str(map_data["score"]) + '\n')
			output.append('scoreboard players set @s area2 ' + str(field_score) + '\n')
			output.append('tp @s ' + str(entrance[0]) + ' ' + str(entrance[1]) + ' ' + str(entrance[2]) + ' 180 30\n')
			output.append('execute at @s run function anemoland:sys/player/area/common/field/enter\n')
			if not skip_battle_process:
				output.append('scoreboard players add #members temp 1\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# init
			if not skip_reset_process:
				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/init/0.mcfunction'
				makedir(path)
				output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/remove_entity\n')
				output.append('schedule function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/remove_entity 1s\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.summon_flag set value 0b\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.cleared set value 0b\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.wave set value 1\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.wave_interval set value 0b\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.boss_flag set value 0b\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.npc1_exist set value 0b\n')
				output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/00\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/init/remove_entity.mcfunction'
				makedir(path)
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' if loaded ~ ~ ~ run function anemoland:sys/player/area/common/field/remove_entity/0\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless loaded ~ ~ ~ run schedule function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/remove_entity 1t\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			# return
			output = []
			path = base_path + map_name + '/field/' + field["id"] + '/return/0.mcfunction'
			makedir(path)
			if "special_field" in field and field["special_field"] == "arena":
				output.append('function anemoland_contents:sys/player/area/' + map_name + '/field/' + arena_prepare_field + '/enter/0\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/0\n')
			else:
				output.append('function anemoland:sys/player/area/common/map/enter\n')
				output.append('scoreboard players set @s area0 100\n')
				output.append('scoreboard players set @s area1 ' + str(map_data["score"]) + '\n')
				output.append('scoreboard players set @s area2 0\n')
				output.append('execute positioned ' + str(return_pos[0]) + ' 0.0 ' + str(return_pos[1]) + ' run tp @s ~ ~ ~2 180 ~\n')
				if not skip_reset_process:
					output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/0\n')
				output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/return/00\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# summon
			if not skip_battle_process and not ("special_field" in field and field["special_field"] == "arena"):
				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/summon/0.mcfunction'
				makedir(path)
				output.append('function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/init/remove_entity\n')
				output.append('data modify storage temp:_ data.event set from storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event\n')
				output.append('execute at @p run function anemoland:sys/player/area/common/field/summon_npc\n')
				output.append('execute if data storage temp:_ data.event.with_npc1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.npc1_exist set value 1b\n')
				output.append('function anemoland:sys/player/area/common/field/set_pet_timer\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.summon_flag set value 1b\n')
				# output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function anemoland:sys/player/area/' + map_name + '/field/' + field["id"] + '/summon/00\n')
				for i in range(MAX_WAVES):
					output.append('execute if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{wave:' + str(i+1) + '} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.waves[' + str(i) + ']\n')
				# output.append('data modify storage temp:_ data.event_id.event_id set from storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.id\n')
				output.append('data remove storage temp:_ data.event_bonus\n')
				output.append('data modify storage temp:_ data.event_bonus set from storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function anemoland:sys/event/field/branch with storage temp:_ data.wave\n')
				output.append('execute if score #boss_flag temp matches 1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.boss_flag set value 1b\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/field/' + field["id"] + '/summon/warn.mcfunction'
				makedir(path)
				for i in range(MAX_WAVES):
					output.append('execute if data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event{wave:' + str(i+1) + '} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.waves[' + str(i) + ']\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function anemoland:sys/event/field/warn_branch with storage temp:_ data.wave\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			# random_event
			if "random_event" in field:
				output = []
				path = base_path + map_name + '/event/update/field/' + field["id"] + '.mcfunction'
				makedir(path)
				random_event_data = event_database["random_events"][field["random_event"]]
				output.append('execute positioned ' + str(center[0]) + ' 0 ' + str(center[1]) + ' if entity @a[distance=..128] unless data storage anemoland:progress data.' + map_name + '.field' + field["id"] + '{cleared:1b} run return 1\n')
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus set value {xp:0,gold:0,drop:0}\n')
				output.append('execute store result score #random temp run random value 0..19\n')
				output.append('execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.xp set value 1\n')
				output.append('execute if score #random temp matches 2 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.xp set value 2\n')
				output.append('execute store result score #random temp run random value 0..19\n')
				output.append('execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.gold set value 1\n')
				output.append('execute if score #random temp matches 2 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.gold set value 2\n')
				output.append('execute store result score #random temp run random value 0..19\n')
				output.append('execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.drop set value 1\n')
				output.append('execute if score #random temp matches 2 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.drop set value 2\n')
				output.append('execute store result score #random temp run random value 0..999\n')
				output.append('execute if score #random temp matches ' + str(int(random_event_data["random_event_chance"]*1000)) + '.. run return 1\n')
				weight_sum_all = 0
				for random_event_item in random_event_data["random_events"]:
					weight_sum_all += random_event_item["weight"]
				output.append('execute store result score #random temp run random value 0..' + str(weight_sum_all-1) + '\n')
				weight_sum = 0
				for random_event_item in random_event_data["random_events"]:
					predicates = ''
					for wave_ in event_database["events"][random_event_item["event"]]["waves"]:
						for wave_id_, wave_level_ in wave_.items():
							wave_data_ = event_database["waves"][wave_id_]
							enemies_ = set()
							for enemy_ in wave_data_["enemies"]:
								entity_ = enemy_["entity_id"]
								if not entity_ in enemies_:
									predicates += " if data storage anemoland:progress data.mob_list." + entity_ + "{unlock:1b}"
								level_ = enemy_["level"] + wave_level_
								if level_ >= 20:
									predicates += " if data storage anemoland:progress data.rank{silver:1b}"
								if level_ >= 30:
									predicates += " if data storage anemoland:progress data.rank{gold:1b}"
								enemies_.add(enemy_["entity_id"])
					output.append('execute if score #random temp matches ' + str(weight_sum) + '..' + str(weight_sum+random_event_item["weight"]-1) + '' + predicates + ' run function anemoland:command/field_event/' + map_name + '/change/' + random_event_item["event"] + ' {field_id:' + field["id"] + '}\n')
					weight_sum += random_event_item["weight"]
				output.append('data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus set value {xp:0,gold:0,drop:0}\n')
				output.append('execute store result score #random temp run random value 0..19\n')
				output.append('execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.xp set value 1\n')
				output.append('execute if score #random temp matches 2 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.xp set value 2\n')
				output.append('execute store result score #random temp run random value 0..19\n')
				output.append('execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.gold set value 1\n')
				output.append('execute if score #random temp matches 2 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.gold set value 2\n')
				output.append('execute store result score #random temp run random value 0..19\n')
				output.append('execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.drop set value 1\n')
				output.append('execute if score #random temp matches 2 run data modify storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.event.bonus.drop set value 2\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)


for map_data in data["maps"]:
	output = []
	path = base_path + map_data["name"] + '/map/update_display/00.mcfunction'
	makedir(path)
	for field in map_data["fields"]:
		if field["type"] == "field":
			output.append('execute if entity @s[tag=field_' + field["id"] + '] run data modify storage temp:_ data.field_display_data set from storage anemoland:progress data.' + map_name + '.field' + field["id"] + '\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/exist_check/000.mcfunction'
	makedir(path)
	for field in map_data["fields"]:
		if field["type"] == "field":
			field_score = int(field["index"][0])*100+int(field["index"][1])
			output.append('execute if entity @s[tag=field_' + field["id"] + '] if entity @a[scores={area0=100,area1=' + str(map_data["score"]) + ',area2=' + str(field_score) + '}] run tag @s add player_exist\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/exist_check/010.mcfunction'
	makedir(path)
	for field in map_data["fields"]:
		if field["type"] == "field":
			field_score = int(field["index"][0])*100+int(field["index"][1])
			output.append('execute if entity @s[tag=field_' + field["id"] + '] unless entity @a[scores={area0=100,area1=' + str(map_data["score"]) + ',area2=' + str(field_score) + '}] run tag @s remove player_exist\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/update_display/01.mcfunction'
	makedir(path)
	for field in map_data["fields"]:
		if field["type"] == "field":
			output.append('execute if entity @s[tag=field_' + field["id"] + '] run data remove storage anemoland:progress data.' + map_name + '.field' + field["id"] + '.display_update_flag\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



# structure

base_path = '../data/anemoland/function/dev/field/'

# each field_type
for field_type_name, field_type_data in data["field_types"].items():
	center = field_type_data["center"]
	structure_size = field_type_data["structure_size"]

	# save
	output = []
	path = base_path + 'template/' + field_type_name.lower() + '/save/0.mcfunction'
	makedir(path)
	for i in range(structure_size):
		for j in range(structure_size):
			output.append('execute positioned ' + str(int(center[0])) + ' 32 ' + str(int(center[2])) + ' run setblock ~' + str(int(i*48-structure_size*48/2)) + ' 32 ~' + str(int(j*48-structure_size*48/2)) + ' structure_block[mode=save]\n')
			output.append('execute positioned ' + str(int(center[0])) + ' 32 ' + str(int(center[2])) + ' run data merge block ~' + str(int(i*48-structure_size*48/2)) + ' 32 ~' + str(int(j*48-structure_size*48/2)) + ' {posX:0,posY:-40,posZ:0,sizeX:48,sizeY:32,sizeZ:48,name:"field/' + field_type_name.lower() + '/' + str(i) + '_' + str(j) + '"}\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + 'template/' + field_type_name.lower() + '/save/macro.mcfunction'
	makedir(path)
	for i in range(structure_size):
		for j in range(structure_size):
			output.append('$execute positioned $(center_x) 32 $(center_z) run setblock ~' + str(int(i*48-structure_size*48/2)) + ' ~ ~' + str(int(j*48-structure_size*48/2)) + ' structure_block[mode=save]\n')
			output.append('$execute positioned $(center_x) 32 $(center_z) run data merge block ~' + str(int(i*48-structure_size*48/2)) + ' ~ ~' + str(int(j*48-structure_size*48/2)) + ' {posX:0,posY:-40,posZ:0,sizeX:48,sizeY:32,sizeZ:48,name:"field/' + field_type_name.lower() + '/' + str(i) + '_' + str(j) + '"}\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)


for map_data in data["maps"]:
	map_name = map_data["name"]
	center_pos = map_data["pos"]

	# each field
	field_types = data["field_types"]
	for field in map_data["fields"]:
		if field["type"] == "field":
			field_type_data = field_types[field["field_type"]]
			structure_size = field_type_data["structure_size"]
			center = [map_data["pos"][0], map_data["pos"][1] + field["z_offset"]]

			# load
			output = []
			path = base_path + 'template/' + field["field_type"].lower() + '/load/' + map_name + '/' + str(int(center[0])) + '_' + str(int(center[1])) + '.mcfunction'
			makedir(path)
			for i in range(structure_size):
				for j in range(structure_size):
					output.append('execute positioned ' + str(int(center[0] + i*48-structure_size*48/2)) + ' -8 ' + str(int(center[1] + j*48-structure_size*48/2)) + ' run place template field/' + field["field_type"].lower() + '/' + str(i) + '_' + str(j) +'\n')
					output.append('execute positioned ' + str(int(center[0] + i*48-structure_size*48/2)) + ' -1 ' + str(int(center[1] + j*48-structure_size*48/2)) + ' run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air\n')
			for exit in field_type_data["exits"]:
				output.append('execute positioned ' + str(center[0] + exit["start"][0]+exit["aabb"][0]/2 - field_type_data["center"][0]) + ' ' + str( exit["start"][1]) + ' ' + str(center[1] + exit["start"][2]+exit["aabb"][1]/2 - field_type_data["center"][2]) + ' run function anemoland:dev/field/common/area_entrance/x\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)


base_path = '../data/anemoland/function/command/progress/'

output = []
path = base_path + 'init_event.mcfunction'
makedir(path)
for map_data in data["maps"]:
	for field in map_data["fields"]:
		if "special_field" in field and field["special_field"] in ["explore","arena_prepare"]:
			continue

		if field["type"] == "field":
			waves_data = []
			for wave_data in event_database["events"][str(field["default_event"])]["waves"]:
				for wave_id, wave_level in wave_data.items():
					waves_data.append(wave_id + "_" + str(wave_level))
			output.append('data modify storage anemoland:progress data.' + map_data["name"] + '.field' + str(field["id"]) + '.event.random_event_enable set value 0b\n')
			output.append('data modify storage anemoland:progress data.' + map_data["name"] + '.field' + str(field["id"]) + '.display_name set value "' + field["display_name"] + '"\n')
			output.append('data modify storage anemoland:progress data.' + map_data["name"] + '.field' + str(field["id"]) + '.event.event_id set value ' + str(field["initial_event"] if "initial_event" in field else field["default_event"]) + '\n')
			output.append('data modify storage anemoland:progress data.' + map_data["name"] + '.field' + str(field["id"]) + '.event.waves set value ' + str(waves_data) + '\n')
			output.append('data modify storage anemoland:progress data.' + map_data["name"] + '.field' + str(field["id"]) + '.event.waves_len set value ' + str(len(event_database["events"][str(field["default_event"])]["waves"])) + '\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

output = []
path = base_path + 'update_display.mcfunction'
makedir(path)
for map_data in data["maps"]:
	for field in map_data["fields"]:

		if field["type"] == "field":
			output.append('data modify storage anemoland:progress data.' + map_data["name"] + '.field' + str(field["id"]) + '.display_update_flag set value 1b\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)


for map_data in data["maps"]:
	for field in map_data["fields"]:
		if not field["type"] == "field":
			continue
		output = []
		path = base_path + 'unlock/field/' + map_data["name"] + '/field' + field["id"] + '.mcfunction'
		makedir(path)
		return_pos = [map_data["pos"][0]-size*8/2+4+8*field["index"][1], map_data["pos"][1]+size*8/2-4-8*field["index"][0]]

		output.append('summon marker ' + str(return_pos[0]) + ' 0.0 ' + str(return_pos[1]) + ' {Tags:["unlock_flag"]}\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)
