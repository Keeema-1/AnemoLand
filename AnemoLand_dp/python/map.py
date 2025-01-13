import json
import os
import math

data_path = 'data/map.json'

with open(data_path , encoding='utf-8') as f:
	map_database = json.load(f)

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

with open('data/event.json' , encoding='utf-8') as f:
	event_database = json.load(f)

with open('data/common.json' , encoding='utf-8') as f:
	common_database = json.load(f)

namespace_core = common_database["namespace_core"]
namespace_contents = common_database["namespace_contents"]
namespace_storage = common_database["namespace_core"]

with open('data/mob/mob.json' , encoding='utf-8') as f:
	mob_database = json.load(f)

MAX_WAVES = 3

base_path = '../data/' + namespace_core + '/function/dev/map/'

arena_prepare_field = '04'

# base
for map_data in map_database["maps"]:
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
				for field_id, field_data in map_data["fields"].items():
					if field_id == map[y][x]:
						if field_id == "ship":
							flag = True
							break
				if not flag:
					output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -8 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~ ~ ~ ~7 ~ ~7 grass_block\n')
			if map[y][x] == "**":
				output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' -8 ' + str(center_pos[1]+y*8-size*4) + ' run fill ~ ~1 ~ ~7 ~1 ~7 stone\n')

	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

# barrier
for map_data in map_database["maps"]:
	path = base_path + map_data["name"] + '/barrier.mcfunction'
	makedir(path)
	output = []
	center_pos = map_data["pos"]
	size = map_data["size"]
	map = map_data["map"]
	for y in range(size):
		for x in range(size):
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4+0.5) + ' -1 ' + str(center_pos[1]+y*8-size*4+0.5) + ' run fill ~ ~ ~ ~7 ~ ~7 barrier\n')
			if map[y][x] in map_data["fields"] and "no_barrier" in map_data["fields"][map[y][x]] and map_data["fields"][map[y][x]]["no_barrier"]:
				continue
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4+0.5) + ' -1 ' + str(center_pos[1]+y*8-size*4+0.5) + ' run fill ~ ~1 ~ ~ ~6 ~7 barrier\n')
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4+0.5) + ' -1 ' + str(center_pos[1]+y*8-size*4+0.5) + ' run fill ~ ~1 ~ ~7 ~6 ~ barrier\n')
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4+0.5) + ' -1 ' + str(center_pos[1]+y*8-size*4+0.5) + ' run fill ~7 ~1 ~7 ~ ~6 ~7 barrier\n')
			output.append('execute positioned ' + str(center_pos[0]+x*8-size*4+0.5) + ' -1 ' + str(center_pos[1]+y*8-size*4+0.5) + ' run fill ~7 ~1 ~7 ~7 ~6 ~ barrier\n')
	output.append('execute positioned ' + str(center_pos[0]-size*4-0.5) + ' -1 ' + str(center_pos[1]-size*4-0.5) + ' run fill ~ ~1 ~ ~ ~6 ~' + str(size*8+1) + ' barrier\n')
	output.append('execute positioned ' + str(center_pos[0]-size*4-0.5) + ' -1 ' + str(center_pos[1]-size*4-0.5) + ' run fill ~ ~1 ~ ~' + str(size*8+1) + ' ~6 ~ barrier\n')
	output.append('execute positioned ' + str(center_pos[0]-size*4-0.5) + ' -1 ' + str(center_pos[1]-size*4-0.5) + ' run fill ~' + str(size*8+1) + ' ~1 ~' + str(size*8+1) + ' ~ ~6 ~' + str(size*8+1) + ' barrier\n')
	output.append('execute positioned ' + str(center_pos[0]-size*4-0.5) + ' -1 ' + str(center_pos[1]-size*4-0.5) + ' run fill ~' + str(size*8+1) + ' ~1 ~' + str(size*8+1) + ' ~' + str(size*8+1) + ' ~6 ~ barrier\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)


# display
for map_data in map_database["maps"]:
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
			for field_id, field_data in map_data["fields"].items():
				tags_add = ''
				if "auto_unlock" in field_data and field_data["auto_unlock"]:
					tags_add = ',"auto_unlock"'
				if field_id == map[y][x]:
					flag = True
					if field_data["type"] == "village":
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","village","village_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"translate":"anemoland.field.' + field_data["display_name"] + '"},{"text":"\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif field_data["type"] == "ship":
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","ship","ship_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"translate":"anemoland.field.' + field_data["display_name"] + '"},{"text":"\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif "special_field" in field_data and field_data["special_field"] in ["explore"]:
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","explore","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"🎣 ","color":"green"},{"translate":"anemoland.field_display.field_type.explore","color":"green"},{"text":" 🎣\\\\n","color":"green"},{"translate":"anemoland.field.' + field_data["display_name"] + '"},{"text":"\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif "special_field" in field_data and field_data["special_field"] in ["arena_prepare", "training"]:
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","explore","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"⚔ ","color":"red"},{"translate":"anemoland.field_display.field_type.battle","color":"red"},{"text":" ⚔\\\\n","color":"red"},{"translate":"anemoland.field.' + field_data["display_name"] + '"},{"text":"\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					elif field_data["type"] == "field":
						monsters = ',{"text":"???"}'
						enemies = set()
						enemies_boss = []
						min_level = 10000
						max_level = 0
						initial_event = field_data["default_event"]
						if "initial_event" in field_data:
							initial_event = field_data["initial_event"]
						event_data = event_database["events"][initial_event["id"]]
						waves_len = len(event_data["waves"])
						for wave_data_ in (event_data["waves"]):
							for wave_id, wave_level_add in wave_data_.items():
								wave_data = event_database["waves"][wave_id]["enemies"]
								for enemy in wave_data:
									min_level = min(enemy["level"] + wave_level_add + initial_event["level"], min_level)
									max_level = max(enemy["level"] + wave_level_add + initial_event["level"], max_level)
									if mob_database[enemy["entity_id"]]["type"] == "boss":
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
							monsters += ',{"translate":"anemoland.mob.' + enemy + '.icon.secret"}," "'
						for enemy in enemies:
							monsters += ',{"translate":"anemoland.mob.' + enemy + '.icon.secret"}," "'

						if ("decoy" in enemies):
							output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","field","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"⚔ ","color":"red"},{"translate":"anemoland.field_display.field_type.battle","color":"red"},{"text":" ⚔\\\\n","color":"red"},{"translate":"anemoland.field.' + field_data["display_name"] + '"},{"text":"\\\\n"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
						else:
							output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","field","field_' + map[y][x] + '"' + tags_add + '],text:\'["",{"text":"\\\\n"},{"text":"⚔ ","color":"red"},{"translate":"anemoland.field_display.field_type.battle","color":"red"},{"text":" ⚔\\\\n","color":"red"},{"translate":"anemoland.field.' + field_data["display_name"] + '"},{"text":"\\\\n"},{"text":"----------------\\\\n","color":"gray"},{"translate":"anemoland.field_display.monsters"},{"text":"\\\\n"}' + monsters + ',{"text":"\\\\n\\\\n\\\\n"},{"translate":"anemoland.field_display.num_waves"},{"text":" ' + str(len(event_database["events"][field_data["default_event"]["id"]]["waves"])) + '\\\\nLv. ' + ((str(min_level)) if (min_level == max_level) else (str(min_level) + ' - ' + str(max_level))) + '"}]\',billboard:"center",view_range:0.3,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}\n')
					break
			if flag == False:
				output.append('execute positioned ' + str(center_pos[0]+x*8-size*4 + 4) + ' 0.0 ' + str(center_pos[1]+y*8-size*4 + 4) + ' run summon text_display ~ ~-1.5 ~ {Tags:["area_info","' + map_data["name"] + '","field","field_' + map[y][x] + '","skip","auto_unlock"],text:\'[""]\',view_range:0}\n')

	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

# cloud
for map_data in map_database["maps"]:
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
				cloud_flag = False
				few_cloud_flag = False
				for field_id, field_data in map_data["fields"].items():
					if field_id == map[y][x]:
						cloud_flag = True
						if "no_cloud" in field_data and field_data["no_cloud"]:
							cloud_flag = False
							break
						if "no_barrier" in field_data and field_data["no_barrier"]:
							few_cloud_flag = True
							break
						elif "special_field" in field_data and field_data["special_field"] == "training":
							cloud_flag = False
							break
				if cloud_flag:
					if few_cloud_flag:
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' 0 ' + str(center_pos[1]+y*8-size*4) + ' run function ' + namespace_core + ':dev/map/common/cloud/few\n')
					else:
						output.append('execute positioned ' + str(center_pos[0]+x*8-size*4) + ' 0 ' + str(center_pos[1]+y*8-size*4) + ' run function ' + namespace_core + ':dev/map/common/cloud/full\n')

	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)




base_path = '../data/anemoland_contents/function/sys/area/'

# branch
output = []
path = base_path + 'branch.mcfunction'
makedir(path)
for map_data in map_database["maps"]:
	output.append('#> anemoland_contents:sys/area/branch\n')
	output.append('#\n')
	output.append('# 島ごとの分岐\n')
	output.append('#\n')
	output.append('# @within function ' + namespace_core + ':sys/player/area/playing\n')
	output.append('\n')
	output.append('execute if score @s area1 matches ' + str(map_data["score"]) + ' run return run function ' + namespace_contents + ':sys/area/' + map_data["name"] + '/branch\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

for map_data in map_database["maps"]:
	map_name = map_data["name"]
	center_pos = map_data["pos"]
	size = map_data["size"]

	# branch
	output = []
	path = base_path + map_name + '/branch.mcfunction'
	makedir(path)
	output.append('#> anemoland_contents:sys/area/' + map_name + '/branch\n')
	output.append('#\n')
	output.append('# マップ・村・フィールドで分岐\n')
	output.append('#\n')
	output.append('# @within function anemoland_core:sys/area/branch\n')
	output.append('\n')
	output.append('execute if score @s area2 matches 1.. run return run function ' + namespace_contents + ':sys/area/' + map_name + '/field/branch\n')
	output.append('execute if score @s area2 matches 0 run return run function ' + namespace_contents + ':sys/area/' + map_name + '/map/0\n')
	output.append('execute if score @s area2 matches ..-1 run return run function ' + namespace_contents + ':sys/area/' + map_name + '/village/branch\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# branch
	output = []
	path = base_path + map_name + '/field/branch.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "field":
			field_score = int(field_data["index"][0])*100+int(field_data["index"][1])
			output.append('execute if score @s area2 matches ' + str(field_score) + ' run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# branch
	output = []
	path = base_path + map_name + '/village/branch.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "village":
			field_score = int(field_data["index"][0])*100+int(field_data["index"][1])
			output.append('execute if score @s area2 matches -' + str(field_score) + ' run function ' + namespace_contents + ':sys/area/' + map_name + '/village/' + field_id + '/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# map
	output = []
	path = base_path + map_name + '/map/0.mcfunction'
	makedir(path)
	output.append('# フィールドに移動\n')
	output.append('    execute if score @s sneak_time matches 20.. as @e[type=text_display,tag=area_info,tag=active,distance=..4] run function anemoland_contents:sys/area/' + map_name + '/map/enter_field\n')
	output.append('# 既にプレイヤーがいるかチェック\n')
	output.append('    execute if predicate ' + namespace_core + ':random_chance/0_1 as @e[type=text_display,tag=area_info,distance=..8] at @s run function ' + namespace_contents + ':sys/area/' + map_name + '/map/exist_check/0\n')
	output.append('# フィールドディスプレイを更新\n')
	output.append('    execute if predicate ' + namespace_core + ':random_chance/0_2 as @e[type=text_display,tag=area_info,distance=..32] at @s run function ' + namespace_contents + ':sys/area/' + map_name + '/map/update_display/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# map
	output = []
	path = base_path + map_name + '/map/enter_field.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		field_score = int(field_data["index"][0])*100+int(field_data["index"][1])
		if field_data["type"] == "ship":
			output.append('execute if entity @s[tag=' + field_data["type"] + '_' + field_id + '] as @a[tag=player_check,limit=1] run return run function ' + namespace_core + ':sys/player/area/common/ship/0\n')
		elif field_data["type"] == "village":
			output.append('execute if entity @s[tag=' + field_data["type"] + '_' + field_id + '] as @a[tag=player_check,limit=1] run return run function ' + namespace_contents + ':sys/area/' + map_name + '/' + field_data["type"] + '/' + field_id + '/enter/0\n')
		else:
			output.append('execute if entity @s[tag=' + field_data["type"] + '_' + field_id + '] as @a[tag=player_check,limit=1] unless entity @a[scores={area0=100,area1=' + str(map_data["score"]) + ',area2=' + str(field_score) + '}] run return run function ' + namespace_contents + ':sys/area/' + map_name + '/' + field_data["type"] + '/' + field_id + '/enter/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# each field
	field_types = map_database["field_types"]
	for field_id, field_data in map_data["fields"].items():
		skip_battle_process = False
		if "special_field" in field_data and field_data["special_field"] in ["explore","arena_prepare"]:
			skip_battle_process = True
		if field_data["type"] == "village":
			skip_battle_process = True
		skip_reset_process = False
		if "special_field" in field_data and field_data["special_field"] in ["arena_prepare"]:
			skip_reset_process = True
		if field_data["type"] == "village":
			skip_reset_process = True

		if field_data["type"] == "field" or field_data["type"] == "village":
			field_type_data = field_types[field_data["field_type"]]
			center = [map_data["pos"][0] + field_data["offset"][0], map_data["pos"][1] + field_data["offset"][1]]
			field_score = int(field_data["index"][0])*100+int(field_data["index"][1])
			if field_data["type"] == "village":
				field_score *= -1
			exits = []
			for exit in field_type_data["exits"]:
				exits.append({"start": [center[0] + exit["start"][0] - field_type_data["center"][0], exit["start"][1], center[1] + exit["start"][2] - field_type_data["center"][2]], "aabb": exit["aabb"]})
			entrance = [center[0] + field_type_data["entrance"][0] - field_type_data["center"][0], field_type_data["entrance"][1], center[1] + field_type_data["entrance"][2] - field_type_data["center"][2]]
			return_pos = [map_data["pos"][0]-size*8/2+4+8*field_data["index"][1], map_data["pos"][1]+size*8/2-4-8*field_data["index"][0]]

			# 0
			output = []
			path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/0.mcfunction'
			makedir(path)
			distance = max(int(math.sqrt( (entrance[0]-center[0])**2 + (entrance[2]-center[1])**2 ) - 6), 8)
			for exit in exits:
				exit_start = exit["start"]
				output.append('execute positioned ' + str(exit_start[0]) + ' ' + str(exit_start[1]) + ' ' + str(exit_start[2]) + ' if entity @s[dx=' + str(exit["aabb"][0]-1) + ',dy=2,dz=' + str(exit["aabb"][1]-1) + '] at @s run function ' + namespace_contents + ':sys/area/' + map_name + '/' + field_data["type"] + '/' + field_id + '/return/0\n')
			if not skip_battle_process:
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{summon_flag:1b} if loaded ~ ~ ~ unless entity @e[tag=enemy,tag=mob_root,distance=..64] run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/clear/0\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{summon_flag:1b} if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{wave_interval:1b} unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/summon/warn\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{summon_flag:1b} unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{wave_interval:1b} unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} if entity @a[distance=..' + str(distance) + ',tag=player_check,limit=1] run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/summon/0\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/clear/tick\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} run function ' + namespace_core + ':sys/player/title/actionbar/field/skill_gauge/0\n')
			if "special_field" in field_data and field_data["special_field"]  in ["arena_prepare"]:
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function ' + namespace_core + ':sys/player/area/common/arena_prepare/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# clear
			if not skip_battle_process:
				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/clear/0.mcfunction'
				makedir(path)

				for i in range(MAX_WAVES):
					output.append('execute unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{wave:' + str(i+1) + ',waves_len:' + str(i+1) + '} run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/clear/clear\n')
				for i in range(MAX_WAVES-1)[1::-1]:
					output.append('execute unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{wave:' + str(i+1) + '} unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{waves_len:' + str(i+1) + '} run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/clear/wave_clear\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/clear/wave_clear.mcfunction'
				makedir(path)
				output.append('title @a[distance=..64] times 10 40 10\n')
				output.append('title @a[distance=..64] subtitle {"text": "WAVE CLEAR!","color": "white"}\n')
				output.append('title @a[distance=..64] title ""\n')
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.wave_interval set value 1b\n')
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.summon_flag set value 0b\n')
				output.append('schedule function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/clear/wave_interval 5s\n')
				for i in range(MAX_WAVES-1)[1::-1]:
					output.append('execute if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{wave:' + str(i+1) + '} run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.wave set value ' + str(i+2) + '\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/clear/wave_interval.mcfunction'
				makedir(path)
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.wave_interval set value 0b\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/clear/clear.mcfunction'
				makedir(path)
				if "unlock" in field_data:
					for unlock_id in field_data["unlock"]:
						for field2_id, field2_data in map_data["fields"].items():
							if field2_id == unlock_id:
								# return_pos2 = [map_data["pos"][0]-size*8/2+4+8*field2["index"][1], map_data["pos"][1]+size*8/2-4-8*field2["index"][0]]
								output.append('execute unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field2_id + '{cleared_once:1b} run function ' + namespace_contents + ':command/progress/unlock/field/' + map_name + '/field' + field2_id + '\n')
				output.append('execute unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared_once:1b} run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/clear/first_clear\n')
				output.append('execute if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{boss_flag:1b} run function ' + namespace_core + ':sys/player/area/common/field/clear_boss\n')
				output.append('execute unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{boss_flag:1b} run function ' + namespace_core + ':sys/player/area/common/field/clear_mob\n')
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.cleared set value 1b\n')
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.cleared_once set value 1b\n')
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.random_event_enable set value 1b\n')
				output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/clear/clear_\n')
				output.append('data modify storage temp:_ data.event_id.event_id set from storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.event_id\n')
				output.append('function ' + namespace_contents + ':sys/event/clear with storage temp:_ data.event_id\n')
				output.append('function ' + namespace_contents + ':command/field_event/' + map_name + '/change/' + field_data["default_event"]["id"] + ' {field_id:' + field_id + ', level: ' +  str(field_data["default_event"]["level"]) + '}\n')
				output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/event/update/0\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/clear/first_clear.mcfunction'
				makedir(path)
				output.append('summon marker ' + str(return_pos[0]) + ' 0.0 ' + str(return_pos[1]) + ' {Tags:["clear_flag"]}\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/clear/tick.mcfunction'
				makedir(path)
				output.append('function ' + namespace_core + ':sys/player/title/actionbar/field/return/0\n')
				output.append('execute if score @s sneak_time matches 20.. run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/return/0\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			# enter
			output = []
			path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/enter/0.mcfunction'
			makedir(path)
			if not skip_reset_process:
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function ' + namespace_contents + ':sys/area/' + map_name + '/' + field_data["type"] + '/' + field_id + '/init/0\n')
			if not skip_battle_process:
				output.append('execute at @s as @a[distance=..4] run function ' + namespace_contents + ':sys/area/' + map_name + '/' + field_data["type"] + '/' + field_id + '/enter/each_participant\n')
			else:
				output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/' + field_data["type"] + '/' + field_id + '/enter/each_participant\n')
			if field_data["type"] == "village":
				output.append('schedule function ' + namespace_contents + ':sys/area/' + map_name + '/' + field_data["type"] + '/' + field_id + '/update/0 10t\n')
			# output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/enter/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# enter
			output = []
			path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/enter/each_participant.mcfunction'
			makedir(path)
			# output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field["id"] + '/init/0\n')
			output.append('scoreboard players set @s area0 100\n')
			output.append('scoreboard players set @s area1 ' + str(map_data["score"]) + '\n')
			output.append('scoreboard players set @s area2 ' + str(field_score) + '\n')
			output.append('tp @s ' + str(entrance[0]) + ' ' + str(entrance[1]) + ' ' + str(entrance[2]) + ' 180 30\n')
			enter_type = field_data["type"]
			if "special_field" in field_data and field_data["special_field"] == "arena_prepare":
				enter_type = "village"
			output.append('execute at @s run function ' + namespace_core + ':sys/player/area/common/' + enter_type + '/enter\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# village
			if field_data["type"] == "village":
				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/update/0.mcfunction'
				makedir(path)
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function ' + namespace_core + ':sys/player/area/common/village/update/0\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			# init
			if not skip_reset_process:
				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/init/0.mcfunction'
				makedir(path)
				output.append('# エンティティを除去\n')
				output.append('    function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/init/remove_entity\n')
				output.append('    schedule function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/init/remove_entity 1s\n')
				output.append('# フィールド状態のデータをリセット\n')
				output.append('    data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.summon_flag set value 0b\n')
				output.append('    data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.cleared set value 0b\n')
				output.append('    data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.wave set value 1\n')
				output.append('    data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.wave_interval set value 0b\n')
				output.append('    data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.boss_flag set value 0b\n')
				output.append('    data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.npc1_exist set value 0b\n')
				output.append('# forceload\n')
				output.append('    execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run forceload add ~-32 ~-32 ~32 ~32\n')
				output.append('    schedule function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/init/forceload_remove 5s replace\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/init/remove_entity.mcfunction'
				makedir(path)
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function ' + namespace_core + ':sys/player/area/common/field/remove_entity/0\n')
				# output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' if loaded ~ ~ ~ run function ' + namespace_core + ':sys/player/area/common/field/remove_entity/0\n')
				# output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless loaded ~ ~ ~ run schedule function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/init/remove_entity 1t\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/init/forceload_remove.mcfunction'
				makedir(path)
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run forceload remove ~-32 ~-32 ~32 ~32\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			# return
			output = []
			path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/return/0.mcfunction'
			makedir(path)
			if "special_field" in field_data and field_data["special_field"] == "arena":
				output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + arena_prepare_field + '/enter/0\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/init/0\n')
			else:
				output.append('function ' + namespace_core + ':sys/player/area/common/map/enter\n')
				output.append('scoreboard players set @s area0 100\n')
				output.append('scoreboard players set @s area1 ' + str(map_data["score"]) + '\n')
				output.append('scoreboard players set @s area2 0\n')
				output.append('execute positioned ' + str(return_pos[0]) + ' 0.0 ' + str(return_pos[1]) + ' run tp @s ~ ~ ~2 180 ~\n')
				if not skip_reset_process:
					output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' unless entity @a[distance=..128] run function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/init/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			# summon
			if not skip_battle_process and not ("special_field" in field_data and field_data["special_field"] == "arena"):
				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/summon/0.mcfunction'
				makedir(path)
				output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/field/' + field_id + '/init/remove_entity\n')
				output.append('data modify storage temp:_ data.event set from storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event\n')
				output.append('execute if data storage anemoland:progress data.' + map_name + '.field.' + field_id + '{cleared_once:1b} at @p run function ' + namespace_core + ':sys/player/area/common/field/summon_npc\n')
				output.append('execute if data storage temp:_ data.event.with_npc1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.npc1_exist set value 1b\n')
				output.append('function ' + namespace_core + ':sys/player/area/common/field/set_pet_timer\n')
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.summon_flag set value 1b\n')
				for i in range(MAX_WAVES):
					output.append('execute if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{wave:' + str(i+1) + '} run data modify storage temp:_ data.wave set from storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.waves[' + str(i) + ']\n')
				output.append('data remove storage temp:_ data.event_bonus\n')
				output.append('data modify storage temp:_ data.event_bonus set from storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function ' + namespace_contents + ':sys/event/field/branch with storage temp:_ data.wave\n')
				output.append('execute if score #boss_flag temp matches 1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.boss_flag set value 1b\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				output = []
				path = base_path + map_name + '/' + field_data["type"] + '/' + field_id + '/summon/warn.mcfunction'
				makedir(path)
				for i in range(MAX_WAVES):
					output.append('execute if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event{wave:' + str(i+1) + '} run data modify storage temp:_ data.wave.wave set from storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.waves[' + str(i) + ']\n')
				output.append('execute positioned ' + str(center[0]) + ' 0.0 ' + str(center[1]) + ' run function ' + namespace_contents + ':sys/event/field/warn_branch with storage temp:_ data.wave\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			# random_event
			if "random_event" in field_data:
				output = []
				path = base_path + map_name + '/event/update/field/' + field_id + '.mcfunction'
				makedir(path)
				random_event_data = event_database["random_events"][field_data["random_event"]]
				output.append('# フィールドにプレイヤーがいたらスキップ\n')
				output.append('    execute positioned ' + str(center[0]) + ' 0 ' + str(center[1]) + ' if entity @a[distance=..128] unless data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared:1b} run return 1\n')
				output.append('# ボーナス\n')
				output.append('    data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus set value {xp:0,gold:0,drop:0}\n')
				output.append('    execute store result score #random temp run random value 0..19\n')
				output.append('    execute if score #random temp matches 0..1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.xp set value 1\n')
				output.append('    execute if score #random temp matches 2 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.xp set value 2\n')
				output.append('    execute store result score #random temp run random value 0..19\n')
				output.append('    execute if score #random temp matches 0..1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.gold set value 1\n')
				output.append('    execute if score #random temp matches 2 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.gold set value 2\n')
				output.append('    execute store result score #random temp run random value 0..19\n')
				output.append('    execute if score #random temp matches 0..1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.drop set value 1\n')
				output.append('    execute if score #random temp matches 2 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.drop set value 2\n')
				output.append('# 一定確率でイベントを変化させずにスキップ\n')
				output.append('    execute store result score #random temp run random value 0..999\n')
				output.append('    execute if score #random temp matches ' + str(int(random_event_data["random_event_chance"]*1000)) + '.. run return 1\n')
				output.append('# フィールドidとレベルをセット\n')
				output.append('    data modify storage temp:_ data.field_event set value {field_id:' + field_id + ',level:10}\n')
				output.append('    execute store result score #level temp run random value 1..3\n')
				output.append('    execute if data storage anemoland:progress data.rank{silver:1b} store result score #level temp run random value 1..5\n')
				output.append('    execute if data storage anemoland:progress data.rank{gold:1b} store result score #level temp run random value 1..8\n')
				output.append('    execute store result storage temp:_ data.field_event.level int 5 run scoreboard players get #level temp\n')
				weight_sum_all = 0
				for random_event_item in random_event_data["random_events"]:
					weight_sum_all += random_event_item["weight"]
				output.append('execute store result score #random temp run random value 0..' + str(weight_sum_all-1) + '\n')
				weight_sum = 0
				for random_event_item in random_event_data["random_events"]:
					# レベル下限・上限チェック
					# print(random_event_item)
					# print(event_database["events"][random_event_item["event"]])
					if "level_range" in event_database["events"][random_event_item["event"]]: # レベル上限下限が設定されているイベントの場合
						level_range = event_database["events"][random_event_item["event"]]["level_range"]
						output.append('execute if score #random temp matches ' + str(weight_sum) + '..' + str(weight_sum+random_event_item["weight"]-1) + ' unless score #level temp matches ' + str(level_range[0]//5) + '.. run data modify storage temp:_ data.field_event.level set value ' + str(level_range[0]) + '\n')
						output.append('execute if score #random temp matches ' + str(weight_sum) + '..' + str(weight_sum+random_event_item["weight"]-1) + ' unless score #level temp matches ..' + str(level_range[1]//5) + ' run data modify storage temp:_ data.field_event.level set value ' + str(level_range[1]) + '\n')
					# input()
					predicates = ''
					for wave_ in event_database["events"][random_event_item["event"]]["waves"]:
						for wave_id_, wave_level_ in wave_.items():
							wave_data_ = event_database["waves"][wave_id_]
							enemies_ = set()
							for enemy_ in wave_data_["enemies"]:
								entity_ = enemy_["entity_id"]
								if not entity_ in enemies_:
									predicates += ' if data storage ' + namespace_storage + ':progress data.mob_list.' + entity_ + '{unlock:1b}'
								enemies_.add(enemy_["entity_id"])
					output.append('execute if score #random temp matches ' + str(weight_sum) + '..' + str(weight_sum+random_event_item["weight"]-1) + '' + predicates + ' run function ' + namespace_contents + ':command/field_event/' + map_name + '/change/' + random_event_item["event"] + ' with storage temp:_ data.field_event\n')
					weight_sum += random_event_item["weight"]
				output.append('data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus set value {xp:0,gold:0,drop:0}\n')
				output.append('# ボーナス\n')
				output.append('    execute store result score #random temp run random value 0..19\n')
				output.append('    execute if score #random temp matches 0..1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.xp set value 1\n')
				output.append('    execute if score #random temp matches 2 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.xp set value 2\n')
				output.append('    execute store result score #random temp run random value 0..19\n')
				output.append('    execute if score #random temp matches 0..1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.gold set value 1\n')
				output.append('    execute if score #random temp matches 2 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.gold set value 2\n')
				output.append('    execute store result score #random temp run random value 0..19\n')
				output.append('    execute if score #random temp matches 0..1 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.drop set value 1\n')
				output.append('    execute if score #random temp matches 2 run data modify storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.event.bonus.drop set value 2\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)


for map_data in map_database["maps"]:
	map_name = map_data["name"]
	output = []
	path = base_path + map_data["name"] + '/map/update_display/0.mcfunction'
	makedir(path)
	output.append('data remove storage temp:_ data.field_display_data\n')
	output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/map/update_display/00\n')
	output.append('execute unless data storage temp:_ data.field_display_data{display_update_flag:1b} run return 1\n')
	output.append('data modify storage temp:_ data.field_display_macro.field_name set from storage temp:_ data.field_display_data.display_name\n')
	output.append('data modify storage temp:_ data.field_display_macro.level set from storage temp:_ data.field_display_data.event.waves[0].level\n')
	output.append('data modify storage temp:_ data.field_display_macro.bonus_display_base set value ""\n')
	output.append('data modify storage temp:_ data.field_display_macro.bonus_display_gold set value ""\n')
	output.append('data modify storage temp:_ data.field_display_macro.bonus_display_xp set value ""\n')
	output.append('data modify storage temp:_ data.field_display_macro.bonus_display_drop set value ""\n')
	output.append('execute if data storage temp:_ data.field_display_data.event.bonus unless data storage temp:_ data.field_display_data.event.bonus{gold:0,xp:0,drop:0} run data modify storage temp:_ data.field_display_macro.bonus_display_base set value ",{\\"text\\":\\"\\\\\\\\n\\\\\\\\n【\\",\\"color\\":\\"aqua\\"},{\\"translate\\":\\"anemoland.common.bonus\\",\\"color\\":\\"aqua\\"},{\\"text\\":\\"】\\",\\"color\\":\\"aqua\\"}"\n')
	output.append('execute if data storage temp:_ data.field_display_data.event.bonus{gold:1} run data modify storage temp:_ data.field_display_macro.bonus_display_gold set value ",{\\"text\\":\\"\\\\\\\\n\\"},{\\"translate\\":\\"anemoland.common.gold\\",\\"color\\":\\"aqua\\"},{\\"text\\":\\" +50%\\",\\"color\\":\\"aqua\\"}"\n')
	output.append('execute if data storage temp:_ data.field_display_data.event.bonus{gold:2} run data modify storage temp:_ data.field_display_macro.bonus_display_gold set value ",{\\"text\\":\\"\\\\\\\\n\\"},{\\"translate\\":\\"anemoland.common.gold\\",\\"color\\":\\"aqua\\"},{\\"text\\":\\" +100%\\",\\"color\\":\\"aqua\\"}"\n')
	output.append('execute if data storage temp:_ data.field_display_data.event.bonus{xp:1} run data modify storage temp:_ data.field_display_macro.bonus_display_xp set value ",{\\"text\\":\\"\\\\\\\\n\\"},{\\"translate\\":\\"anemoland.common.gold\\",\\"color\\":\\"aqua\\"},{\\"text\\":\\" +50%\\",\\"color\\":\\"aqua\\"}"\n')
	output.append('execute if data storage temp:_ data.field_display_data.event.bonus{xp:2} run data modify storage temp:_ data.field_display_macro.bonus_display_xp set value ",{\\"text\\":\\"\\\\\\\\n\\"},{\\"translate\\":\\"anemoland.common.gold\\",\\"color\\":\\"aqua\\"},{\\"text\\":\\" +100%\\",\\"color\\":\\"aqua\\"}"\n')
	output.append('execute if data storage temp:_ data.field_display_data.event.bonus{drop:1} run data modify storage temp:_ data.field_display_macro.bonus_display_drop set value ",{\\"text\\":\\"\\\\\\\\n\\"},{\\"translate\\":\\"anemoland.common.gold\\",\\"color\\":\\"aqua\\"},{\\"text\\":\\" +50%\\",\\"color\\":\\"aqua\\"}"\n')
	output.append('execute if data storage temp:_ data.field_display_data.event.bonus{drop:2} run data modify storage temp:_ data.field_display_macro.bonus_display_drop set value ",{\\"text\\":\\"\\\\\\\\n\\"},{\\"translate\\":\\"anemoland.common.gold\\",\\"color\\":\\"aqua\\"},{\\"text\\":\\" +100%\\",\\"color\\":\\"aqua\\"}"\n')
	output.append('function ' + namespace_contents + ':sys/event/display/branch\n')
	output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/map/update_display/01\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/update_display/00.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "field":
			output.append('execute if entity @s[tag=field_' + field_id + '] run data modify storage temp:_ data.field_display_data set from storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/update_display/01.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "field":
			output.append('execute if entity @s[tag=field_' + field_id + '] run data remove storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '.display_update_flag\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/exist_check/0.mcfunction'
	makedir(path)
	output.append('execute if entity @s[tag=!player_exist] run return run function ' + namespace_contents + ':sys/area/' + map_name + '/map/exist_check/00\n')
	output.append('execute if entity @s[tag=player_exist] run return run function ' + namespace_contents + ':sys/area/' + map_name + '/map/exist_check/01\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/exist_check/00.mcfunction'
	makedir(path)
	output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/map/exist_check/000\n')
	output.append('execute if entity @s[tag=player_exist,tag=field] run summon text_display ~ ~-1 ~ {Tags:["player_exist_display"],text:\'{"text":"⚔ 交戦中 ⚔","color":"red"}\',transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f]},billboard:"center"}\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/exist_check/01.mcfunction'
	makedir(path)
	output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/map/exist_check/010\n')
	output.append('execute if entity @s[tag=!player_exist] positioned ~ ~-1 ~ run kill @e[type=text_display,tag=player_exist_display,distance=..2]\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/exist_check/000.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "field":
			field_score = int(field_data["index"][0])*100+int(field_data["index"][1])
			output.append('execute if entity @s[tag=field_' + field_id + '] if entity @a[scores={area0=100,area1=' + str(map_data["score"]) + ',area2=' + str(field_score) + '}] run tag @s add player_exist\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	output = []
	path = base_path + map_data["name"] + '/map/exist_check/010.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "field":
			field_score = int(field_data["index"][0])*100+int(field_data["index"][1])
			output.append('execute if entity @s[tag=field_' + field_id + '] unless entity @a[scores={area0=100,area1=' + str(map_data["score"]) + ',area2=' + str(field_score) + '}] run tag @s remove player_exist\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# random_event
	output = []
	path = base_path + map_name + '/event/update/0.mcfunction'
	makedir(path)
	output.append('scoreboard players add #' + map_name + '.event_counter score 1\n')
	output.append('execute unless score #' + map_name + '.event_counter score >= #' + map_name + '.random_event_cycle score run return run function ' + namespace_contents + ':sys/area/' + map_name + '/event/update/01\n')
	output.append('scoreboard players set #' + map_name + '.event_counter score 0\n')
	output.append('tellraw @a {"translate":"anemoland.general.random_event_changed","color":"yellow"}\n')
	output.append('function ' + namespace_contents + ':sys/area/' + map_name + '/event/update/00\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# random_event
	output = []
	path = base_path + map_name + '/event/update/00.mcfunction'
	makedir(path)
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "field" and "random_event" in field_data:
			output.append('execute if data storage ' + namespace_storage + ':progress data.' + map_name + '.field.' + field_id + '{cleared_once:1b,event:{random_event_enable:1b}} run function ' + namespace_contents + ':sys/area/' + map_name + '/event/update/field/' + field_id + '\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# random_event
	output = []
	path = base_path + map_name + '/event/update/01.mcfunction'
	makedir(path)
	output.append('tellraw @a [{"translate":"anemoland.general.random_event_changed_after","color":"yellow"},{"score":{"name":"#' + map_name + '.event_counter","objective":"score"}},{"text":"/"},{"score":{"name":"#' + map_name + '.random_event_cycle","objective":"score"}}]\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



# structure

base_path = '../data/anemoland/function/dev/field/'

# each field_type
for field_type_name, field_type_data in map_database["field_types"].items():
	center = field_type_data["center"]
	structure_size = field_type_data["structure_size"]

	# save
	output = []
	path = base_path + 'template/' + field_type_name.lower() + '/save/0.mcfunction'
	makedir(path)
	for i in range(structure_size):
		for j in range(structure_size):
			output.append('execute positioned ' + str(int(center[0])) + ' 32 ' + str(int(center[2])) + ' run setblock ~' + str(int(i*48-structure_size*48/2)) + ' 32 ~' + str(int(j*48-structure_size*48/2)) + ' structure_block[mode=save]\n')
			output.append('execute positioned ' + str(int(center[0])) + ' 32 ' + str(int(center[2])) + ' run data merge block ~' + str(int(i*48-structure_size*48/2)) + ' 32 ~' + str(int(j*48-structure_size*48/2)) + ' {posX:0,posY:-40,posZ:0,sizeX:48,sizeY:32,sizeZ:48,name:"anemoland:field/' + field_type_name.lower() + '/' + str(i) + '_' + str(j) + '"}\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

# 	output = []
# 	path = base_path + 'template/' + field_type_name.lower() + '/save/macro.mcfunction'
# 	makedir(path)
# 	for i in range(structure_size):
# 		for j in range(structure_size):
# 			output.append('$execute positioned $(center_x) 32 $(center_z) run setblock ~' + str(int(i*48-structure_size*48/2)) + ' ~ ~' + str(int(j*48-structure_size*48/2)) + ' structure_block[mode=save]\n')
# 			output.append('$execute positioned $(center_x) 32 $(center_z) run data merge block ~' + str(int(i*48-structure_size*48/2)) + ' ~ ~' + str(int(j*48-structure_size*48/2)) + ' {posX:0,posY:-40,posZ:0,sizeX:48,sizeY:32,sizeZ:48,name:"field/' + field_type_name.lower() + '/' + str(i) + '_' + str(j) + '"}\n')
# 	with open(path, 'w', encoding='utf-8') as f:
# 		f.writelines(output)


for map_data in map_database["maps"]:
	map_name = map_data["name"]
	center_pos = map_data["pos"]

	# each field
	field_types = map_database["field_types"]
	for field_id, field_data in map_data["fields"].items():
		if field_data["type"] == "field":
			field_type_data = field_types[field_data["field_type"]]
			structure_size = field_type_data["structure_size"]
			center = [map_data["pos"][0] + field_data["offset"][0], map_data["pos"][1] + field_data["offset"][1]]

			# load
			output = []
			path = base_path + 'template/' + field_data["field_type"].lower() + '/load/' + map_name + '/' + str(int(center[0])) + '_' + str(int(center[1])) + '.mcfunction'
			makedir(path)
			output.append('execute positioned ' + str(int(center[0])) + ' 0 ' + str(int(center[1])) + ' unless entity @s[distance=..32] run return run tp ~ ~ ~\n')
			for i in range(structure_size):
				for j in range(structure_size):
					output.append('execute positioned ' + str(int(center[0] + i*48-structure_size*48/2)) + ' -8 ' + str(int(center[1] + j*48-structure_size*48/2)) + ' run place template anemoland:field/' + field_data["field_type"].lower() + '/' + str(i) + '_' + str(j) +'\n')
					output.append('execute positioned ' + str(int(center[0] + i*48-structure_size*48/2)) + ' -1 ' + str(int(center[1] + j*48-structure_size*48/2)) + ' run fill ~ ~ ~ ~47 -3 ~47 grass_block replace air\n')
					if "biome" in field_type_data:
						output.append('execute positioned ' + str(int(center[0] + i*48-structure_size*48/2)) + ' -1 ' + str(int(center[1] + j*48-structure_size*48/2)) + ' run fillbiome ~ ~ ~ ~47 8 ~47 ' + field_type_data["biome"] + '\n')
						output.append('execute positioned ' + str(int(center[0] + i*48-structure_size*48/2)) + ' 9 ' + str(int(center[1] + j*48-structure_size*48/2)) + ' run fillbiome ~ ~ ~ ~47 16 ~47 ' + field_type_data["biome"] + '\n')
			output.append('execute positioned ' + str(center[0]) + ' 0 ' + str(center[1]) + ' run kill @e[tag=area_entrance,distance=..64]\n')
			for exit in field_type_data["exits"]:
				output.append('execute positioned ' + str(center[0] + exit["start"][0]+exit["aabb"][0]/2 - field_type_data["center"][0]) + ' ' + str( exit["start"][1]) + ' ' + str(center[1] + exit["start"][2]+exit["aabb"][1]/2 - field_type_data["center"][2] - 0.5) + ' run function ' + namespace_core + ':dev/field/common/area_entrance/x\n')
			output.append('tp ' + str(int(center[0])) + ' 0 ' + str(int(center[1])) + '\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)


base_path = '../data/' + namespace_contents + '/function/command/progress/'

output = []
path = base_path + 'init_event.mcfunction'
makedir(path)
for map_data in map_database["maps"]:
	for field_id, field_data in map_data["fields"].items():
		if "special_field" in field_data and field_data["special_field"] in ["explore","arena_prepare"]:
			continue

		if field_data["type"] == "field":
			initial_event = field_data["default_event"]
			if "initial_event" in field_data:
				initial_event = field_data["initial_event"]
			waves_data = []
			for wave_data in event_database["events"][str(initial_event["id"])]["waves"]:
				for wave_id, wave_level in wave_data.items():
					waves_data.append({"id":wave_id, "level": initial_event["level"]})
			output.append('data modify storage ' + namespace_storage + ':progress data.' + map_data["name"] + '.field.' + str(field_id) + '.event.random_event_enable set value 0b\n')
			output.append('data modify storage ' + namespace_storage + ':progress data.' + map_data["name"] + '.field.' + str(field_id) + '.display_name set value "' + field_data["display_name"] + '"\n')
			output.append('data modify storage ' + namespace_storage + ':progress data.' + map_data["name"] + '.field.' + str(field_id) + '.event.event_id set value ' + str(initial_event["id"]) + '\n')
			output.append('data modify storage ' + namespace_storage + ':progress data.' + map_data["name"] + '.field.' + str(field_id) + '.event.waves set value ' + str(waves_data) + '\n')
			output.append('data modify storage ' + namespace_storage + ':progress data.' + map_data["name"] + '.field.' + str(field_id) + '.event.waves_len set value ' + str(len(event_database["events"][str(initial_event["id"])]["waves"])) + '\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

output = []
path = base_path + 'update_display.mcfunction'
makedir(path)
for map_data in map_database["maps"]:
	for field_id, field_data in map_data["fields"].items():

		if field_data["type"] == "field":
			output.append('data modify storage ' + namespace_storage + ':progress data.' + map_data["name"] + '.field.' + str(field_id) + '.display_update_flag set value 1b\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)


for map_data in map_database["maps"]:
	for field_id, field_data in map_data["fields"].items():
		if not field_data["type"] == "field":
			continue
		output = []
		path = base_path + 'unlock/field/' + map_data["name"] + '/field' + field_id + '.mcfunction'
		makedir(path)
		return_pos = [map_data["pos"][0]-size*8/2+4+8*field_data["index"][1], map_data["pos"][1]+size*8/2-4-8*field_data["index"][0]]

		output.append('summon marker ' + str(return_pos[0]) + ' 0.0 ' + str(return_pos[1]) + ' {Tags:["unlock_flag"]}\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)
