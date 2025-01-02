import json
import os

data_path = 'data/talk.json'

with open(data_path , encoding='utf-8') as f:
	talk_database = json.load(f)

base_path = '../data/anemoland/function/'

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

trigger_offset = 20000

line_len = 30

for talker in talk_database["talkers"]:

	output = []
	path = base_path + 'sys/entity/npc/' + talker["name"] + '/talk/branch.mcfunction'
	makedir(path)
	for talk_name, talk in talker["talks"].items():
		if talk["trigger"] == "talk":
			output.append("execute if score #npc." + talker["name"] + " talk0 matches " + str(talk["score"]) + " run function anemoland:sys/entity/npc/" + talker["name"] + "/talk/" + talk_name + "/0\n")
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	for talk_name, talk in talker["talks"].items():

		# talks

		if talk["type"] == "display":
			output = []
			path = base_path + 'sys/entity/npc/' + talker["name"] + '/talk/' + talk_name + '/0.mcfunction'
			makedir(path)
			output.append("scoreboard players add #npc." + talker["name"] + " talk1 1\n")
			output.append("execute if score #npc." + talker["name"] + " talk1 matches " + str(len(talk["contents"])+1) + ".. run scoreboard players set #npc." + talker["name"] + " talk1 0\n")
			output.append("execute if score #npc." + talker["name"] + " talk1 matches 0 run data modify entity @s text set value '[{\"text\": \"<" +  talker["display_name"] + ">\"}]'\n")
			for i, talk_content in enumerate(talk["contents"]):
				text_str = ""
				for talk_part in talk_content:
					text_str += ",{\"text\": \"" +  talk_part["text"] + "\"}"
				output.append("execute if score #npc." + talker["name"] + " talk1 matches " + str(i+1) + " run data modify entity @s text set value '[{\"text\": \"<" +  talker["display_name"] + ">\\\\n\"}" + text_str + "]'\n")
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

		if talk["type"] == "chat":
			for i, talk_content in enumerate(talk["contents"]):
				output = []
				selector = '@a'
				if not talk["important"]:
					selector += '[scores={area1=' + str(talker["area"][0]) + ',area2=' + str(talker["area"][1]) + '}]'
				if "selector" in talk:
					selector = talk["selector"]
				path = base_path + 'sys/entity/npc/' + talker["name"] + '/talk/' + talk_name + '/' + str(i) + '.mcfunction'
				makedir(path)
				if i == 0:
					if not (talk["important"] and talk["trigger"] == "command"):
						output.append("execute unless score #npc." + talker["name"] + " talk1 matches 0 run return 1\n")
					if not talk["score"] < 0:
						output.append("scoreboard players set #npc." + talker["name"] + " talk1 -1\n")
				if "icon" in talk_content:
					output.append('tellraw ' + selector + ' [{"translate":"' + talk_content["icon"] + '"}]\n')
				if talk_content["show_name"]:
					output.append('tellraw ' + selector + ' ["         ",{"text":"<' + talker["display_name"] + '>"}]\n')
				schedule_time = 1
				if talk_content["type"] == "text":
					for text in talk_content["text"]:
						text_str = ""
						used_str_len = 0
						for text_part in text:
							if "text" in text_part:
								remain_str = text_part["text"]
								text_part["text"] = ""
								while used_str_len + len(remain_str) > line_len:
									text_part["text"] += remain_str[:line_len-used_str_len] + "\\n           "
									remain_str = remain_str[line_len-used_str_len:]
									used_str_len = 0
								text_part["text"] += remain_str
								used_str_len += len(remain_str)
								text_str += ",{\"text\": \"" +  text_part["text"] + "\""
								schedule_time += len(text_part["text"])*2.75
							elif "keybind" in text_part:
								text_str += ",{\"keybind\": \"" +  text_part["keybind"] + "\""
							if "color" in text_part:
								text_str += ',"color":"' + text_part["color"] + '"'
							text_str += "}"
						# output.append('tellraw ' + selector + ' [" "," "," "," "," "," "," "," "," "," "," "' + text_str + ']\n')
						output.append('tellraw ' + selector + ' ["           "' + text_str + ']\n')
					if "icon" in talk_content and len(talk_content["text"]) < 3:
						output.append('tellraw ' + selector + ' "' + "\n"*(len(talk_content["text"])-3) + '"\n')
				elif talk_content["type"] == "choices":
					for choice in talk_content["choices"]:
						trigger_score = trigger_offset + talker["trigger_offset"]
						if "trigger" in choice:
							trigger_score += choice["trigger"]
						elif "talk" in choice:
							trigger_score += talker["talks"][choice["talk"]]["score"]
						output.append('tellraw ' + selector + ' ["           ",{"text":"[' + choice["text"] + ']","color":"light_purple","clickEvent": {"action": "run_command","value": "/trigger trigger set ' + str(trigger_score) + '"}}]\n')
				if talk_content["schedule_time_overlay"] >= 0:
					schedule_time = max(talk_content["schedule_time_overlay"], 1)
				schedule_time += talk_content["schedule_time_add"]
				if "functions" in talk_content:
					for function_ in talk_content["functions"]:
						output.append(function_ + '\n')
				schedule_time_slow = schedule_time * 1.2
				schedule_time_fast = max(schedule_time * 0.8, 1)
				output.append('execute unless data storage anemoland:settings data{text_speed:0b} unless data storage anemoland:settings data{text_speed:0b} run schedule function anemoland:sys/entity/npc/' + talker["name"] + '/talk/' + talk_name + '/' + str(i+1) + ' ' + str(int(schedule_time)) + 't\n')
				output.append('execute if data storage anemoland:settings data{text_speed:0b} run schedule function anemoland:sys/entity/npc/' + talker["name"] + '/talk/' + talk_name + '/' + str(i+1) + ' ' + str(int(schedule_time_slow)) + 't\n')
				output.append('execute if data storage anemoland:settings data{text_speed:2b} run schedule function anemoland:sys/entity/npc/' + talker["name"] + '/talk/' + talk_name + '/' + str(i+1) + ' ' + str(int(schedule_time_fast)) + 't\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)
			
			output = []
			path = base_path + 'sys/entity/npc/' + talker["name"] + '/talk/' + talk_name + '/' + str(i+1) + '.mcfunction'
			makedir(path)
			if not talk["score"] < 0:
				output.append('scoreboard players set #npc.' + talker["name"] + ' talk1 0\n')
			if "after" in talk:
				output.append('function anemoland:command/talk/' + talker["name"] + '/' + talk["after"] + '\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)


		# command

		path = base_path + 'command/talk/' + talker["name"] + '/' + talk_name + '.mcfunction'
		if talk["trigger"] == "talk":
			output = []
			makedir(path)
			if not talk["score"] < 0:
				output.append("scoreboard players set #npc." + talker["name"] + " talk0 " + str(talk["score"]) + "\n")
				output.append("scoreboard players set #npc." + talker["name"] + " talk1 0\n")
			if talk["important"]:
				output.append("execute as @e[type=text_display,tag=" + talker["name"] + ",tag=display1] run data modify entity @s text set value '{\"text\":\"<" +  talker["display_name"] + ">\",\"color\":\"aqua\"}'\n")
			else:
				output.append("execute as @e[type=text_display,tag=" + talker["name"] + ",tag=display1] run data modify entity @s text set value '{\"text\":\"<" +  talker["display_name"] + ">\"}'\n")
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

		elif talk["trigger"] == "command":
			output = []
			makedir(path)
			if not talk["important"]:
				output.append("execute if score #npc." + talker["name"] + " talk1 matches -1 run return 1\n")
			if not talk["score"] < 0:
				output.append("scoreboard players set #npc." + talker["name"] + " talk0 " + str(talk["score"]) + "\n")
				output.append("scoreboard players set #npc." + talker["name"] + " talk1 0\n")
			start_delay = 20
			if "start_delay_ticks" in talk:
				start_delay = talk["start_delay_ticks"]
			if start_delay > 0:
				output.append("schedule function anemoland:sys/entity/npc/" + talker["name"] + "/talk/" + talk_name + "/0 " + str(start_delay) + "t\n")
			else:
				output.append("function anemoland:sys/entity/npc/" + talker["name"] + "/talk/" + talk_name + "/0\n")
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)



# trigger

path = base_path + 'sys/player/trigger/talk/branch.mcfunction'
output = []
makedir(path)
for talker in talk_database["talkers"]:
	for talk_name, talk in talker["talks"].items():
		if talk["type"] == "chat":
			for talk_content in talk["contents"]:
				if talk_content["type"] == "choices":
					for choice in talk_content["choices"]:
						trigger_score = trigger_offset + talker["trigger_offset"]
						if "trigger" in choice:
							trigger_score += choice["trigger"]
						elif "talk" in choice:
							trigger_score += talker["talks"][choice["talk"]]["score"]
						if "talk" in choice:
							output.append("execute if score @s trigger matches " + str(trigger_score) + " run function anemoland:command/talk/" + talker["name"] + "/" + choice["talk"] + "\n")
						if "command" in choice:
							output.append("execute if score @s trigger matches " + str(trigger_score) + " run " + choice["command"] + "\n")
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

