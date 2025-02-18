import json
import os
import math

data_path = 'data/event.json'

with open(data_path , encoding='utf-8') as f:
	data = json.load(f)

with open('data/mob.json' , encoding='utf-8') as f:
	mob_data = json.load(f)

with open('data/map.json' , encoding='utf-8') as f:
	map_data = json.load(f)

base_path = '../data/anemoland/function/sys/event/'

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))


for event_id, event_data in data["events"].items():

	for wave_data_ in event_data["waves"]:
		for wave_id, wave_level in wave_data_.items():
			wave_data = data["waves"][wave_id]

			path = base_path + 'field/wave/' + str(wave_id) + '_' + str(wave_level) + '.mcfunction'
			makedir(path)
			output = []
			for enemy in wave_data["enemies"]:
				if "variant" in enemy:
					output.append('execute positioned ~' + str(enemy["pos"][0]) + ' ~ ~' + str(enemy["pos"][1]) + ' run function anemoland:sys/entity/mob/' + enemy["entity_id"] + '/summon/enemy/' + enemy["variant"] + '/level {level:' + str(enemy["level"] + wave_level) + '}\n')
				else:
					output.append('execute positioned ~' + str(enemy["pos"][0]) + ' ~ ~' + str(enemy["pos"][1]) + ' run function anemoland:sys/entity/mob/' + enemy["entity_id"] + '/summon/enemy/level {level:' + str(enemy["level"] + wave_level) + '}\n')
			if "bgm" in wave_data:
				output.append('execute as @a[distance=..64] at @s run function anemoland:sys/player/music/' + wave_data["bgm"] + '/start\n')
			if "boss_flag" in wave_data and wave_data["boss_flag"]:
				output.append('scoreboard players set #boss_flag temp 1\n')
			else:
				output.append('scoreboard players set #boss_flag temp 0\n')

			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			path = base_path + 'field/wave/warn/' + str(wave_id) + '.mcfunction'
			makedir(path)
			output = []
			for enemy in wave_data["enemies"]:
				output.append('execute positioned ~' + str(enemy["pos"][0]) + ' ~ ~' + str(enemy["pos"][1]) + ' run particle witch ~ ~ ~ 0.3 0 0.3 0 1\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)


	path = base_path + 'display/' + str(event_id) + '.mcfunction'
	makedir(path)
	output = []
	enemies = set()
	enemies_boss = []
	min_level = 10000
	max_level = 0
	waves_len = len(event_data["waves"])
	for wave_data in event_data["waves"]:
		for wave_id, wave_level in wave_data.items():
			wave_data = data["waves"][wave_id]["enemies"]
			for enemy in wave_data:
				min_level = min(enemy["level"] + wave_level, min_level)
				max_level = max(enemy["level"] + wave_level, max_level)
				if mob_data[enemy["entity_id"]]["type"] == "boss":
					if "variant" in enemy:
						enemies_boss.append(enemy["entity_id"] + '.' + enemy["variant"])
					else:
						enemies_boss.append(enemy["entity_id"])
				else:
					if "variant" in enemy:
						enemies.add(enemy["entity_id"] + '.' + enemy["variant"])
					else:
						enemies.add(enemy["entity_id"])
	display_add = ''
	if "display_overwrite" in event_data:
		enemies_boss = event_data["display_overwrite"]["enemies"]
		enemies = set()
		min_level = min(event_data["display_overwrite"]["levels"])
		max_level = max(event_data["display_overwrite"]["levels"])
		waves_len = event_data["display_overwrite"]["waves"]
	for enemy in enemies_boss:
		display_add += ',{"translate":"mob.' + enemy + '"}," "'
	for enemy in enemies:
		display_add += ',{"translate":"mob.' + enemy + '"}," "'
	display_add2 = ''
	if "npc" in event_data and event_data["npc"]["npc1"]:
		display_add2 += ',{"text":"\\\\n<同行者あり>","color":"yellow"}'
	output.append('$data modify entity @s text set value \'["",{"text":"\\\\n"},{"text":"<戦闘フィールド>\\\\n","color":"yellow"},{"text":"$(field_name)\\\\n"},{"text":"----------------\\\\n"},{"text":"出現モンスター\\\\n"}' + display_add + ',{"text":"\\\\n\\\\n\\\\nウェーブ数 ' + str(waves_len) + '\\\\nLv. ' + ((str(min_level)) if (min_level == max_level) else (str(min_level) + ' - ' + str(max_level))) + '"}' + display_add2 + '$(bonus_display_base)$(bonus_display_gold)$(bonus_display_xp)$(bonus_display_drop)]\'\n')
	# output.append('#$tellraw @a [""$(bonus_display_base)$(bonus_display_gold)$(bonus_display_xp)$(bonus_display_drop)]\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)


for event_id, event_data in data["events"].items():
	path = base_path + 'clear/' + str(event_id) + '.mcfunction'
	makedir(path)
	output = []
	# output.append('tellraw @a "clear ' + event_id + '"\n')
	if "triggers" in event_data:
		if "clear" in event_data["triggers"]:
			for function_ in event_data["triggers"]["clear"]:
				if function_["type"] == "talk":
					output.append('function anemoland:command/talk/' + str(function_["npc_id"]) + '/' + function_["talk_id"] + '\n')
		elif "first_clear" in event_data["triggers"]:
			for function_ in event_data["triggers"]["first_clear"]:
				if function_["type"] == "talk":
					output.append('execute unless data storage anemoland:progress data.event_list.' + event_id + '{cleared:1b} run function anemoland:command/talk/' + str(function_["npc_id"]) + '/' + function_["talk_id"] + '\n')
	output.append('data modify storage anemoland:progress data.event_list.' + event_id + '.cleared set value 1b\n')
	if "unlock" in event_data:
		for unlock_data in event_data["unlock"]:
			predicate = ''
			if "requirements" in unlock_data:
				for requirement in unlock_data["requirements"]:
					if requirement["type"] == "event":
						predicate += ' if data storage anemoland:progress data.event_list.' + requirement["id"] + '{cleared:1b}'
			if unlock_data["type"] == "rank":
				output.append('execute' + predicate + ' unless data storage anemoland:progress data.rank{' + unlock_data["id"] + ':1b} run function anemoland:command/progress/unlock/rank/' + unlock_data["id"] + '\n')
			if unlock_data["type"] == "armor":
				output.append('execute' + predicate + ' unless data storage anemoland:progress data.armor.' + unlock_data["id"] + '{unlocked:1b} run function anemoland:command/progress/unlock/armor/' + unlock_data["id"] + '\n')
			if unlock_data["type"] == "field":
				output.append('execute' + predicate + ' unless data storage anemoland:progress data.field.' + unlock_data["id"] + '{unlocked:1b} run function anemoland:command/progress/unlock/field/' + unlock_data["id"] + '\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



path = base_path + 'display/branch.mcfunction'
makedir(path)
output = []
for event_id, event_data in data["events"].items():
	output.append('execute if data storage temp:_ data.field_display_data.event{event_id:"' + str(event_id) + '"} run function anemoland:sys/event/display/' + str(event_id) + ' with storage temp:_ data.field_display_macro\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)


map_names = []
for map in map_data["maps"]:
	map_names.append(map["name"])

for map_name in map_names:
	base_path = '../data/anemoland/function/command/field_event/' + map_name + '/change/'
	for event_id, event_data in data["events"].items():
		path = base_path + event_id + '.mcfunction'
		makedir(path)
		waves_list = []
		for wave_data in event_data["waves"]:
			for wave_id, wave_level in wave_data.items():
				waves_list.append(wave_id + '_' + str(wave_level))
		output = []
		output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.event_id set value "' + event_id + '"\n')
		output.append(('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.waves set value ' + str(waves_list) + '\n').replace("'", '"'))
		output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.waves_len set value ' + str(max(1, len(event_data["waves"]))) + '\n')
		output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).display_update_flag set value 1b\n')
		output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.bonus set value {gold:0,xp:0,drop:0}\n')
		if "npc" in event_data:
			output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.with_npc1 set value 1b\n')
			output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.npc1_id set value ' + str(event_data["npc"]["npc1"]["npc_id"]) + '\n')
			output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.npc_exist set value 0b\n')
		else:
			output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.with_npc1 set value 0b\n')
		if "random_event_enable" in event_data:
			output.append('$data modify storage anemoland:progress data.' + map_name + '.field$(field_id).event.random_event_enable set value ' + str(event_data["random_event_enable"]) + 'b\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)
