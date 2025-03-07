import json
import os

with open('data/menu.json' , encoding='utf-8') as f:
	menu_database = json.load(f)

with open('data/common.json' , encoding='utf-8') as f:
	common_data = json.load(f)

resourcepack_path = common_data['resourcepack_path']

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

base_path = resourcepack_path + 'assets/minecraft/models/item/'

if not os.path.isdir(base_path):
	print('dir not exist! (' + base_path + ')')
	exit(0)

menu_item = 'knowledge_book'

path = base_path + menu_item + '.json'
makedir(path)

overrides = []

for icon_name, icon_data in menu_database["icons"].items():

	# print(path)
	# input()

	overrides.append(
		{
			"predicate": { "custom_model_data": icon_data["custom_model_data"] },
			"model": icon_data["model_path"] if "model_path" in icon_data else ("item/custom/gui/icon/" + icon_name)
		}
	)

	output = {
		"parent": "minecraft:item/generated",
		"overrides": overrides,
		"textures": {
		"layer0": "minecraft:item/" + menu_item
		}
	}
with open(path, 'w', encoding='utf-8') as f:
	json.dump(output, f, indent='\t', ensure_ascii=False)





base_path = resourcepack_path + 'assets/anemoland/'

for icon_name, icon_data in menu_database["icons"].items():

	if "model_path" in icon_data:
		continue

	path = base_path + 'models/gui/icon/' + icon_name + '.json'
	makedir(path)

	if "transformation" in icon_data:
		textures = {
			"0": (icon_data["path"] if "path" in icon_data else ("item/custom/gui/icon/" + icon_name)),
			"particle": (icon_data["path"] if "path" in icon_data else ("item/custom/gui/icon/" + icon_name))
		}
		if "front_image" in icon_data:
			textures["1"] = icon_data["front_image"]
		elements = [
			{
				"from": [0, 0, 8],
				"to": [16, 16, 10],
				"rotation": {"angle": 0, "axis": "y", "origin": [0, 0, 8]},
				"faces": {
					"south": {"uv": [0, 0, 16, 16], "texture": "#0"}
				}
			}
		]
		if "front_image" in icon_data:
			elements.append(
				{
					"from": [0, 0, 9],
					"to": [16, 16, 11],
					"rotation": {"angle": 0, "axis": "y", "origin": [0, 0, 9]},
					"faces": {
						"south": {"uv": [0, 0, 16, 16], "texture": "#1"}
					}
				}
			)
		output = {
			"textures": textures,
			"elements": elements,
			"gui_light": "front",
			"display": {
				"gui": {
					"translation": [icon_data["transformation"]["translation"][0], icon_data["transformation"]["translation"][1], 0],
					"scale": [icon_data["transformation"]["scale"]["mul"][0]/icon_data["transformation"]["scale"]["div"][0], icon_data["transformation"]["scale"]["mul"][1]/icon_data["transformation"]["scale"]["div"][1], 1]
				}
			}
		}
	
	else:
		output = {
			"parent": "minecraft:item/generated",
			"textures": {
			"layer0": (icon_data["path"] if "path" in icon_data else ("item/custom/gui/icon/" + icon_name))
			}
		}
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)



	path = base_path + 'items/gui/icon/' + icon_name + '.json'
	makedir(path)

	output = {
		"model": {
			"type": "minecraft:model",
			"model": 'anemoland:gui/icon/' + icon_name
		}
	}
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)