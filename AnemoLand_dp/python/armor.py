import json
import os

with open('data/armor.json' , encoding='utf-8') as f:
	armor_database = json.load(f)

with open('data/common.json' , encoding='utf-8') as f:
	common_database = json.load(f)

resourcepack_path = common_database['resourcepack_path']

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

namespace_core = common_database["namespace_core"]
namespace_contents = common_database["namespace_contents"]
namespace_storage = common_database["namespace_core"]

skill_list = armor_database["skills"]

armor2slot = {
	"helmet": "head",
	"chestplate": "chest",
	"leggings": "legs",
	"boots": "feet"
}

element_color = {
	"physical": "white",
	"fire": "red",
	"water": "blue",
	"ice": "aqua",
	"thunder": "yellow"
}
element_icon = {
	"physical": "🗡",
	"fire": "🔥",
	"water": "🌊",
	"ice": "❄",
	"thunder": "⚡"
}

base_path = '../data/' + namespace_contents + '/loot_table/item/armor/'

for series in armor_database["series"]:
	for armor_type, armor_data in series["armors"].items():
		for level, level_data in series["levels"].items():
			sell_price = armor_data["price"]["sell"][level]

			path = base_path + series["name"] + '/' + armor_type + '/' + str(level) + '.json'
			makedir(path)
			functions = []

			armor_value = armor_data["status"]["armor"][level]

			# set_name
			function_ = {}
			# function_.update(function="minecraft:set_name",entity="this",name={"text": armor_data["display_name"],"color": "white","italic": False})
			function_.update(function="minecraft:set_name",entity="this",name={"translate": "anemoland.armor." + series["name"] + '.' + armor_type + ".name","color": "white","italic": False})
			functions.append(function_)

			# set_lore
			function_ = {}
			lore = []
			lore.append([{"text":"  Lv. " + str(level) + " ","color":"yellow", "italic":False},{"text":"(MAX: 3)","color":"dark_gray"}])
			lore.append([{"text":"  ⏫ ","color":"aqua", "italic":False},{"translate":"anemoland.common.armor"},{"text":" +" + str(armor_value)}])
			if "elemental_resistance" in armor_data["status"]:
				for element, resistance in armor_data["status"]["elemental_resistance"][level].items():
					if resistance > 0:
						lore.append([{"text":"  ⏫ ","color":"aqua", "italic":False},{"text":element_icon[element],"color":element_color[element]},{"translate":"anemoland.common.damaged_rate." + element},{"text":" -" + str(resistance) + "%"}])
					elif resistance < 0:
						lore.append([{"text":"  ⏬ ","color":"red", "italic":False},{"text":element_icon[element],"color":element_color[element]},{"translate":"anemoland.common.damaged_rate." + element},{"text":" +" + str(abs(resistance)) + "%"}])
			if len(armor_data["status"]["skills"]) > 0:
				lore.append([{"text":""}])
				lore.append([{"text": "<", "italic": False},{"translate":"anemoland.common.skill"},{"text":">"}])
				for skill in armor_data["status"]["skills"][level]:
					# lore.append([{"text":"  " + skill_list[skill["name"]]["display_name"] + " " + skill_list[skill["name"]]["lore_value"]["prefix"] + str(skill["level"]*skill_list[skill["name"]]["lore_value"]["mul"]) + skill_list[skill["name"]]["lore_value"]["suffix"], "italic":False}])
					# for line in skill_list[skill["name"]]["detail"]:
					# 	lore.append([{"text":line, "italic":False, "color": "gray"}])
					lore.append([{"text":"  ", "italic":False},{"translate":"anemoland.skill." +skill["name"] + ".name"},{"text": " " + skill_list[skill["name"]]["lore_value"]["prefix"] + str(skill["level"]*skill_list[skill["name"]]["lore_value"]["mul"]) + skill_list[skill["name"]]["lore_value"]["suffix"]}])
					for i in range(skill_list[skill["name"]]["lore_len"]):
						lore.append([{"text":"    "},{"translate":"anemoland.skill." + skill["name"] + ".lore." + str(i+1), "italic":False, "color": "gray"}])
			lore.append([{"text":""}])
			lore.append([{"text":"▶ ","italic":False,"color":"dark_gray"},{"translate":"anemoland.common.sell_price"},{"text":": " + str(sell_price) + "G"}])
			function_.update(function="minecraft:set_lore", entity="this", lore = lore, mode = "replace_all")
			functions.append(function_)

			# set_attributes
			function_ = {}
			modifiers = []
			modifiers.append(
				{
					"id": armor_type + ".armor.add." + str(armor_value),
					"attribute": "minecraft:armor",
					"amount": round(0.1*armor_value, 2),
					"operation": "add_value",
					"slot": armor2slot[armor_type]
				})
			function_.update(function="minecraft:set_attributes", modifiers = modifiers)
			functions.append(function_)

			# custom_data
			function_ = {}
			skills_str = ""
			i = 0
			for skill in armor_data["status"]["skills"][level]:
				if i > 0:
					skills_str += ","
				skills_str += "{id:\"" + skill["name"] + "\",level:" + str(skill["level"]) + "}"
				i += 1
			power_up_str = ''
			if str(int(level)+1) in series["levels"]:
				next_level_data = series["levels"][str(int(level)+1)]
				power_up_str += 'add_level:1,'
				power_up_str += 'materials:['
				for material in next_level_data["materials"]:
					power_up_str += '{id:"' + material["id"] + '",loot_table:"' + material["loot_table"] + '",count:' + str(material["count"]) + '}'
				power_up_str += ']'
			if "visual_model" in armor_data:
				visual_model_flag = 1
			else:
				visual_model_flag = 0
			function_.update(function="minecraft:set_custom_data",
				tag = "{item_type:\"armor\",series:\"" + series["name"] + "\",part:\"" + armor_type + "\",id:\"" + series["name"] + "_" + armor_type + "\",visual_model_flag:" + str(visual_model_flag) + ",sell_price:" + str(sell_price) + ",loot_table:\"item/armor/" + series["name"] + "/" + armor_type + "\",power_up:{" + power_up_str + "},status:{level:" + str(level) + ",armor:{base:" + str(armor_value) + "},elemental_resistance:" + str(armor_data["status"]["elemental_resistance"]).replace("'", "") + ",skills:[" + skills_str + "]}}"
				)
			functions.append(function_)

			# custom_model_data
			if "custom_model_data" in series:
				functions.append({"function": "minecraft:set_custom_model_data","value": series["custom_model_data"]})

			# components
			function_ = {
				"function": "minecraft:set_components",
				"components": {
					"minecraft:unbreakable": {
						"show_in_tooltip": False
					},
					"minecraft:enchantment_glint_override": False
				}
			}
			# if "material" in series:
			# 	function_["components"]["minecraft:trim"] = {
			# 		"material": "minecraft:" + series["material"],
			# 		"pattern": "minecraft:" + series["pattern"],
			# 		"show_in_tooltip": False
			# 	}
			function_["components"]["minecraft:equippable"] = {
					"slot": armor2slot[armor_type],
					"equip_sound":"item.armor.equip_chain",
					"model": series["name"]
				}
			if "dyed_color" in armor_data:
				function_["components"]["minecraft:dyed_color"] = {
					"rgb": int(armor_data["dyed_color"], 16),
					"show_in_tooltip":False
				}
			functions.append(function_)

			# toggle_tooltips
			functions.append({
				"function": "minecraft:toggle_tooltips",
				"toggles": {
					"minecraft:enchantments": False,
					"minecraft:attribute_modifiers": False
				}
			})

			# enchantments
			enchantments = {}
			if "enchantments" in armor_data["status"]:
				enchantments = armor_data["status"]["enchantments"]
			enchantments["minecraft:binding_curse"] = 1
			functions.append({
				"function": "minecraft:set_enchantments",
				"enchantments": enchantments
			})

			output = {}
			output.update(type="minecraft:command")
			output.update(pools=[{
				"rolls":1,
				"entries":[{
					"type": "minecraft:item",
					"name": "minecraft:" + armor_data["item"],
					"weight": 1,
					"functions":functions
					}]
				}])
			

			with open(path, 'w', encoding='utf-8') as f:
				json.dump(output, f, indent='\t', ensure_ascii=False)


base_path = '../data/' + namespace_contents + '/function/command/give/armor/'

for series in armor_database["series"]:
	for level in series["levels"]:

		output = []
		path = base_path + series["name"] + '/all/' + str(level) + '.mcfunction'
		makedir(path)
		for armor_type, armor_data in series["armors"].items():
			output.append("function ' + namespace_contents + ':command/give/armor/" + series["name"] + '/' + armor_type + '/' + str(level) + '\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	for armor_type, armor_data in series["armors"].items():
		for level in series["levels"]:

			output = []
			path = base_path + series["name"] + '/' + armor_type + '/' + str(level) + '.mcfunction'
			makedir(path)
			output.append("loot give @s loot ' + namespace_contents + ':item/armor/" + series["name"] + '/' + armor_type + '/' + str(level) + '\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)




base_path = '../data/' + namespace_contents + '/function/command/progress/unlock/armor/'

for series in armor_database["series"]:
	output = []
	path = base_path + series["name"] + '.mcfunction'
	makedir(path)
	output.append('advancement grant @a only ' + namespace_contents + ':armor_catalog/' + series["name"] + '\n')
	output.append('execute if data storage anemoland:progress data.armor.' + series["name"] + '{unlocked:1b} run return 1\n')
	output.append('data modify storage anemoland:progress data.armor.' + series["name"] + '.unlocked set value 1b\n')
	output.append('tellraw @a {"translate":"anemoland.unlock.new_equipment","color":"green"}\n')
	for armor_type, armor_data in series["armors"].items():
		output.append('tellraw @a {"text":"  ' + armor_data["display_name"] + '","color":"green"}\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)




base_path = '../data/' + namespace_contents + '/function/sys/player/menu/status/skill/slot0/'

path = base_path + 'branch.mcfunction'
output = []
makedir(path)
output.append("# メニューのステータス表示のスキルレベル\n")
for skill_name, skill_data in skill_list.items():
	output.append("execute if data storage temp:_ data.player_storage.skill_levels." + skill_name + " run function " + namespace_contents + ":sys/player/menu/status/skill/slot0/" + skill_name + "\n")
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)


for skill_name, skill_data in skill_list.items():
	path = base_path + skill_name + '.mcfunction'
	output = []
	makedir(path)
	output.append('execute store result score #skill_level temp run data get storage temp:_ data.player_storage.skill_levels.' + skill_name + ' 10\n')
	if 1:
	# if skill_data["lore_value"]["mul"] < 1 or skill_data["lore_value"]["mul"] > 1:
		output.append('scoreboard players set #const temp ' + str(round(skill_data["lore_value"]["mul"]*100)) + '\n')
		output.append('scoreboard players operation #skill_level temp *= #const temp\n')
		output.append('scoreboard players set #const temp 100\n')
		output.append('scoreboard players operation #skill_level temp /= #const temp\n')
		output.append('scoreboard players operation #skill_level.int temp = #skill_level temp\n')
		output.append('scoreboard players set #const temp 10\n')
		output.append('scoreboard players operation #skill_level.int temp /= #const temp\n')
		output.append('scoreboard players operation #skill_level.decimal1 temp = #skill_level temp\n')
		output.append('scoreboard players operation #skill_level.decimal1 temp %= #const temp\n')
		output.append('scoreboard players set #const temp ' + str(round(1/skill_data["lore_value"]["mul"]//10)) + '\n')
		output.append('scoreboard players operation #skill_level.decimal1 temp /= #const temp\n')
	# else:
	# 	output.append('scoreboard players operation #skill_level.int temp = #skill_level temp\n')
	# 	output.append('scoreboard players set #skill_level.decimal1 temp 0\n')
	output.append('item modify entity @s inventory.0 ' + namespace_contents + ':skill/' + skill_name + '\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)



for armor_set in [1, 2, 3]:
	base_path = '../data/' + namespace_contents + '/function/sys/player/menu/status/skill/slot' + str(armor_set*2-1) + '_' + str(armor_set*2) + '/'

	path = base_path + 'branch.mcfunction'
	output = []
	makedir(path)
	for skill_name, skill_data in skill_list.items():
		output.append("execute if data storage temp:_ data.player_storage.skill_levels." + skill_name + " run function " + namespace_contents + ":sys/player/menu/status/skill/slot" + str(armor_set*2-1) + '_' + str(armor_set*2) + "/" + skill_name + "\n")
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)


	for skill_name, skill_data in skill_list.items():
		path = base_path + skill_name + '.mcfunction'
		output = []
		makedir(path)
		output.append('execute store result score #skill_level temp run data get storage temp:_ data.player_storage.skill_levels.' + skill_name + ' 10\n')
		if 1:
		# if skill_data["lore_value"]["mul"] < 1 or skill_data["lore_value"]["mul"] > 1:
			output.append('scoreboard players set #const temp ' + str(round(skill_data["lore_value"]["mul"]*100)) + '\n')
			output.append('scoreboard players operation #skill_level temp *= #const temp\n')
			output.append('scoreboard players set #const temp 100\n')
			output.append('scoreboard players operation #skill_level temp /= #const temp\n')
			output.append('scoreboard players operation #skill_level.int temp = #skill_level temp\n')
			output.append('scoreboard players set #const temp 10\n')
			output.append('scoreboard players operation #skill_level.int temp /= #const temp\n')
			output.append('scoreboard players operation #skill_level.decimal1 temp = #skill_level temp\n')
			output.append('scoreboard players operation #skill_level.decimal1 temp %= #const temp\n')
			output.append('scoreboard players set #const temp ' + str(round(1/skill_data["lore_value"]["mul"]//10)) + '\n')
			output.append('scoreboard players operation #skill_level.decimal1 temp /= #const temp\n')
		# else:
		# 	output.append('scoreboard players operation #skill_level.int temp = #skill_level temp\n')
		# 	output.append('scoreboard players set #skill_level.decimal1 temp 0\n')
		output.append('item modify entity @s inventory.' + str(armor_set*2-1) + ' ' + namespace_contents + ':skill/' + skill_name + '\n')
		output.append('item modify entity @s inventory.' + str(armor_set*2) + ' ' + namespace_contents + ':skill/' + skill_name + '\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)



base_path = '../data/' + namespace_contents + '/item_modifier/skill/'

for skill_name, skill_data in skill_list.items():
	path = base_path + skill_name + '.json'
	makedir(path)
	detail = []
	for i in range(skill_data["lore_len"]):
		detail.append([{"text":"    "},{"translate":"anemoland.skill." + skill_name + ".lore." + str(i+1), "italic":False, "color": "gray"}])
	# for line in skill_list[skill_name]["detail"]:
	# 	detail.append([{"text":line, "italic":False, "color": "gray"}])
	output = [
		{
			"function": "minecraft:set_lore",
			"entity": "this",
			"lore": [
				[
					{
						"text": "  ",
						"color": "dark_purple",
						"italic": False
					},{
						"translate": "anemoland.skill." + skill_name + ".name"
					},{
						"text": " " + skill_data["lore_value"]["prefix"]
					},
					{
						"score": {
							"name": "#skill_level.int",
							"objective": "temp"
						}
					},
					{
						"text": ".",
						"color": "dark_purple",
						"italic": False
					},
					{
						"score": {
							"name": "#skill_level.decimal1",
							"objective": "temp"
						},
						"color": "dark_purple",
						"italic": False
					},
					{
						"text": skill_data["lore_value"]["suffix"],
						"color": "dark_purple",
						"italic": False
					}
				]
			],
			"mode": "append",
			"conditions": [
				{
					"condition": "minecraft:value_check",
					"value": {
						"type": "minecraft:score",
						"target": {
							"type": "minecraft:fixed",
							"name": "#skill_level.decimal1"
						},
						"score": "temp"
					},
					"range": {
						"min": 1
					}
				}
			]
		},{
			"function": "minecraft:set_lore",
			"entity": "this",
			"lore": [
				[
					{
						"text": "  ",
						"color": "dark_purple",
						"italic": False
					},
					{
						"translate": "anemoland.skill." + skill_name + ".name"
					},
					{
						"text": " " + skill_data["lore_value"]["prefix"]
					},
					{
						"score": {
							"name": "#skill_level.int",
							"objective": "temp"
						}
					},
					{
						"text": skill_data["lore_value"]["suffix"]
					}
				]
			],
			"mode": "append",
			"conditions": [
				{
					"condition": "minecraft:value_check",
					"value": {
						"type": "minecraft:score",
						"target": {
							"type": "minecraft:fixed",
							"name": "#skill_level.decimal1"
						},
						"score": "temp"
					},
					"range": 0
				}
			]
		},
		{
			"function": "minecraft:set_lore",
			"entity": "this",
			"lore": detail,
			"mode": "append"
		}
	]


	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)




base_path = resourcepack_path + 'assets/minecraft/models/equipment/'

if not os.path.isdir(base_path):
	print('dir not exist! (' + base_path + ')')
	exit(0)

for series in armor_database["series"]:

	path = base_path + series["name"] + '.json'
	makedir(path)

	output = {
		"layers": {
			"humanoid": [
			{
				"texture": series["name"]
			}
			],
			"humanoid_leggings": [
			{
				"texture": series["name"]
			}
			]
		}
	}
	if "can_dye" in series and series["can_dye"]:
		output["layers"]["humanoid"][0]["dyeable"] = {"color_when_undyed": -6265536}
		output["layers"]["humanoid_leggings"][0]["dyeable"] = {"color_when_undyed": -6265536}

	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)


base_path = resourcepack_path + 'assets/minecraft/models/item/'

if not os.path.isdir(base_path):
	print('dir not exist! (' + base_path + ')')
	exit(0)

materials = ['chainmail']

parts = ['helmet', 'chestplate', 'leggings', 'boots']

for material in materials:
	for part in parts:

		path = base_path + material + '_' + part + '.json'

		# print(path)
		# input()
		makedir(path)

		overrides = []

		for series in armor_database["series"]:
			for armor_type, armor_data in series["armors"].items():
				if armor_data['item'] == material + '_' + part:
					overrides.append(
						{
							"predicate": { "custom_model_data": series["custom_model_data"] },
							"model": "minecraft:item/custom/armor/" + series["name"] + "/" + part
						}
					)

		output = {
			"parent": "minecraft:item/generated",
			"overrides": overrides,
			"textures": {
			"layer0": "minecraft:item/custom/transparent"
			}
		}
		with open(path, 'w', encoding='utf-8') as f:
			json.dump(output, f, indent='\t', ensure_ascii=False)



path = base_path + 'gray_dye.json'

makedir(path)

overrides = []

for series in armor_database["series"]:
	for armor_type, armor_data in series["armors"].items():
		if "visual_model" in armor_data:
			overrides.append(
				{
					"predicate": { "custom_model_data": series["custom_model_data"] },
					"model": "minecraft:item/custom/armor/" + series["name"] + "/" + armor_data["visual_model"]
				}
			)

output = {
	"parent": "minecraft:item/generated",
	"overrides": overrides,
	"textures": {
	"layer0": "minecraft:item/custom/gray_dye"
	}
}
with open(path, 'w', encoding='utf-8') as f:
	json.dump(output, f, indent='\t', ensure_ascii=False)




for series in armor_database["series"]:
	for armor_type, armor_data in series["armors"].items():

		path = base_path + 'custom/armor/' + series["name"] + '/' + armor_type + '.json'
		makedir(path)

		output = {
			"parent": "minecraft:item/generated",
			"textures": {
				"layer0": "minecraft:item/custom/armor/" + series["name"] + "/" + armor_type,
				"layer1": "minecraft:item/custom/transparent"
		    }
		}
		with open(path, 'w', encoding='utf-8') as f:
			json.dump(output, f, indent='\t', ensure_ascii=False)




base_path = '../data/' + namespace_contents + '/advancement/armor_catalog/'

for series in armor_database["series"]:
	path = base_path + series["name"] + '.json'
	makedir(path)
	discription = []
	for armor_type, armor_data in series["armors"].items():
		# discription += armor_data["display_name"] + "\n"
		if armor_type == "boots":
			discription.append({"text":armor_data["display_name"] + ""})
		else:
			discription.append({"text":armor_data["display_name"] + "\n"})
		# discription.append({"text":" ⏫ 防御力 +" + str(armor_data["status"]["armor"]) + "\n","color":"aqua", "italic":False})

		# if "elemental_resistance" in armor_data["status"]:
		# 	for element, resistance in armor_data["status"]["elemental_resistance"].items():
		# 		if resistance > 0:
		# 			discription.append([{"text":" ⏫ " + elements_text[element] + "属性被ダメージ -" + str(resistance) + "%\n", "italic":False}])
		# 		elif resistance < 0:
		# 			discription.append([{"text":" ⏬ " + elements_text[element] + "属性被ダメージ +" + str(abs(resistance)) + "%\n","color":"red", "italic":False}])
		# if len(armor_data["status"]["skills"]) > 0:
		# 	for skill in armor_data["status"]["skills"][level]:
		# 		discription.append([{"text":"  " + skill_list[skill["name"]]["display_name"] + " " + skill_list[skill["name"]]["lore_value"]["prefix"] + str(skill["level"]*skill_list[skill["name"]]["lore_value"]["mul"]) + skill_list[skill["name"]]["lore_value"]["suffix"] + "\n", "color":"dark_purple", "italic":False}])

	output = {
		"display": {
			"icon": {
				"id": "minecraft:" + series["armors"]["chestplate"]["item"]
			},
			"title": series["display_name"] + "防具",
			"description": discription,
			"show_toast": False,
			"announce_to_chat": False,
			"hidden": True
		},
		"parent": "' + namespace_contents + ':armor_catalog/" + ( "initial" if series["parent"]=="none" else series["parent"] ),
		"criteria": {
			"requirement": {
				"trigger": "minecraft:impossible"
			}
		}
	}
	if "custom_model_data" in series:
		output["display"]["icon"]["components"] = {}
		output["display"]["icon"]["components"]["custom_model_data"] = series["custom_model_data"]

	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)








# book_shop

base_path = '../data/' + namespace_core + '/function/sys/player/'

pages_list = [
	[{"series":"leather", "part":"helmet", "add_space": 2, "level": 1, "need_unlock": 0, "trigger": 1}, {"series":"leather", "part":"chestplate", "add_space": 1, "level": 1, "need_unlock": 0, "trigger": 2}],
	[{"series":"leather", "part":"leggings", "add_space": 2, "level": 1, "need_unlock": 0, "trigger": 3}, {"series":"leather", "part":"boots", "add_space": 1, "level": 1, "need_unlock": 0, "trigger": 4}],
	[{"series":"iron", "part":"helmet", "add_space": 2, "level": 1, "need_unlock": 0, "trigger": 5}, {"series":"iron", "part":"chestplate", "add_space": 1, "level": 1, "need_unlock": 0, "trigger": 6}],
	[{"series":"iron", "part":"leggings", "add_space": 1, "level": 1, "need_unlock": 0, "trigger": 7}, {"series":"iron", "part":"boots", "add_space": 1, "level": 1, "need_unlock": 0, "trigger": 8}],
]
output = []
path = base_path + 'area/common/village/update/book_shop/armor/00.mcfunction'
makedir(path)

for page_list in pages_list:
	if page_list[0]["need_unlock"]:
		line = 'execute if data storage anemoland:progress data.armor.' + page_list[0]["series"] + '{unlocked:1b} run data modify storage temp:_ data.pages append value {raw:\'["",'
	else:
		line = 'data modify storage temp:_ data.pages append value {raw:\'["",'
	for i, page_item in enumerate(page_list):
		if i == 1:
			line += ','

		for series_data in armor_database["series"]:
			if not series_data["name"] == page_item["series"]:
				continue
			for part_name, armor_data in series_data["armors"].items():
				if not part_name == page_item["part"]:
					continue
				lore = []
				lore.append([{"text":"  Lv. " + str(page_item["level"]),"color":"yellow", "italic":False}])
				lore.append([{"text":"\\n" + " ⏫ ", "color": "aqua", "italic":False},{"translate":"anemoland.common.armor"},{"text":" +" + str(armor_data["status"]["armor"][list(series_data["levels"].keys())[0]])}])
				if "elemental_resistance" in armor_data["status"]:
					for element, resistance in armor_data["status"]["elemental_resistance"][level].items():
						if resistance > 0:
							lore.append([{"text":"\\n" + " ⏫ ","color":"aqua"},{"translate":"anemoland.common.damaged_rate." + element,"color":"aqua" },{"text": " -" + str(resistance) + "%","color":"aqua"}])
						elif resistance < 0:
							lore.append([{"text":"\\n" + " ⏬ ","color":"red"},{"translate":"anemoland.common.damaged_rate." + element,"color":"red" },{"text": " +" + str(abs(resistance)) + "%","color":"red"}])
				if len(armor_data["status"]["skills"]["1"]) > 0:
					lore.append([{"text":"\\n" + ""}])
					lore.append([{"text": "\\n" + "<"},{"translate":"anemoland.common.skill"},{"text":">", "italic": False, "color":"dark_purple"}])
					for skill in armor_data["status"]["skills"][level]:
						lore.append([{"text":"\\n" + "  " + skill_list[skill["name"]]["display_name"] + " " + skill_list[skill["name"]]["lore_value"]["prefix"] + str(skill["level"]*skill_list[skill["name"]]["lore_value"]["mul"]) + skill_list[skill["name"]]["lore_value"]["suffix"], "color":"dark_purple", "italic":False}])
						for line_ in skill_list[skill["name"]]["detail"]:
							lore.append([{"text":"\\n" + line_, "italic":False, "color": "gray"}])

				line += '{"text":"\\\\n               "},{"text":"【"},{"translate":"anemoland.common.detail","hoverEvent":{"action":"show_text","contents":' + str(lore).replace("'",'"') + '}},{"text":"】"},{"text":"\\\\n"},{"text":"\\\\n  ","color":"light_purple"}," ",{"translate":"anemoland.armor.' + series_data["name"] + '.' + part_name + '","color":"white"},{"text":"    ' + ' '*page_item["add_space"] + '"},{"text":"[' + str(armor_data["price"]["buy"]) + 'G]\\\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/trigger trigger set ' + str(32000 + page_item["trigger"]) + '"}},{"translate":"anemoland.armor.' + series_data["name"] + '.' + part_name + '.shop_book_space"},{"translate":"anemoland.armor.' + series_data["name"] + '.' + part_name + '.name","bold":true},{"text":"\\\\n\\\\n\\\\n","bold":true}'

	line += ']\'}\n'

	output.append(line)

with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)
