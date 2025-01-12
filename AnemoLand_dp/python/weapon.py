import json
import os

data_path = 'data/weapon.json'

with open(data_path , encoding='utf-8') as f:
	weapon_database = json.load(f)

base_path = '../data/anemoland_contents/loot_table/item/weapon/'

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

weapon_skills = weapon_database["weapon_skills"]
weapon_types = weapon_database["weapon_types"]

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
	"thunder": "⚡️"
}

for weapon_data in weapon_database["weapons"]:
	for level, level_data in weapon_data["levels"].items():
		sell_price = level_data["sell_price"]

		attack_damage_value = weapon_data["attack_damage"] + 1*(int(level)-1)

		path = base_path + weapon_data["name"] + '/' + str(level) + '.json'
		makedir(path)
		functions = []

		# set_name
		function_ = {}
		# function_.update(function="minecraft:set_name",entity="this",name={"text": weapon_data["display_name"],"color": "white","italic": False})
		function_.update(function="minecraft:set_name",entity="this",name={"translate": "anemoland.weapon." + weapon_data["name"] + ".name","color": "white","italic": False})
		functions.append(function_)

		# set_lore
		function_ = {}
		lore = []
		if str(int(level)+1) in weapon_data["levels"]:
			lore.append([{"text":"  Lv. " + str(level),"color":"yellow", "italic":False}])
		else:
			lore.append([{"text":"  Lv. " + str(level) + " (MAX)","color":"yellow", "italic":False}])
		# lore.append({"text":"  ⏫ 攻撃力 +" + str(attack_damage_value), "italic":False, "color":"aqua"})
		lore.append([{"text":"  ⏫ ", "italic":False, "color":"aqua"},{"translate":"anemoland.common.attack_damage"},{"text":" 🗡" + str(attack_damage_value+1)}])
		if "element_attack_damage" in weapon_data:
			for element_id, element_attack_damage in weapon_data["element_attack_damage"].items():
				lore.append([{"text":"  ⏫ ", "italic":False, "color":"aqua"},{"translate":"anemoland.common.element_attack_damage"},{"text":" " + element_icon[element_id] + "" + str(element_attack_damage),"color": element_color[element_id]}])
		# lore.append({"text":"  武器倍率 " + str(weapon_types[weapon_data["weapon_type"]]["weapon_mul"]*10) + "%", "italic":False, "color":"blue"})
		lore.append([{"text":"  ", "italic":False, "color":"blue"},{"translate":"anemoland.common.weapon_damage_rate"},{"text":" " + str(weapon_types[weapon_data["weapon_type"]]["weapon_mul"]*10) + "%"}])
		# lore.append({"text":"  攻撃速度 " + str(weapon_data["attack_speed"]), "italic":False, "color":"blue"})
		lore.append([{"text":"  ", "italic":False, "color":"blue"},{"translate":"anemoland.common.attack_speed"},{"text":" " + str(weapon_data["attack_speed"])}])
		lore.append({"text":""})
		for i, weapon_skill in enumerate(weapon_data["weapon_skills"]):
			lore_translate_name = weapon_skill["name"]
			if "lore_translate_reference" in weapon_skills[weapon_skill["name"]]:
				lore_translate_name = weapon_skills[weapon_skill["name"]]["lore_translate_reference"]
			# lore.append([{"text":" <技" + str(i+1) + "> " + weapon_skills[weapon_skill["name"]]["display_name"], "italic":False},{"text":' (消費ゲージ ' + str(round(weapon_skills[weapon_skill["name"]]["gauge_consume"]/100, 1)) + ')', "italic":False,"color":"gray"}])
			lore.append([{"text":" <", "italic":False},{"translate":"anemoland.common.weapon_skill"},{"text":str(i+1) + "> "},{"translate":"anemoland.weapon_skill." + weapon_skill["name"] + ".name"},{"text":" (","color":"gray"},{"translate":"anemoland.common.gauge_consumption","color":"gray"},{"text":" " + str(round(weapon_skills[weapon_skill["name"]]["gauge_consume"]/100, 1)) + ')',"color":"gray"}])
			translate_with = []
			for attack_damage_data in weapon_skills[weapon_skill["name"]]["attack_damage_list"]:
				translate_with_item = [[]]
				first_flag = True
				if "physical" in attack_damage_data:
					if first_flag:
						first_flag = False
					translate_with_item[0].append({"text":"🗡" + str(int( ( attack_damage_data["physical"]["base"] + (int(level)-1) ) * attack_damage_data["physical"]["mul"] ))})
				for elem_id, elem_data in attack_damage_data.items():
					if elem_id == "physical":
						continue
					else:
						if first_flag:
							first_flag = False
						else:
							translate_with_item[0].append({"text":"+"})
						translate_with_item[0].append([{"text":element_icon[elem_id], "color": element_color[elem_id]},{"text":str(int((attack_damage_data[elem_id]["base"] + (int(level)-1)) * attack_damage_data[elem_id]["mul"])), "color": "gray"}])
				translate_with.append(translate_with_item)
			for j in range(weapon_skills[weapon_skill["name"]]["lore_len"]):
				lore.append([{"text":"    ", "color": "gray", "italic":False},{"translate":"anemoland.weapon_skill." + lore_translate_name + ".lore." + str(j+1), "with": translate_with}])
		function_.update(function="minecraft:set_lore", entity="this", lore = lore, mode = "replace_all")
		functions.append(function_)
		lore.append({"text":""})
		lore.append([{"text":"▶ ","italic":False,"color":"dark_gray"},{"translate":"anemoland.common.sell_price"},{"text":": " + str(sell_price) + "G"}])

		# set_attributes
		function_ = {}
		attack_speed_base = 2.0
		modifiers = []
		if weapon_data["attack_speed"] > attack_speed_base:
			modifiers.append(
				{
					"id": "weapon.attack_speed.add." + str(round(10*(weapon_data["attack_speed"] - attack_speed_base))),
					"attribute": "minecraft:attack_speed",
					"amount": round(weapon_data["attack_speed"] - attack_speed_base, 1),
					"operation": "add_value",
					"slot": "mainhand"
				})
		elif weapon_data["attack_speed"] < attack_speed_base:
			modifiers.append(
				{
					"id": "weapon.attack_speed.remove." + str(round(10*abs(weapon_data["attack_speed"] - attack_speed_base))),
					"attribute": "minecraft:attack_speed",
					"amount": round(weapon_data["attack_speed"] - attack_speed_base, 1),
					"operation": "add_value",
					"slot": "mainhand"
				})
		modifiers.append(
			{
				"id": "weapon.attack_damage.0",
				"attribute": "minecraft:attack_damage",
				"amount": 0,
				"operation": "add_value",
				"slot": "mainhand"
			})
		function_.update(function="minecraft:set_attributes", modifiers = modifiers)
		functions.append(function_)

		# custom_data
		function_ = {}
		weapon_skills_str = ""
		i = 0
		for weapon_skill in weapon_data["weapon_skills"]:
			if i > 0:
				weapon_skills_str += ","
			attack_damage_list_before = weapon_skills[weapon_skill["name"]]["attack_damage_list"]
			attack_damage_list = []
			for attack_damage_item_before in attack_damage_list_before:
				attack_damage_item = {}
				for attack_elem, attack_data in attack_damage_item_before.items():
					attack_damage_item[attack_elem] = {"base": attack_data["base"] + attack_data["level_bonus"]*(int(level) - 1), "mul": attack_data["mul"]}
				attack_damage_list.append(attack_damage_item)
			weapon_skills_str += "{id:\"" + weapon_skill["name"] + "\",gauge_consume:" + str(weapon_skills[weapon_skill["name"]]["gauge_consume"]) + ",attack_damage:" + str(attack_damage_list).replace("'",'') + "}"
			i += 1
		power_up_str = ''
		if str(int(level)+1) in weapon_data["levels"]:
			next_level_data = weapon_data["levels"][str(int(level)+1)]
			power_up_str += 'add_level:1,'
			power_up_str += 'materials:['
			for material in next_level_data["materials"]:
				power_up_str += '{id:"' + material["id"] + '",loot_table:"' + material["loot_table"] + '",count:' + str(material["count"]) + '}'
			power_up_str += ']'
		element_attack = {}
		if "element_attack_damage" in weapon_data:
			element_attack = weapon_data["element_attack_damage"]
		function_.update(function="minecraft:set_custom_data",
			tag = "{item_type:\"weapon\",weapon_type:\"" + weapon_data["weapon_type"] + "\",loot_table:\"item/weapon/" + weapon_data["name"] + "\",sell_price:" + str(sell_price) + ",power_up:{" + power_up_str + "},status:{level:" + str(level) + ",attack:{base:" + str(attack_damage_value) + ",mul:" + str(weapon_types[weapon_data["weapon_type"]]["weapon_mul"]) + "},elemental_attack:" + str(element_attack) + ",weapon_skills:[" + weapon_skills_str + "],skill_gauge:{get:" + str(weapon_types[weapon_data["weapon_type"]]["weapon_mul"]) + "}}}"
			)
		functions.append(function_)

		# custom_model_data
		functions.append({"function": "minecraft:set_custom_model_data","value": weapon_data["custom_model_data"]})

		# components
		functions.append({
			"function": "minecraft:set_components",
			"components": {
				"minecraft:unbreakable": {
					"show_in_tooltip": False
				},
				"minecraft:enchantments": {
					"levels": weapon_types[weapon_data["weapon_type"]]["enchantments"],
					"show_in_tooltip": False
				},
				"minecraft:enchantment_glint_override": False
			}
		})

		# toggle_tooltips
		functions.append({
			"function": "minecraft:toggle_tooltips",
			"toggles": {
				"minecraft:enchantments": False,
				"minecraft:attribute_modifiers": False
			}
		})

		output = {}
		output.update(type="minecraft:command")
		output.update(pools=[{
			"rolls":1,
			"entries":[{
				"type": "minecraft:item",
				"name": "minecraft:carrot_on_a_stick",
				"weight": 1,
				"functions":functions
				}]
			}])
		

		with open(path, 'w', encoding='utf-8') as f:
			json.dump(output, f, indent='\t', ensure_ascii=False)


base_path = '../data/anemoland_contents/function/command/give/weapon/'

for weapon_data in weapon_database["weapons"]:
	for level in weapon_data["levels"]:

		output = []
		path = base_path + weapon_data["name"] + '/' + str(level) + '.mcfunction'
		makedir(path)
		output.append("loot give @s loot anemoland_contents:item/weapon/" + weapon_data["name"] + '/' + str(level))
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)



# book_shop

base_path = '../data/anemoland/function/sys/player/'

pages_list = [
	[{"name":"wooden_sword", "add_space": 0, "level": 1, "need_unlock": 0, "trigger": 1}],
	[{"name":"stone_sword", "add_space": 0, "level": 1, "need_unlock": 0, "trigger": 2}, {"name":"iron_sword", "add_space": 0, "level": 1, "need_unlock": 0, "trigger": 3}],
	[{"name":"stone_axe", "add_space": 1, "level": 1, "need_unlock": 0, "trigger": 4}, {"name":"iron_axe", "add_space": 1, "level": 1, "need_unlock": 0, "trigger": 5}]
]
output = []
path = base_path + 'area/common/village/update/book_shop/weapon/00.mcfunction'
makedir(path)

for page_list in pages_list:
	line = 'data modify storage temp:_ data.pages append value {raw:\'["",'
	for i, page_item in enumerate(page_list):
		if i == 1:
			line += ','

		for weapon_data in weapon_database["weapons"]:
			if weapon_data["name"] == page_item["name"]:
				lore = []
				lore.append([{"text":"  Lv. " + str(page_item["level"]) + "\\n","color":"yellow", "italic":False}])
				lore.append([{"text":" ⏫ ", "italic":False, "color":"aqua"},{"translate":"anemoland.common.attack_damage", "italic":False, "color":"aqua"},{"text":" +" + str(weapon_data["attack_damage"] + 1*(page_item["level"]-1)) + "\\n", "italic":False, "color":"aqua"}])
				lore.append([{"text":" "},{"translate":"anemoland.common.weapon_damage_rate", "italic":False, "color":"blue"},{"text":" " + str(weapon_types[weapon_data["weapon_type"]]["weapon_mul"]*10) + "%" + "\\n", "italic":False, "color":"blue"}])
				lore.append([{"text":" "},{"translate":"anemoland.common.attack_speed", "italic":False, "color":"blue"},{"text":" " + str(weapon_data["attack_speed"]) + "\\n", "italic":False, "color":"blue"}])
				lore.append({"text":"\\n"})
				for j, weapon_skill in enumerate(weapon_data["weapon_skills"]):
					lore.append([{"text":" <", "color":"dark_purple"},{"translate":"anemoland.common.weapon_skill", "color":"dark_purple"},{"text":"> ", "color":"dark_purple"},{"translate": "anemoland.weapon_skill." + weapon_skill["name"] + ".name", "color":"dark_purple"},{ "text":("" if j == len(weapon_data["weapon_skills"])-1 else "\\n"), "italic":False, "color":"dark_purple"}])

				line += '{"text":"\\\\n               "},{"text":"【"},{"translate":"anemoland.common.detail","hoverEvent":{"action":"show_text","contents":' + str(lore).replace("'",'"') + '}},{"text":"】"},{"text":"\\\\n"},{"text":"\\\\n   ","color":"light_purple"},{"translate":"anemoland.weapon.' + weapon_data["name"] + '","color":"white"},{"text":"    ' + ' '*page_item["add_space"] + '"},{"text":"[' + str(weapon_data["price"]["buy"]) + 'G]\\\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/trigger trigger set ' + str(31000 + page_item["trigger"]) + '"}},{"translate":"anemoland.weapon.' + weapon_data["name"] + '.shop_book_space"},{"translate":"anemoland.weapon.' + weapon_data["name"] + '.name","bold":true},{"text":"\\\\n\\\\n\\\\n","bold":true}'

	line += ']\'}\n'

	output.append(line)

with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)
