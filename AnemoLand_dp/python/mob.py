import json
import os

file_generation_flag = {
	"walking_mushroom": True,
	"boar": True,
	"king_boar": True,
	"martellos": True,
	"muscleroom": True,
	"ojinushi": True,
	"bagikeros": True,
	"decoy1": True,
	"spider": True,
	"raptor": True,
	"squirrel_head": True,
	"garapapas": True,
	"carnara": True,
	"squirrel": True,
	"garapas": True,
	"human1": True,
	"garuda": True
}
element_color = {
	"physical": "white",
	"fire": "red",
	"water": "blue",
	"ice": "aqua",
	"thunder": "yellow"
}
pet_custom_model_data_offset = 10000

with open('data/mob/mob.json' , encoding='utf-8') as f:
	mob_database = json.load(f)

with open('data/common.json' , encoding='utf-8') as f:
	common_database = json.load(f)

namespace_core = common_database["namespace_core"]
namespace_contents = common_database["namespace_contents"]
namespace_storage = common_database["namespace_core"]

def makedir(path):
	if not os.path.isdir(os.path.dirname(path)):
		os.makedirs(os.path.dirname(path))

base_path = '../data/' + namespace_contents + '/function/command/summon/'

# command
for mob_name, mob_data in mob_database.items():
	for level in [5, 10, 15, 20, 25, 30]:
		path = base_path + mob_name + '/' + str(level) + '.mcfunction'
		makedir(path)
		output = []
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/default/enemy/level {level:' + str(level) + '}\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)
	path = base_path + mob_name + '/default.mcfunction'
	makedir(path)
	output = []
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/default/enemy/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

base_path = '../data/' + namespace_contents + '/function/sys/entity/'

# branch
path = base_path + '/branch/damaged_by_mob.mcfunction'
makedir(path)
output = []
for mob_name, mob_data in mob_database.items():
	output.append('execute if entity @s[tag=' + mob_name + '] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/0\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

path = base_path + '/branch/damaged_by_player.mcfunction'
makedir(path)
output = []
for mob_name, mob_data in mob_database.items():
	output.append('execute if entity @s[tag=' + mob_name + '] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/0\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

path = base_path + '/branch/mob_tick.mcfunction'
makedir(path)
output = []
for mob_name, mob_data in mob_database.items():
	output.append('execute if entity @s[tag=' + mob_name + '] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/tick/0\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

# branch
path = base_path + '/branch/aj_remove.mcfunction'
makedir(path)
output = []
aj_name_list = []
for mob_name, mob_data in mob_database.items():
	if not ("without_aj" in mob_data and mob_data["without_aj"]):
		if not mob_data["aj_name"] in aj_name_list:
			aj_name_list.append(mob_data["aj_name"])
			output.append('execute if entity @s[tag=aj.' + mob_data["aj_name"] + '.root] run function animated_java:' + mob_data["aj_name"] + '/remove/this\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)

base_path = '../data/' + namespace_contents + '/function/sys/entity/mob/'

for mob_name, mob_data in mob_database.items():

	if (not mob_name in file_generation_flag) or (not file_generation_flag[mob_name]):
		continue

	variant_id_list = ["default"]
	if "variants" in mob_data:
		variant_id_list.extend(list(mob_data["variants"]))

	# animation
	if "animations" in mob_data:
		for animation_id, animation_data in mob_data["animations"].items():
			path = base_path + mob_name + '/animation/' + animation_id + '.mcfunction'
			makedir(path)
			output = []
			output.append('execute on passengers if entity @s[tag=aj.global.root] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/as_aj_root/' + animation_id + '\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			path = base_path + mob_name + '/animation/as_aj_root/' + animation_id + '.mcfunction'
			makedir(path)
			output = []
			output.append('function animated_java:' + mob_data["aj_name"] + '/animations/pause_all\n')
			output.append('function animated_java:' + mob_data["aj_name"] + '/animations/' + (mob_data["animation_prefix"] if "animation_prefix" in mob_data else '') + animation_id + '/play\n')
			if "extra" in animation_data:
				for extra_animation in animation_data["extra"]:
					output.append('function animated_java:' + mob_data["aj_name"] + '/animations/' + (mob_data["animation_prefix"] if "animation_prefix" in mob_data else '') + extra_animation + '/play\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)


	# variants
	if "skin_variants" in mob_data:
		for skin_variant_id, skin_variant_data in mob_data["skin_variants"].items():
			path = base_path + mob_name + '/variant/' + skin_variant_id + '.mcfunction'
			makedir(path)
			output = []
			output.append('execute on passengers if entity @s[tag=aj.global.root] run function animated_java:' + mob_data["aj_name"] + '/variants/' + (mob_data["variant_prefix"] if "variant_prefix" in mob_data else '') + skin_variant_id + '/apply\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

	# damaged/0
	path = base_path + mob_name + '/damaged/0.mcfunction'
	makedir(path)
	output = []
	if len(mob_data["parts"]) > 1:
		output.append('execute if entity @s[tag=!mob_root] run return run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/hitbox\n')
	output.append('execute if entity @s[tag=mob_root] run return run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/root\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# damaged/root
	path = base_path + mob_name + '/damaged/root.mcfunction'
	makedir(path)
	output = []
	if "target_change" in mob_data and "when_damaged" in mob_data["target_change"] and "preset" in mob_data["target_change"]["when_damaged"]:
		output.append('function ' + namespace_core + ':sys/entity/common/target/change/preset/' + mob_data["target_change"]["when_damaged"]["preset"] + '/0\n')
	output.append('function ' + namespace_core + ':sys/entity/common/damage/dst/get_status\n')
	# output.append('execute unless score #weapon_skill_flag temp matches 1.. if score #charge_rate temp matches -9.. run return 1\n')
	output.append('execute at @s anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.5 run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/common\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# damaged/hitbox
	if len(mob_data["parts"]) > 1:
		path = base_path + mob_name + '/damaged/hitbox.mcfunction'
		makedir(path)
		output = []
		output.append('function ' + namespace_core + ':sys/entity/common/damage/dst/get_status\n')
		# output.append('data modify storage temp:_ data.Motion set from entity @s Motion\n')
		# output.append('execute unless score #weapon_skill_flag temp matches 1.. if score #health temp matches -9.. run return 1\n')
		output.append('scoreboard players operation #entity_id temp = @s entity_id\n')
		output.append('execute at @s anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.5 as @e[type=#' + namespace_storage + ':mob_core,tag=mob_root,distance=..32] if score @s entity_id = #entity_id temp run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/root_from_hitbox\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# damaged/root_from_hitbox
	path = base_path + mob_name + '/damaged/root_from_hitbox.mcfunction'
	makedir(path)
	output = []
	# output.append('data modify entity @s Motion set from storage temp:_ data.Motion\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/common\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# damaged/common
	path = base_path + mob_name + '/damaged/common.mcfunction'
	makedir(path)
	output = []
	output.append('tag @s add damaged\n')
	output.append('execute on passengers if entity @s[tag=aj.global.root] run function animated_java:' + mob_data["aj_name"] + '/as_own_locator_entities {command:"tag @s add damaged"}\n')
	output.append('damage @s 0\n')
	if "variants" in mob_data:
		output.append('execute if entity @s[tag=variant.default] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/damaged\n')
		for variant_id, variant_data in mob_data["variants"].items():
			output.append('execute if entity @s[tag=variant.' + variant_id + '] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/' + variant_id + '_damaged\n')
	else:
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/damaged\n')
	output.append('function ' + namespace_core + ':sys/entity/common/damage/dst/apply\n')
	output.append('execute unless score @s health matches 1.. run return run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/die/0\n')
	output.append('execute if score @s health matches 1.. run return run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/damaged\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# die/0
	path = base_path + mob_name + '/damaged/die/0.mcfunction'
	makedir(path)
	output = []
	if len(mob_data["parts"]) > 1:
		output.append('execute on passengers if entity @s[tag=aj.global.root] run function animated_java:' + mob_data["aj_name"] + '/as_own_locator_entities {command:"tag @s add dead"}\n')
	if not ("death_loot_table_disable" in mob_data and mob_data["death_loot_table_disable"]):
		output.append('execute if entity @s[tag=enemy] run scoreboard players operation #drop_bonus temp = @s drop_bonus\n')
		output.append('execute if entity @s[tag=enemy] run scoreboard players operation #level temp = @s level\n')
		if mob_data["type"] == "boss":
			output.append('execute if entity @s[tag=enemy,tag=!arena] as @a[gamemode=adventure,distance=..64] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/die/drop\n')
		else:
			output.append('execute if entity @s[tag=enemy,tag=!arena] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/die/drop\n')
	if "immediate_disappear" in mob_data and mob_data["immediate_disappear"]:
		output.append('execute on passengers if entity @s[tag=aj.global.root] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/die/disappear\n')
	else:
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/die\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/die/unlock\n')
	if "variants" in mob_data:
		output.append('execute if entity @s[tag=variant.default] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/default\n')
		for variant_id, variant_data in mob_data["variants"].items():
			output.append('execute if entity @s[tag=variant.' + variant_id + '] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/' + variant_id + '\n')
	else:
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/default\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/die\n')
	output.append('function ' + namespace_core + ':sys/entity/common/die/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# manual/damaged
	path = base_path + mob_name + '/manual/damaged.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/damaged\n')
		output.append('#\n')
		output.append('# 攻撃を受けた時に実行される\n')
		output.append('# このファイルは初回のみ自動生成される\n')
		output.append('# サウンドなど、攻撃を受けた時の処理をこの下に記述\n')
		output.append('#\n')
		output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/common\n')
		output.append('\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# manual/die
	path = base_path + mob_name + '/manual/die.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/damaged\n')
		output.append('#\n')
		output.append('# 死亡時に実行される\n')
		output.append('# このファイルは初回のみ自動生成される\n')
		output.append('# サウンドなど、死亡時の処理をこの下に記述\n')
		output.append('#\n')
		output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/damaged/common\n')
		output.append('\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# manual/angry
	path = base_path + mob_name + '/manual/angry.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/damaged\n')
		output.append('#\n')
		output.append('# 怒り中に実行される\n')
		output.append('# このファイルは初回のみ自動生成される\n')
		output.append('# パーティクルなど、怒り時の処理をこの下に記述\n')
		output.append('#\n')
		output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/state/tick\n')
		output.append('\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# manual/tick
	path = base_path + mob_name + '/manual/tick.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/tick\n')
		output.append('#\n')
		output.append('# 常時実行される\n')
		output.append('# このファイルは初回のみ自動生成される\n')
		output.append('#\n')
		output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/tick/00\n')
		output.append('\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# manual/attack_hit
	path = base_path + mob_name + '/manual/attack_hit.mcfunction'
	if not os.path.isfile(path):
		makedir(path)
		output = []
		output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/attack_hit\n')
		output.append('#\n')
		output.append('# 攻撃を当てた時に実行される\n')
		output.append('# このファイルは初回のみ自動生成される\n')
		output.append('#\n')
		output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/attack/**\n')
		output.append('\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# die/drop
	if not ("death_loot_table_disable" in mob_data and mob_data["death_loot_table_disable"]):
		path = base_path + mob_name + '/damaged/die/drop.mcfunction'
		makedir(path)
		output = []
		output.append('execute unless score #level temp matches 20.. run loot spawn ~ ~ ~ loot ' + namespace_contents + ':entity/' + mob_name + '/1\n')
		output.append('execute if score #level temp matches 20..29 run loot spawn ~ ~ ~ loot ' + namespace_contents + ':entity/' + mob_name + '/2\n')
		output.append('execute if score #level temp matches 30.. run loot spawn ~ ~ ~ loot ' + namespace_contents + ':entity/' + mob_name + '/3\n')
		if mob_data["type"] == "boss":
			output.append('execute if score #level temp matches 20..24 if predicate anemoland:random_chance/0_3 run loot spawn ~ ~ ~ loot ' + namespace_contents + ':item/amulet_random/silver\n')
			output.append('execute if score #level temp matches 25..29 if predicate anemoland:random_chance/0_4 run loot spawn ~ ~ ~ loot ' + namespace_contents + ':item/amulet_random/silver\n')
			output.append('execute if score #level temp matches 30..34 if predicate anemoland:random_chance/0_3 run loot spawn ~ ~ ~ loot ' + namespace_contents + ':item/amulet_random/gold\n')
			output.append('execute if score #level temp matches 35..39 if predicate anemoland:random_chance/0_4 run loot spawn ~ ~ ~ loot ' + namespace_contents + ':item/amulet_random/gold\n')
			output.append('execute if score #level temp matches 40.. run loot spawn ~ ~ ~ loot ' + namespace_contents + ':item/amulet_random/gold\n')
			output.append('data modify storage temp:_ data.UUID set from entity @s UUID\n')
			output.append('execute as @e[type=item,tag=!drop_item_check,distance=..1] run function ' + namespace_core + ':sys/entity/common/die/drop\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# die/unlock
	path = base_path + mob_name + '/damaged/die/unlock.mcfunction'
	makedir(path)
	output = []
	if "unlock" in mob_data:
		if "armor" in mob_data["unlock"]:
			for unlocked_armor in mob_data["unlock"]["armor"]:
				output.append('function ' + namespace_contents + ':command/progress/unlock/armor/' + unlocked_armor + '\n')
	if not ("recipe_disable" in mob_data and mob_data["recipe_disable"]):
		output.append('execute if entity @s[tag=variant.default] run recipe give @a ' + namespace_contents + ':' + mob_data["type"] + '/' + mob_data["dictionary"]["recipe_prefix"] + "_" + mob_name + '\n')
		if "variants" in mob_data:
			for variant_id, variant_data in mob_data["variants"].items():
				if "dictionary" in variant_data:
					output.append('execute if entity @s[tag=variant.' + variant_id + '] run recipe give @a ' + namespace_contents + ':' + mob_data["type"] + '/' + variant_data["dictionary"]["recipe_prefix"] + "_" + mob_name + '_' + variant_id + '\n')
	output.append('data modify storage ' + namespace_storage + ':progress data.mob_list.' + mob_name + '.unlock set value 1b\n')
	output.append('execute if score @s level matches 15.. run data modify storage ' + namespace_storage + ':progress data.mob_list.' + mob_name + '.defeated_levels.15 set value 1b\n')
	output.append('execute if score @s level matches 20.. run data modify storage ' + namespace_storage + ':progress data.mob_list.' + mob_name + '.defeated_levels.20 set value 1b\n')
	output.append('execute if score @s level matches 25.. run data modify storage ' + namespace_storage + ':progress data.mob_list.' + mob_name + '.defeated_levels.25 set value 1b\n')
	output.append('execute if score @s level matches 30.. run data modify storage ' + namespace_storage + ':progress data.mob_list.' + mob_name + '.defeated_levels.30 set value 1b\n')
	output.append('execute if score @s level matches 35.. run data modify storage ' + namespace_storage + ':progress data.mob_list.' + mob_name + '.defeated_levels.35 set value 1b\n')
	output.append('execute if score @s level matches 40.. run data modify storage ' + namespace_storage + ':progress data.mob_list.' + mob_name + '.defeated_levels.40 set value 1b\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# die/disappear
	if not ("without_aj" in mob_data and mob_data["without_aj"]):
		path = base_path + mob_name + '/damaged/die/disappear.mcfunction'
		makedir(path)
		output = []
		output.append('function animated_java:' + mob_data["aj_name"] + '/remove/this\n')
		output.append('particle poof ~ ~0.2 ~ 1 0 1 0 40\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# tick/0
	path = base_path + mob_name + '/tick/0.mcfunction'
	makedir(path)
	output = []
	output.append('execute at @s run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/tick/00\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# tick/00
	path = base_path + mob_name + '/tick/00.mcfunction'
	makedir(path)
	output = []
	output.append('function ' + namespace_core + ':sys/entity/common/tick/0\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/state/tick\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/0\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/tick\n')
	output.append('function ' + namespace_core + ':sys/entity/common/tick/1\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# state/end_damaged
	path = base_path + mob_name + '/state/end_damaged.mcfunction'
	makedir(path)
	output = []
	output.append('tag @s remove damaged\n')
	output.append('execute on passengers if entity @s[tag=aj.global.root] run function animated_java:' + mob_data["aj_name"] + '/as_own_locator_entities {command:"tag @s remove damaged"}\n')
	if "variants" in mob_data:
		output.append('execute if entity @s[tag=variant.default] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/default\n')
		for variant_id, variant_data in mob_data["variants"].items():
			output.append('execute if entity @s[tag=variant.' + variant_id + '] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/' + variant_id + '\n')
	else:
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/variant/default\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# action/0
	path = base_path + mob_name + '/action/0.mcfunction'
	makedir(path)
	output = []
	output.append('scoreboard players add @s action_time 1\n')
	output.append('execute if entity @s[tag=pet,tag=!following_player] unless entity @e[type=#' + namespace_storage + ':mob_core,tag=enemy,distance=..64] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/start\n')
	output.append('execute if entity @s[tag=pet,tag=following_player] run return run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/0\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/branch\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# action/branch
	path = base_path + mob_name + '/action/branch.mcfunction'
	makedir(path)
	output = []
	for action_id, action_data in mob_data["actions"].items():
		if action_data["score"] == 0:
			output.append('execute unless score @s action0 matches 1.. run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_id + '/tick\n')
		else:
			output.append('execute if score @s action0 matches ' + str(action_data["score"]) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_id + '/tick\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	for action_id, action_data in mob_data["actions"].items():
		# action/*/start
		path = base_path + mob_name + '/action/' + action_id + '/start.mcfunction'
		makedir(path)
		output = []
		output.append('scoreboard players set @s action0 ' + str(action_data["score"]) + '\n')
		output.append('scoreboard players set @s action1 0\n')
		output.append('scoreboard players set @s action_time 0\n')
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/start\n')
		if action_id == "get_angry":
			output.append('function anemoland_contents:sys/entity/mob/' + mob_name + '/state/angry/start\n')			
		if action_id == "tired":
			output.append('function anemoland_contents:sys/entity/mob/' + mob_name + '/state/angry/end\n')			
		if action_id == "bark":
			output.append('tag @s add noticed\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

		# action/*/tick
		path = base_path + mob_name + '/action/' + action_id + '/tick.mcfunction'
		makedir(path)
		output = []
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/tick\n')
		# output.append('execute if score @s action1 matches 0 run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_id + '/0/0\n')
		# output.append('execute if score @s action1 matches 1 run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_id + '/1/0\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

		# action/*/end
		path = base_path + mob_name + '/action/' + action_id + '/end.mcfunction'
		makedir(path)
		output = []
		if "next_target" in action_data:
			output.append('function anemoland:sys/entity/common/target/change/' + action_data["next_target"] + '\n')
		if action_id == mob_data["default_action"]:
			if "bark" in mob_data["actions"]:
				output.append('execute if entity @s[tag=!noticed] run return run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/bark/start\n')			
			if "tired" in mob_data["actions"]:
				output.append('execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/tired/start\n')			
			if "get_angry" in mob_data["actions"]:
				output.append('execute if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/get_angry/start\n')
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/end\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

		# manual/action/*/start
		path = base_path + mob_name + '/manual/action/' + action_id + '/start.mcfunction'
		if not os.path.isfile(path):
			makedir(path)
			output = []
			output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/start\n')
			output.append('#\n')
			output.append('# アクション ' + action_id + ' の開始時に実行される\n')
			output.append('# このファイルは初回のみ自動生成される\n')
			output.append('# アクション開始時の処理をこの下に記述\n')
			output.append('#\n')
			output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_id + '/start\n')
			output.append('\n')

			if action_id in ["bark", "get_angry"]:
				output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/bark\n')
			elif action_id in ["tired"]:
				output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/tired\n')
			elif action_id in ["walk"]:
				output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/walk\n')
			else:
				output.append('# function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/default\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

		# manual/action/*/tick
		path = base_path + mob_name + '/manual/action/' + action_id + '/tick.mcfunction'
		if not os.path.isfile(path):
			makedir(path)
			output = []
			output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/tick\n')
			output.append('#\n')
			output.append('# アクション ' + action_id + ' 中に実行される\n')
			output.append('# このファイルは初回のみ自動生成される\n')
			output.append('# アクション中の処理をこの下に記述\n')
			output.append('#\n')
			output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_id + '/tick\n')
			output.append('\n')
			if action_id == "tired":
				output.append('tp @s ~ ~ ~ ~ ~\n')
				output.append('\n')
				output.append('execute if score @s action_time matches 100.. run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/end\n')
			elif action_id in ["bark", "get_angry"]:
				output.append('# プレイヤーの方を向く\n')
				output.append('    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~\n')
				output.append('    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~\n')
				output.append('# 終了\n')
				output.append('    execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/' + action_id + '/end\n')
			elif action_id in ["walk"]:
				output.append('# ターゲットがいなければ終了\n')
				output.append('    execute unless score #hostile_target.exist temp matches 1 run return run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/' + action_id + '/end\n')
				output.append('# プレイヤーの方を向く\n')
				output.append('    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~\n')
				output.append('    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~\n')
				output.append('# 前方に移動\n')
				output.append('    data modify storage temp:_ data.motion set value {speed:0.4}\n')
				output.append('    execute at @s rotated ~ 0 run function anemoland:sys/entity/common/motion/0\n')
				output.append('# 終了\n')
				output.append('    execute if score #hostile_target.is_player temp matches 1 if entity @a[tag=hostile_target,sort=nearest,distance=..8,limit=1] run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/' + action_id + '/end\n')
				output.append('    execute unless score #hostile_target.is_player temp matches 1 if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..8,limit=1] run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/' + action_id + '/end\n')
			else:
				output.append('# 分岐する場合\n')
				output.append('    execute if score @s action1 matches 0 run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/0/0\n')
				output.append('    execute if score @s action1 matches 1 run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/1/0\n')
				output.append('# 終了\n')
				output.append('    execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/' + mob_name + '/action/' + action_id + '/end\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

		# manual/action/*/end
		path = base_path + mob_name + '/manual/action/' + action_id + '/end.mcfunction'
		if not os.path.isfile(path):
			makedir(path)
			output = []
			output.append('#> ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/action/' + action_id + '/end\n')
			output.append('#\n')
			output.append('# アクション ' + action_id + ' の終了時に実行される\n')
			output.append('# このファイルは初回のみ自動生成される\n')
			output.append('# アクション終了時の処理をこの下に記述\n')
			if action_id == mob_data["default_action"]:
				output.append('# 咆哮(bark)・怒り(get_angry)・疲労(tired)の条件を満たした場合は自動的にそのアクションに移行し、この関数はスキップされます。\n')
			output.append('#\n')
			output.append('# @within function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_id + '/end\n')
			output.append('\n')
			output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/stop/start\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

	# attack/
	if "attacks" in mob_data:
		for attack_name, attack_data in mob_data["attacks"].items():

			path = base_path + mob_name + '/attack/' + attack_name + '/0.mcfunction'
			makedir(path)
			output = []
			output.append('function ' + namespace_core + ':sys/entity/common/damage/src/get_status\n')
			group_counter = 1
			for group_data in attack_data["groups"]:
				output.append('scoreboard players set #damage.src.attack.mul temp ' + str(group_data["mul"]) + '\n')
				include_other_than_root = False
				for attack_part in group_data["parts"]:
					if not attack_part == "root":
						include_other_than_root = True
				output.append('tag @s add attacker_root\n')
				if include_other_than_root:
					output.append('scoreboard players operation #entity_id temp = @s entity_id\n')
					for attack_part in group_data["parts"]:
						if attack_part == "root":
							continue
						output.append('execute' + (" " + group_data["predicate"] if ("predicate" in group_data and len(group_data["predicate"])) else "" ) + ' as @e[type=#' + namespace_storage + ':mob_core,tag=hitbox.' + attack_part + ',tag=' + mob_name + ',distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part\n')
					output.append('execute if entity @s[tag=pet] rotated ~ 0 positioned ^' + str(group_data["position"][0]) + ' ^' + str(group_data["position"][1]) + ' ^' + str(group_data["position"][2]) + ' positioned as @e[type=#' + namespace_storage + ':mob_core,tag=attack_part,distance=..32] positioned ~-' + str(group_data["size"][0]/2) + ' ~-' + str(group_data["size"][1]/2) + ' ~-' + str(group_data["size"][2]/2) + ' if entity @e[type=#' + namespace_storage + ':mob_core,tag=enemy,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] positioned ~' + str(group_data["size"][0]/2) + ' ~' + str(group_data["size"][1]/2) + ' ~' + str(group_data["size"][2]/2) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/attack/' + attack_name + '/to_enemy_' + str(group_counter) + '\n')
					output.append('execute if entity @s[tag=enemy] rotated ~ 0 positioned ^' + str(group_data["position"][0]) + ' ^' + str(group_data["position"][1]) + ' ^' + str(group_data["position"][2]) + ' positioned as @e[type=#' + namespace_storage + ':mob_core,tag=attack_part,distance=..32] positioned ~-' + str(group_data["size"][0]/2) + ' ~-' + str(group_data["size"][1]/2) + ' ~-' + str(group_data["size"][2]/2) + ' if entity @e[type=#' + namespace_storage + ':mob_core,tag=pet,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] positioned ~' + str(group_data["size"][0]/2) + ' ~' + str(group_data["size"][1]/2) + ' ~' + str(group_data["size"][2]/2) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/attack/' + attack_name + '/to_pet_' + str(group_counter) + '\n')
					output.append('execute if entity @s[tag=enemy] rotated ~ 0 positioned ^' + str(group_data["position"][0]) + ' ^' + str(group_data["position"][1]) + ' ^' + str(group_data["position"][2]) + ' positioned as @e[type=#' + namespace_storage + ':mob_core,tag=attack_part,distance=..32] positioned ~-' + str(group_data["size"][0]/2) + ' ~-' + str(group_data["size"][1]/2) + ' ~-' + str(group_data["size"][2]/2) + ' as @a[dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',scores={hurt_time=-1},gamemode=adventure] positioned ~' + str(group_data["size"][0]/2) + ' ~' + str(group_data["size"][1]/2) + ' ~' + str(group_data["size"][2]/2) + ' positioned as @e[type=#' + namespace_storage + ':mob_core,tag=attacker_root,distance=..32,limit=1] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/attack/' + attack_name + '/to_player_' + str(group_counter) + '\n')
					output.append('tag @e[type=#' + namespace_storage + ':mob_core,tag=attack_part,distance=..32] remove attack_part\n')
				if "root" in group_data["parts"]:
					output.append('execute if entity @s[tag=pet] rotated ~ 0 positioned ^' + str(group_data["position"][0]) + ' ^' + str(group_data["position"][1]) + ' ^' + str(group_data["position"][2]) + ' positioned ~-' + str(group_data["size"][0]/2) + ' ~-' + str(group_data["size"][1]/2) + ' ~-' + str(group_data["size"][2]/2) + ' if entity @e[type=#' + namespace_storage + ':mob_core,tag=enemy,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] positioned ~' + str(group_data["size"][0]/2) + ' ~' + str(group_data["size"][1]/2) + ' ~' + str(group_data["size"][2]/2) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/attack/' + attack_name + '/to_enemy_' + str(group_counter) + '\n')
					output.append('execute if entity @s[tag=enemy] rotated ~ 0 positioned ^' + str(group_data["position"][0]) + ' ^' + str(group_data["position"][1]) + ' ^' + str(group_data["position"][2]) + ' positioned ~-' + str(group_data["size"][0]/2) + ' ~-' + str(group_data["size"][1]/2) + ' ~-' + str(group_data["size"][2]/2) + ' if entity @e[type=#' + namespace_storage + ':mob_core,tag=pet,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] positioned ~' + str(group_data["size"][0]/2) + ' ~' + str(group_data["size"][1]/2) + ' ~' + str(group_data["size"][2]/2) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/attack/' + attack_name + '/to_pet_' + str(group_counter) + '\n')
					output.append('execute if entity @s[tag=enemy] rotated ~ 0 positioned ^' + str(group_data["position"][0]) + ' ^' + str(group_data["position"][1]) + ' ^' + str(group_data["position"][2]) + ' positioned ~-' + str(group_data["size"][0]/2) + ' ~-' + str(group_data["size"][1]/2) + ' ~-' + str(group_data["size"][2]/2) + ' as @a[dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',scores={hurt_time=-1},gamemode=adventure] positioned ~' + str(group_data["size"][0]/2) + ' ~' + str(group_data["size"][1]/2) + ' ~' + str(group_data["size"][2]/2) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/attack/' + attack_name + '/to_player_' + str(group_counter) + '\n')
				output.append('tag @s remove attacker_root\n')
				group_counter += 1
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

			group_counter = 1
			for group_data in attack_data["groups"]:

				path = base_path + mob_name + '/attack/' + attack_name + '/to_enemy_' + str(group_counter) + '.mcfunction'
				makedir(path)
				output = []
				output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/attack_hit\n')
				output.append('damage @e[type=#' + namespace_storage + ':mob_core,tag=enemy,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] 10 generic_kill by @s\n')
				output.append('execute as @e[type=#' + namespace_storage + ':mob_core,tag=enemy,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] run function ' + namespace_contents + ':sys/entity/branch/damaged_by_mob\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				path = base_path + mob_name + '/attack/' + attack_name + '/to_pet_' + str(group_counter) + '.mcfunction'
				makedir(path)
				output = []
				output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/attack_hit\n')
				output.append('damage @e[type=#' + namespace_storage + ':mob_core,tag=pet,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] 10 generic_kill by @s\n')
				output.append('execute as @e[type=#' + namespace_storage + ':mob_core,tag=pet,tag=!damaged,dx=' + str(group_data["size"][0]-1) + ',dy=' + str(group_data["size"][1]-1) + ',dz=' + str(group_data["size"][2]-1) + ',limit=1] run function ' + namespace_contents + ':sys/entity/branch/damaged_by_mob\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				path = base_path + mob_name + '/attack/' + attack_name + '/to_player_' + str(group_counter) + '.mcfunction'
				makedir(path)
				output = []
				output.append('execute at @s as @e[type=#anemoland:mob_core,tag=attacker_root,distance=..32,limit=1] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/attack_hit\n')
				if "knockback" in group_data:
					output.append('function ' + namespace_core + ':sys/entity/common/attack_knockback/' + group_data["knockback"] + '\n')
				output.append('function ' + namespace_core + ':sys/player/common/damage/dst/apply\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

				group_counter += 1

	# action/follow_player/
	path = base_path + mob_name + '/action/follow_player/0.mcfunction'
	makedir(path)
	output = []
	output.append('execute unless score @s action1 matches 1.. run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/stop/0\n')
	output.append('execute if score @s action1 matches 1.. run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/walk/0\n')
	if not mob_data["type"] == "boss":
		output.append('function ' + namespace_core + ':sys/entity/common/collide/1\n')
	else:
		output.append('function ' + namespace_core + ':sys/entity/common/collide/4\n')
	output.append('execute if entity @e[type=#' + namespace_storage + ':mob_core,tag=enemy,distance=..32] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/end\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/action/follow_player/collide.mcfunction'
	makedir(path)
	output = []
	output.append('data modify storage temp:_ data.motion set value {speed:0.2}\n')
	output.append('function ' + namespace_core + ':sys/entity/common/motion/0\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/action/follow_player/start.mcfunction'
	makedir(path)
	output = []
	output.append('tag @s add following_player\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/stop/start\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/action/follow_player/end.mcfunction'
	makedir(path)
	output = []
	output.append('tag @s remove following_player\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + mob_data["default_action"] + '/start\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/action/follow_player/stop/0.mcfunction'
	makedir(path)
	output = []
	output.append('function ' + namespace_core + ':sys/entity/common/follow_player/stop\n')
	if "emote" in mob_data:
		output.append('execute if score @s action_time matches 40 if entity @s[tag=clear] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/emote/after_clear/branch\n')
	output.append('execute unless entity @a[tag=pet_owner,distance=..8] if entity @a[tag=pet_owner,distance=..32] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/walk/start\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/action/follow_player/stop/start.mcfunction'
	makedir(path)
	output = []
	output.append('scoreboard players set @s action1 0\n')
	output.append('scoreboard players set @s action_time 0\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/default\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/action/follow_player/walk/0.mcfunction'
	makedir(path)
	output = []
	output.append('function ' + namespace_core + ':sys/entity/common/follow_player/walk\n')
	output.append('execute if entity @a[tag=pet_owner,distance=..6] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/stop/start\n')
	output.append('execute unless entity @a[tag=pet_owner,distance=..128] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/follow_player/stop/start\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/action/follow_player/walk/start.mcfunction'
	makedir(path)
	output = []
	output.append('scoreboard players set @s action1 1\n')
	output.append('scoreboard players set @s action_time 0\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/walk\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# emote
	if "emote" in mob_data:
		path = base_path + mob_name + '/emote/after_clear/branch.mcfunction'
		makedir(path)
		output = []
		for variant_id, variant_data in mob_data["emote"].items():
			output.append('execute if entity @s[tag=variant.' + variant_id + '] run function anemoland_contents:sys/entity/mob/' + mob_name + '/emote/after_clear/' + variant_id + '\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# emote
	if "emote" in mob_data:
		for variant_id, variant_data in mob_data["emote"].items():
			if "after_clear" in variant_data:
				emote_data = variant_data["after_clear"]
				path = base_path + mob_name + '/emote/after_clear/' + variant_id + '.mcfunction'
				makedir(path)
				output = []
				if "animation" in emote_data:
					output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/' + emote_data["animation"] + '\n')
				if "chat_display" in emote_data:
					# output.append('execute on passengers if entity @s[tag=chat_display] run data modify entity @s text set value \'{"translate":"' + emote_data["chat_display"]["icon"] + '"}\'\n')
					if len(emote_data["chat_display"]["talk_pool"]) > 1:
						output.append('execute store result score #temp temp run random value 1..' + str(len(emote_data["chat_display"]["talk_pool"])) + '\n')
						for i, talk_item in enumerate(emote_data["chat_display"]["talk_pool"]):
							output.append('execute if score #temp temp matches ' + str(i+1) + ' on passengers if entity @s[tag=chat_display] run data modify entity @s text set value \'{"translate":"' + talk_item + '"}\'\n')
					else:
						output.append('execute on passengers if entity @s[tag=chat_display] run data modify entity @s text set value \'{"translate":"' + emote_data["chat_display"]["talk_pool"][0] + '"}\'\n')
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

	# state/tick
	path = base_path + mob_name + '/state/tick.mcfunction'
	makedir(path)
	output = []
	output.append('execute if entity @s[tag=damaged] if data entity @s {HurtTime:0s} run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/state/end_damaged\n')
	if mob_data["type"] == "boss" and "angry" in mob_data["status"]:
		output.append('execute if score @s anger.time matches 1.. if entity @s[tag=angry] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/manual/angry\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)
	if mob_data["type"] == "boss" and "angry" in mob_data["status"]:
		# state/angry/start
		path = base_path + mob_name + '/state/angry/start.mcfunction'
		makedir(path)
		output = []
		output.append('scoreboard players set @s anger.time ' + str(mob_data["status"]["angry"]["keep_time_seconds"]*20) + '\n')
		output.append('tag @s add angry\n')
		if "attack_damage_mul" in mob_data["status"]["angry"]:
			output.append('scoreboard players set @s attack.state_mul ' + str(int(mob_data["status"]["angry"]["attack_damage_mul"]*100)) + '\n')
		# output.append('function anemoland_contents:sys/entity/mob/' + mob_name + '/action/get_angry/start\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

		# state/angry/end
		path = base_path + mob_name + '/state/angry/end.mcfunction'
		makedir(path)
		output = []
		output.append('tag @s remove angry\n')
		output.append('scoreboard players operation @s anger.damage = @s max_health\n')
		output.append('scoreboard players set #temp temp ' + str(round(100*mob_data["status"]["angry"]["restart_damage_ratio"])) + '\n')
		output.append('scoreboard players operation @s anger.damage *= #temp temp\n')
		output.append('scoreboard players set #temp temp 100\n')
		output.append('scoreboard players operation @s anger.damage /= #temp temp\n')
		output.append('scoreboard players set @s anger.time ' + str(mob_data["status"]["angry"]["restart_interval_seconds"]*20) + '\n')
		output.append('scoreboard players set @s attack.state_mul 100\n')
		output.append('function anemoland_contents:sys/entity/mob/' + mob_name + '/action/tired/start\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)
	
	# choose_action
	if "choices" in mob_data:
		for choices1_name, choices1_data in mob_data["choices"].items():
			path = base_path + mob_name + '/choose_action/' + choices1_name + '/0.mcfunction'
			makedir(path)
			output = []
			if choices1_data["type"] == "distance":
				output.append('execute if entity @e[type=#' + namespace_storage + ':mob_core,tag=hostile_target,sort=nearest,distance=..' + str(choices1_data["threshold"]) + ',limit=1] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/choose_action/' + choices1_name + '/near/0\n')
				output.append('execute unless entity @e[type=#' + namespace_storage + ':mob_core,tag=hostile_target,sort=nearest,distance=..' + str(choices1_data["threshold"]) + ',limit=1] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/choose_action/' + choices1_name + '/far/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)
			
			if choices1_data["type"] == "random":
				path = base_path + mob_name + '/choose_action/' + choices1_name + '/0.mcfunction'
				makedir(path)
				output = []
				weight_total = 0
				for action_name, weight in choices1_data["weights"].items():
					weight_total += weight
				output.append('execute store result score #random temp run random value 0..' + str(weight_total-1) + '\n')
				weight_sum = 0
				for action_name, weight in choices1_data["weights"].items():
					if weight > 0:
						output.append('execute if score #random temp matches ' + str(weight_sum) + '..' + str(weight_sum+weight-1) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_name + '/start\n')
						weight_sum += weight
				with open(path, 'w', encoding='utf-8') as f:
					f.writelines(output)

			if "next" in choices1_data:
				for choices2_name, choices2_data in choices1_data["next"].items():
					path = base_path + mob_name + '/choose_action/' + choices1_name + '/' + choices2_name + '/0.mcfunction'
					makedir(path)
					output = []
					if choices2_data["type"] == "front_or_back":
						output.append('function ' + namespace_core + ':sys/entity/common/target_direction/mob/is_frontside\n')
						output.append('execute if score #target_is_frontside temp matches 1 run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/choose_action/' + choices1_name + '/' + choices2_name + '/front\n')
						output.append('execute unless score #target_is_frontside temp matches 1 run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/choose_action/' + choices1_name + '/' + choices2_name + '/back\n')
					with open(path, 'w', encoding='utf-8') as f:
						f.writelines(output)

					if "next" in choices2_data:
						for choices3_name, choices3_data in choices2_data["next"].items():
							path = base_path + mob_name + '/choose_action/' + choices1_name + '/' + choices2_name + '/' + choices3_name + '.mcfunction'
							makedir(path)
							output = []
							if choices3_data["type"] == "random":
								weight_total = 0
								for action_name, weight in choices3_data["weights"].items():
									weight_total += weight
								output.append('execute store result score #random temp run random value 0..' + str(weight_total-1) + '\n')
								weight_sum = 0
								for action_name, weight in choices3_data["weights"].items():
									if weight > 0:
										output.append('execute if score #random temp matches ' + str(weight_sum) + '..' + str(weight_sum+weight-1) + ' run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/action/' + action_name + '/start\n')
										weight_sum += weight
							with open(path, 'w', encoding='utf-8') as f:
								f.writelines(output)

	# summon/common/
	path = base_path + mob_name + '/summon/common/0.mcfunction'
	makedir(path)
	output = []
	additional_passenger = ''
	if mob_data["type"] == "npc":
		additional_passenger = ',{id:"text_display",text:\'""\',Tags:["chat_display"],billboard:"vertical",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,' + str(mob_data["display_height"] + 0.75) + 'f,0.0f],scale:[1.0f,1.0f,1.0f]}}'
	output.append('summon ' + mob_data["root_entity"] + ' ~ ~ ~ {Tags:["newly_summoned"],Passengers:[{id:"turtle"},{id:"text_display",text:\'""\',Tags:["display1"],billboard:"vertical",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,' + str(mob_data["display_height"]) + 'f,0.0f],scale:[1.0f,1.0f,1.0f]}},{id:"area_effect_cloud",Duration:2147483647,Radius:0.0f,effects:[],Tags:["target_recorder"]}' + additional_passenger + ']}\n')
	output.append('execute as @e[type=' + mob_data["root_entity"] + ',tag=newly_summoned,distance=..1,limit=1] run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/common/00\n')
	# output.append('particle poof ~ ~ ~ 0.3 0.3 0.3 0 10\n')
	output.append('scoreboard players reset #new_entity.level temp\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# summon/common/
	path = base_path + mob_name + '/summon/common/00.mcfunction'
	makedir(path)
	output = []
	output.append('data merge entity @s {Silent:1b,Age:0,DeathLootTable:"empty",ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"' + namespace_storage + ':post_attack/victim2victim":1,"' + namespace_storage + ':mob_experience/0":1}}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],IsImmuneToZombification:1b,Size:0}\n')
	if "without_aj" in mob_data and mob_data["without_aj"]:
		output.append('tag @s add without_aj\n')
	if mob_data["type"] == "decoy":
		output.append('data merge entity @s {NoAI:1b}\n')
	output.append('tag @s add mob\n')
	output.append('tag @s add mob_root\n')
	if mob_data["type"] == "boss":
		output.append('tag @s add boss\n')
	if mob_data["type"] == "npc":
		output.append('tag @s add npc\n')
	output.append('tag @s add ' + mob_name + '\n')
	output.append('attribute @s scale base set ' + str(mob_data["parts"]["root"]["hitbox_scale"]) + '\n')
	if mob_data["type"] == "boss":
		output.append('attribute @s knockback_resistance base set 1.0\n')
	elif len(mob_data["parts"]) > 1:
		output.append('attribute @s knockback_resistance base set 1.0\n')
	output.append('function ' + namespace_core + ':sys/entity/common/summon/0\n')
	if not ("without_aj" in mob_data and mob_data["without_aj"]):
		output.append('execute if data storage temp:_ data.new_entity{"variant":"default"} rotated ~ 0 run function animated_java:' + mob_data["aj_name"] + '/summon {args:{variant:"' + (mob_data["variant_prefix"] if "variant_prefix" in mob_data else '') + 'default",animation:"default",start_animation:true}}\n')
		if "variants" in mob_data:
			for variant_id, variant_data in mob_data["variants"].items():
				output.append('execute if data storage temp:_ data.new_entity{"variant":"' + variant_id + '"} rotated ~ 0 run function animated_java:' + mob_data["aj_name"] + '/summon {args:{variant:"' + (mob_data["variant_prefix"] if "variant_prefix" in mob_data else '') + variant_id + '",animation:"default",start_animation:true}}\n')
		output.append('ride @e[type=item_display,tag=newly_summoned.aj,distance=..32,limit=1] mount @s\n')
		output.append('tag @e[type=item_display,tag=newly_summoned.aj,distance=..32,limit=1] remove newly_summoned.aj\n')
		output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/animation/default\n')
	output.append('tag @s remove newly_summoned\n')
	output.append('execute if data storage temp:_ data.new_entity{"variant":"default"} run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/common/variant/default\n')
	if "variants" in mob_data:
		for variant_id, variant_data in mob_data["variants"].items():
			output.append('execute if data storage temp:_ data.new_entity{"variant":"' + variant_id + '"} run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/common/variant/' + variant_id + '\n')
	for summon_type in ["enemy", "pet", "player_side"]:
		output.append('execute if data storage temp:_ data.new_entity{"summon_type":"' + summon_type + '"} run function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/common/' + summon_type + '\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# summon/common/variant/
	for variant_id in variant_id_list:
		path = base_path + mob_name + '/summon/common/variant/' + variant_id + '.mcfunction'
		makedir(path)
		output = []
		if len(variant_id_list) > 1 and variant_id in mob_data["variants"] and "weapon" in mob_data["variants"][variant_id]:
			output.append('execute as @e[type=item_display,tag=aj.' + mob_name + '.item_display.weapon,distance=..8,sort=nearest,limit=1] run data modify entity @s item set value ' + mob_data["variants"][variant_id]["weapon"] + '\n')
		output.append('tag @s add variant.' + variant_id + '\n')
		output.append('data modify entity @s CustomName set value \'{"translate":"anemoland.mob.' + mob_name + '.' + variant_id + '.name"}\'\n')
		output.append('execute if data storage temp:_ data.new_entity{"summon_type":"enemy"} on passengers if entity @s[tag=display1] run data merge entity @s {text:\'[{"translate":"anemoland.mob.' + mob_name + '.' + variant_id + '.name"},{"text":" Lv."},{"score":{"objective":"temp","name":"#new_entity.level"}}]\'}\n')
		output.append('execute if data storage temp:_ data.new_entity{"summon_type":"pet"} on passengers if entity @s[tag=display1] run data merge entity @s {text:\'[{"translate":"anemoland.mob.' + mob_name + '.' + variant_id + '.name","color": "aqua"}]\'}\n')
		output.append('execute if data storage temp:_ data.new_entity{"summon_type":"player_side"} on passengers if entity @s[tag=display1] run data merge entity @s {text:\'[{"translate":"anemoland.mob.' + mob_name + '.' + variant_id + '.name","color": "aqua"},{"text":" Lv."},{"score":{"objective":"temp","name":"#new_entity.level"}}]\'}\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	path = base_path + mob_name + '/summon/common/enemy.mcfunction'
	makedir(path)
	output = []
	output.append('tag @s add enemy\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/common/status\n')
	output.append('# ボーナス\n')
	output.append('    execute store result score #gold_bonus temp run data get storage temp:_ data.event_bonus.gold 50\n')
	output.append('    execute store result score #xp_bonus temp run data get storage temp:_ data.event_bonus.xp 50\n')
	output.append('    execute store result score @s drop_bonus run data get storage temp:_ data.event_bonus.drop 1\n')
	# output.append('tellraw @a ["G ",{"score":{"name":"#gold_bonus","objective":"temp"}},", XP ",{"score":{"name":"#xp_bonus","objective":"temp"}},", DROP ",{"score":{"name":"#drop_bonus","objective":"temp"}}]\n')
	output.append('# ゴールド\n')
	output.append('    scoreboard players set @s gold ' + str(int(mob_data["status"]["gold"]["mul"]*10)) + '\n')
	output.append('    scoreboard players operation @s gold *= #new_entity.level temp\n')
	output.append('    scoreboard players add @s gold ' + str(int(mob_data["status"]["gold"]["base"]*10)) + '\n')
	output.append('    scoreboard players add #gold_bonus temp 100\n')
	output.append('    scoreboard players operation @s gold *= #gold_bonus temp\n')
	output.append('    scoreboard players set #const temp 1000\n')
	output.append('    scoreboard players operation @s gold /= #const temp\n')
	output.append('# XP\n')
	output.append('    scoreboard players set @s xp ' + str(int(mob_data["status"]["xp"]["mul"]*10)) + '\n')
	output.append('    scoreboard players operation @s xp *= #new_entity.level temp\n')
	output.append('    scoreboard players add @s xp ' + str(int(mob_data["status"]["xp"]["base"]*10)) + '\n')
	output.append('    scoreboard players add #xp_bonus temp 100\n')
	output.append('    scoreboard players operation @s xp *= #xp_bonus temp\n')
	output.append('    scoreboard players set #const temp 1000\n')
	output.append('    scoreboard players operation @s xp /= #const temp\n')
	if "variants" in mob_data:
		output.append('# バリアントボーナス\n')
		for variant_id, variant_data in mob_data["variants"].items():
			if "status" in variant_data:
				if "xp_bonus" in variant_data["status"] and "mul" in variant_data["status"]["xp_bonus"]:
					output.append('    execute if entity @s[tag=variant.' + variant_id + '] run scoreboard players set #xp_bonus temp ' + str(variant_data["status"]["xp_bonus"]["mul"]) + '\n')
					output.append('    execute if entity @s[tag=variant.' + variant_id + '] run scoreboard players operation @s xp *= #xp_bonus temp\n')
				if "gold_bonus" in variant_data["status"] and "mul" in variant_data["status"]["gold_bonus"]:
					output.append('    execute if entity @s[tag=variant.' + variant_id + '] run scoreboard players set #gold_bonus temp ' + str(variant_data["status"]["gold_bonus"]["mul"]) + '\n')
					output.append('    execute if entity @s[tag=variant.' + variant_id + '] run scoreboard players operation @s gold *= #gold_bonus temp\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	path = base_path + mob_name + '/summon/common/status.mcfunction'
	makedir(path)
	output = []
	output.append('# level\n')
	output.append('    execute unless score #new_entity.level temp matches 0.. run scoreboard players set #new_entity.level temp ' + str(mob_data["status"]["default_level"]) + '\n')
	output.append('    scoreboard players operation @s level = #new_entity.level temp\n')
	output.append('# max health\n')
	output.append('    scoreboard players set @s max_health ' + str(int(mob_data["status"]["max_health"]["mul"]*10)) + '\n')
	output.append('    scoreboard players operation @s max_health *= #new_entity.level temp\n')
	output.append('    scoreboard players add @s max_health ' + str(int(mob_data["status"]["max_health"]["base"]*10)) + '\n')
	if mob_data["type"] == "boss":
		output.append('# rank による倍率\n')
		output.append('    scoreboard players set #rank_mul temp 100\n')
		output.append('    execute if score #new_entity.level temp matches 20.. run scoreboard players add #rank_mul temp 20\n')
		output.append('    execute if score #new_entity.level temp matches 30.. run scoreboard players add #rank_mul temp 20\n')
		output.append('    scoreboard players operation @s max_health *= #rank_mul temp\n')
		output.append('    scoreboard players set #rank_mul temp 100\n')
		output.append('    scoreboard players operation @s max_health /= #rank_mul temp\n')
		output.append('    scoreboard players operation @s max_health /= #rank_mul temp\n')
		output.append('    scoreboard players operation @s max_health *= #rank_mul temp\n')
		output.append('# 人数による倍率\n')
		output.append('    execute store result score #team_mul temp if entity @a[gamemode=adventure,distance=..64]\n')
		output.append('    scoreboard players add #team_mul temp 1\n')
		output.append('    scoreboard players operation @s max_health *= #team_mul temp\n')
		output.append('    scoreboard players set #team_mul temp 2\n')
		output.append('    scoreboard players operation @s max_health /= #team_mul temp\n')
	output.append('# health\n')
	output.append('    scoreboard players operation @s health = @s max_health\n')
	output.append('# attack damage\n')
	output.append('    scoreboard players set @s attack.base ' + str(round(100*mob_data["status"]["attack_damage"]["mul"])) + '\n')
	output.append('    scoreboard players operation @s attack.base *= #new_entity.level temp\n')
	output.append('    scoreboard players set #temp temp 10\n')
	output.append('    scoreboard players operation @s attack.base /= #temp temp\n')
	if mob_data["status"]["attack_damage"]["base"] > 0:
		output.append('    scoreboard players add @s attack.base ' + str(mob_data["status"]["attack_damage"]["base"]) + '\n')
	elif mob_data["status"]["attack_damage"]["base"] < 0:
		output.append('    scoreboard players remove @s attack.base ' + str(abs(mob_data["status"]["attack_damage"]["base"])) + '\n')
	output.append('    scoreboard players set @s attack.mul 10\n')
	output.append('    scoreboard players set @s attack.state_mul 100\n')
	output.append('# armor\n')
	output.append('    scoreboard players set @s armor.mul ' + str(mob_data["parts"]["root"]["armor_mul"]) + '\n')
	if "elemental_damage_mul" in mob_data["parts"]["root"]:
		for elem in ["fire","water","ice","thunder"]:
			if elem in mob_data["parts"]["root"]["elemental_damage_mul"]:
				output.append('    scoreboard players set @s armor.' + elem + '.mul ' + str(mob_data["parts"]["root"]["elemental_damage_mul"][elem]) + '\n')
	if "angry" in mob_data["status"]:
		output.append('# 怒りステータス\n')
		output.append('    scoreboard players operation @s anger.damage = @s max_health\n')
		output.append('    scoreboard players set #temp temp ' + str(round(100*mob_data["status"]["angry"]["start_damage_ratio"])) + '\n')
		output.append('    scoreboard players operation @s anger.damage *= #temp temp\n')
		output.append('    scoreboard players set #temp temp 100\n')
		output.append('    scoreboard players operation @s anger.damage /= #temp temp\n')
	if "variants" in mob_data:
		for variant_id, variant_data in mob_data["variants"].items():
			if "parts" in variant_data:
				part_name = "root"
				part_data = variant_data["parts"]["root"]
				output.append('execute if data storage temp:_ data.new_entity{variant:"' + variant_id + '"} run scoreboard players set @s armor.mul ' + str(part_data["armor_mul"]) + '\n')
				if "elemental_damage_mul" in part_data:
					for elem in ["fire","water","ice","thunder"]:
						if elem in part_data["elemental_damage_mul"]:
							output.append('execute if data storage temp:_ data.new_entity{variant:"' + variant_id + '"} run scoreboard players set @s armor.' + elem + '.mul ' + str(part_data["elemental_damage_mul"][elem]) + '\n')
	output.append('scoreboard players operation #attack.base temp = @s attack.base\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# summon/pet/
	path = base_path + mob_name + '/summon/common/pet.mcfunction'
	makedir(path)
	output = []
	output.append('tag @s add pet\n')
	output.append('scoreboard players operation #player_id temp = @p[tag=player_check] player_id\n')
	if mob_data["type"] == "npc" and 0:
		output.append('scoreboard players set @s npc1.id ' + str(mob_data["npc_id"]) + '\n')
		output.append('team join player_side\n')
		output.append('tag @s add player_side\n')
		output.append('scoreboard players operation @s player_id = #player_id temp\n')
		output.append('scoreboard players set @s max_health ' + str(int(mob_data["status"]["max_health"]*10)) + '\n')
		output.append('scoreboard players operation @s health = @s max_health\n')
		output.append('scoreboard players set @s attack.base ' + str(mob_data["status"]["attack_damage"]) + '\n')
		output.append('scoreboard players set @s attack.mul 10\n')
		output.append('scoreboard players set @s armor.mul ' + str(mob_data["status"]["armor_mul"]) + '\n')
	else:
		output.append('function ' + namespace_core + ':sys/entity/common/summon/pet\n')
		output.append('scoreboard players set @s attack.mul 10\n')
		output.append('scoreboard players set @s armor.mul 100\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# summon/player_side/
	path = base_path + mob_name + '/summon/common/player_side.mcfunction'
	makedir(path)
	output = []
	output.append('tag @s add pet\n')
	output.append('tag @s add player_side\n')
	output.append('team join player_side\n')
	output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/common/status\n')
	with open(path, 'w', encoding='utf-8') as f:
		f.writelines(output)

	# summon/hitbox/
	if len(mob_data["parts"]) > 1:
		path = base_path + mob_name + '/summon/common/hitbox.mcfunction'
		makedir(path)
		output = []
		output.append('data merge entity @s {DeathLootTable:"empty",NoAI:1b,Silent:1b,ArmorItems:[{},{},{},{id:"black_dye",Count:1,components:{enchantments:{levels:{"' + namespace_storage + ':post_attack/victim2victim":1,"' + namespace_storage + ':mob_experience/0":1}}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}\n')
		output.append('tag @s add mob\n')
		output.append('tag @s add ' + mob_name + '\n')
		output.append('tag @s add hitbox\n')
		output.append('execute if data storage temp:_ data.new_entity{summon_type:"pet"} run tag @s add pet\n')
		output.append('execute if data storage temp:_ data.new_entity{summon_type:"player_side"} run tag @s add pet\n')
		output.append('execute if data storage temp:_ data.new_entity{summon_type:"pet"} run team join player_side\n')
		output.append('execute if data storage temp:_ data.new_entity{summon_type:"player_side"} run team join player_side\n')
		output.append('execute if data storage temp:_ data.new_entity{summon_type:"pet"} run tag @s add player_side\n')
		output.append('execute if data storage temp:_ data.new_entity{summon_type:"player_side"} run tag @s add player_side\n')
		output.append('execute if data storage temp:_ data.new_entity{summon_type:"enemy"} run tag @s add enemy\n')
		output.append('attribute @s max_health base set 1024.0\n')
		output.append('data modify entity @s Health set value 1024.0f\n')
		output.append('scoreboard players operation @s entity_id = #new_entity_id entity_id\n')
		output.append('scoreboard players operation @s attack.base = #attack.base temp\n')
		for part_name, part_data in mob_data["parts"].items():
			if part_name == "root":
				continue
			output.append('execute if entity @s[tag=hitbox.' + part_name + '] run attribute @s scale base set ' + str(part_data["hitbox_scale"]) + '\n')
			output.append('execute if entity @s[tag=hitbox.' + part_name + '] run scoreboard players set @s armor.mul ' + str(part_data["armor_mul"]) + '\n')
			if "elemental_damage_mul" in part_data:
				for elem in ["fire","water","ice","thunder"]:
					if elem in part_data["elemental_damage_mul"]:
						output.append('execute if entity @s[tag=hitbox.' + part_name + '] run scoreboard players set @s armor.' + elem + '.mul ' + str(part_data["elemental_damage_mul"][elem]) + '\n')
		if "variants" in mob_data:
			for variant_id, variant_data in mob_data["variants"].items():
				if "parts" in variant_data:
					for part_name, part_data in variant_data["parts"].items():
						if part_name == "root":
							continue
						output.append('execute if data storage temp:_ data.new_entity{variant:"' + variant_id + '"} if entity @s[tag=hitbox.' + part_name + '] run attribute @s scale base set ' + str(part_data["hitbox_scale"]) + '\n')
						output.append('execute if data storage temp:_ data.new_entity{variant:"' + variant_id + '"} if entity @s[tag=hitbox.' + part_name + '] run scoreboard players set @s armor.mul ' + str(part_data["armor_mul"]) + '\n')
						if "elemental_damage_mul" in part_data:
							for elem in ["fire","water","ice","thunder"]:
								if elem in part_data["elemental_damage_mul"]:
									output.append('execute if data storage temp:_ data.new_entity{variant:"' + variant_id + '"} if entity @s[tag=hitbox.' + part_name + '] run scoreboard players set @s armor.' + elem + '.mul ' + str(part_data["elemental_damage_mul"][elem]) + '\n')
		with open(path, 'w', encoding='utf-8') as f:
			f.writelines(output)

	# summon/
	for summon_type in ["enemy", "pet", "player_side"]:
		for variant_id in variant_id_list:
			path = base_path + mob_name + '/summon/' + variant_id + '/' + summon_type + '/0.mcfunction'
			makedir(path)
			output = []
			output.append('data modify storage temp:_ data.new_entity.summon_type set value "' + summon_type + '"\n')
			output.append('data modify storage temp:_ data.new_entity.variant set value "' + variant_id + '"\n')
			output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/common/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

	# summon/
	for summon_type in ["enemy", "player_side"]:
		for variant_id in variant_id_list:
			path = base_path + mob_name + '/summon/' + variant_id + '/' + summon_type + '/level.mcfunction'
			makedir(path)
			output = []
			output.append('$scoreboard players set #new_entity.level temp $(level)\n')
			output.append('function ' + namespace_contents + ':sys/entity/mob/' + mob_name + '/summon/' + variant_id + '/' + summon_type + '/0\n')
			with open(path, 'w', encoding='utf-8') as f:
				f.writelines(output)

base_path = '../data/' + namespace_contents + '/function/sys/trade/'

# exchange trade
path = base_path + 'exchange/1.mcfunction'
makedir(path)
output = []
def add_recipe(buy, buyB = [], sell = [], required_progresses = [], maxUses = 10000):
	output.append('\n')
	output.append('data modify storage temp:_ data.recipe set value {rewardExp:false,maxUses:' + str(maxUses) + ',xp:0,priceMultiplier:0.0f}\n')
	output.append('loot replace entity @s weapon.mainhand loot ' + buy[0] + '\n')
	output.append('data modify storage temp:_ data.recipe.buy set from entity @s HandItems[0]\n')
	output.append('data modify storage temp:_ data.recipe.buy.count set value ' + str(buy[1]) + '\n')
	if len(buyB)>0:
		output.append('loot replace entity @s weapon.mainhand loot ' + buyB[0] + '\n')
		output.append('data modify storage temp:_ data.recipe.buyB set from entity @s HandItems[0]\n')
		output.append('data modify storage temp:_ data.recipe.buyB.count set value ' + str(buyB[1]) + '\n')
	output.append('loot replace entity @s weapon.mainhand loot ' + sell[0] + '\n')
	output.append('data modify storage temp:_ data.recipe.sell set from entity @s HandItems[0]\n')
	output.append('data modify storage temp:_ data.recipe.sell.count set value ' + str(sell[1]) + '\n')
	required_add = ""
	for required_progress in required_progresses:
		required_add += ' if data storage ' + namespace_storage + ':progress data.' + required_progress
	output.append('execute' + required_add + ' run data modify storage temp:_ data.Recipes append from storage temp:_ data.recipe\n')
output.append('data modify storage temp:_ data.Recipes set value []\n')
add_recipe(buy=[namespace_contents + ':item/medal/common/silver', 2], buyB=[], sell=[namespace_contents + ':item/medal/common/bronze', 3], required_progresses=['rank{silver:1b}'])
add_recipe(buy=[namespace_contents + ':item/medal/common/gold', 2], buyB=[], sell=[namespace_contents + ':item/medal/common/silver', 3], required_progresses=['rank{gold:1b}'])
output.append('\n')
for mob_name, mob_data in mob_database.items():
	if mob_data["type"] == 'npc' or mob_data["type"] == 'decoy':
		continue
	if mob_data["status"]["default_level"] < 20:
		add_recipe(buy=[namespace_contents + ':item/medal/' + mob_name + '/silver', 2], buyB=[], sell=[namespace_contents + ':item/medal/' + mob_name + '/bronze', 3], required_progresses=['mob_list.' + mob_name + '{unlock:1b}', 'rank{silver:1b}'])
	if mob_data["status"]["default_level"] < 30:
		add_recipe(buy=[namespace_contents + ':item/medal/' + mob_name + '/gold', 2], buyB=[], sell=[namespace_contents + ':item/medal/' + mob_name + '/silver', 3], required_progresses=['mob_list.' + mob_name + '{unlock:1b}', 'rank{gold:1b}'])
	if mob_data["status"]["default_level"] < 20:
		add_recipe(buy=[namespace_contents + ':item/medal/' + mob_name + '/bronze', mob_data["price"]["exchange"]["sell_required"]], buyB=[], sell=[namespace_contents + ':item/medal/common/bronze', 1], required_progresses=['mob_list.' + mob_name + '{unlock:1b}'])
	if mob_data["status"]["default_level"] < 30:
		add_recipe(buy=[namespace_contents + ':item/medal/' + mob_name + '/silver', mob_data["price"]["exchange"]["sell_required"]], buyB=[], sell=[namespace_contents + ':item/medal/common/silver', 1], required_progresses=['mob_list.' + mob_name + '{unlock:1b}', 'rank{silver:1b}'])
	add_recipe(buy=[namespace_contents + ':item/medal/' + mob_name + '/gold', mob_data["price"]["exchange"]["sell_required"]], buyB=[], sell=[namespace_contents + ':item/medal/common/gold', 1], required_progresses=['mob_list.' + mob_name + '{unlock:1b}', 'rank{gold:1b}'])
	if mob_data["status"]["default_level"] < 20:
		add_recipe(buy=[namespace_contents + ':item/medal/common/bronze', mob_data["price"]["exchange"]["buy_required"]], buyB=[], sell=[namespace_contents + ':item/medal/' + mob_name + '/bronze', 1], required_progresses=['mob_list.' + mob_name + '{unlock:1b}'])
	if mob_data["status"]["default_level"] < 30:
		add_recipe(buy=[namespace_contents + ':item/medal/common/silver', mob_data["price"]["exchange"]["buy_required"]], buyB=[], sell=[namespace_contents + ':item/medal/' + mob_name + '/silver', 1], required_progresses=['mob_list.' + mob_name + '{unlock:1b}', 'rank{silver:1b}'])
	add_recipe(buy=[namespace_contents + ':item/medal/common/gold', mob_data["price"]["exchange"]["buy_required"]], buyB=[], sell=[namespace_contents + ':item/medal/' + mob_name + '/gold', 1], required_progresses=['mob_list.' + mob_name + '{unlock:1b}', 'rank{gold:1b}'])
output.append('kill @s\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)



# pet trade
path = base_path + 'pet/1.mcfunction'
makedir(path)
output = []
output.append('data modify storage temp:_ data.Recipes set value []\n')
output.append('\n')
for mob_name, mob_data in mob_database.items():
	if mob_data["type"] == 'npc' or mob_data["type"] == 'decoy':
		continue
	buy = [namespace_contents + ':item/medal/' + mob_name + '/bronze', 20]
	if mob_data["status"]["default_level"] >= 30:
		buy[0] = namespace_contents + ':item/medal/' + mob_name + '/gold'
	elif mob_data["status"]["default_level"] >= 20:
		buy[0] = namespace_contents + ':item/medal/' + mob_name + '/silver'
	if mob_data["type"] == "boss":
		buy[1] = 20
	add_recipe(buy=buy, buyB=[], sell=[namespace_contents + ':item/pet/' + mob_name + '/' + str(mob_data["status"]["default_level"]), 1], required_progresses=['mob_list.' + mob_name + '{unlock:1b}'], maxUses = 1)
output.append('kill @s\n')
with open(path, 'w', encoding='utf-8') as f:
	f.writelines(output)




base_path = '../data/' + namespace_contents + '/recipe/'

for mob_name, mob_data in mob_database.items():

	if (not mob_name in file_generation_flag) or (not file_generation_flag[mob_name]) or (mob_data["type"] == 'npc'or mob_data["type"] == 'decoy'):
		continue

	path = base_path + '/' + mob_data["type"] + '/' + mob_data["dictionary"]["recipe_prefix"] + "_" + mob_name + '.json'
	makedir(path)

	lore = []
	max_line_len = 18
	for line in mob_data["dictionary"]["detail"]:
		while len(line)>0:
			line_ = line[:max_line_len]
			line = line[max_line_len:]
			lore.append("{\"text\":\"  " + line_ + "\",\"italic\":false,\"color\":\"yellow\"}")

	lore.append("{\"text\":\"\"}")
	lore.append("{\"translate\":\"anemoland.dictionary.area\",\"italic\":false}")
	appear_areas = "[{\"text\":\"  \"}"
	for i, appear_area in enumerate(mob_data["dictionary"]["main_areas"]):
		if i > 0:
			appear_areas += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"}"
		appear_areas += ",{\"translate\":\"anemoland.area." + appear_area + "\",\"italic\":false,\"color\":\"white\"}"
	appear_areas += "]"
	lore.append(appear_areas)

	lore.append("{\"text\":\"\"}")
	lore.append("{\"translate\":\"anemoland.common.attack_element\",\"italic\":false}")
	attack_elements = "[{\"text\":\"  \"}"
	for i, attack_elem in enumerate(mob_data["dictionary"]["attack_elements"]):
		if i > 0:
			attack_elements += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"}"
		attack_elements += ",{\"translate\":\"anemoland.common.element." + attack_elem + "\",\"italic\":false,\"color\":\"" + element_color[attack_elem] + "\"}"
	attack_elements += "]"
	lore.append(attack_elements)

	lore.append("{\"text\":\"\"}")
	lore.append("[{\"translate\":\"anemoland.common.damage_rate.give\",\"italic\":false},{\"text\":\"(%)\",\"italic\":false}]")
	for part_name, part_data in mob_data["parts"].items():
		if "skip_display_mul" in part_data:
			continue
		damage_mul = "[{\"text\":\"  <\",\"italic\":false,\"color\":\"yellow\"},{\"translate\":\"anemoland.mob_part." + part_data["display_name"] + "\",\"italic\":false,\"color\":\"yellow\"},{\"text\":\"> \",\"italic\":false,\"color\":\"yellow\"}"
		# damage_mul = "[{\"text\":\"  <" + part_data["display_name"] + "> \",\"italic\":false,\"color\":\"yellow\"}"
		if part_data["armor_mul"] > 100:
			damage_mul += ",{\"translate\":\"anemoland.common.element.physical\", \"italic\":false,\"color\":\"gray\"},{\"text\":\" " + str(part_data["armor_mul"]) + "\", \"italic\":false,\"color\":\"aqua\"}"
		elif part_data["armor_mul"] < 100:
			damage_mul += ",{\"translate\":\"anemoland.common.element.physical\", \"italic\":false,\"color\":\"gray\"},{\"text\":\" " + str(part_data["armor_mul"]) + "\", \"italic\":false,\"color\":\"gray\"}"
		else:
			damage_mul += ",{\"translate\":\"anemoland.common.element.physical\", \"italic\":false,\"color\":\"gray\"},{\"text\":\" " + str(part_data["armor_mul"]) + "\", \"italic\":false,\"color\":\"white\"}"
		if "elemental_damage_mul" in part_data:
			for elem_name, elem_damage_mul in part_data["elemental_damage_mul"].items():
				if elem_damage_mul > part_data["armor_mul"]:
					damage_mul += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"},{\"translate\":\"anemoland.common.element." + elem_name + "\", \"italic\":false,\"color\":\"" + element_color[elem_name] + "\"},{\"text\":\" " + str(elem_damage_mul) + "\", \"italic\":false,\"color\":\"aqua\"}"
				elif elem_damage_mul < part_data["armor_mul"]:
					damage_mul += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"},{\"translate\":\"anemoland.common.element." + elem_name + "\", \"italic\":false,\"color\":\"" + element_color[elem_name] + "\"},{\"text\":\" " + str(elem_damage_mul) + "\", \"italic\":false,\"color\":\"gray\"}"
				else:
					damage_mul += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"},{\"translate\":\"anemoland.common.element." + elem_name + "\", \"italic\":false,\"color\":\"" + element_color[elem_name] + "\"},{\"text\":\" " + str(elem_damage_mul) + "\", \"italic\":false,\"color\":\"white\"}"
		damage_mul += "]"
		lore.append(damage_mul)
	lore.append("[{\"text\":\"  \"},{\"translate\":\"anemoland.dictionary.elem_mul_value_detail\",\"italic\":false,\"color\":\"dark_gray\"}]")


	output = {
		"type": "minecraft:crafting_shapeless",
		"category": "redstone" if mob_data["type"] == "boss" else "building",
		"ingredients": [
			"minecraft:light_gray_stained_glass_pane"
		],
		"result": {
			"count": 1,
			"id": "minecraft:green_dye",
			"components":{
				"item_name": '[{"text":"【No.0' + ("1" if mob_data["type"] == "mob" else "2") + "-" + mob_data["dictionary"]["number"] + '】"},{"translate":"anemoland.mob.' + mob_name + '.default.name"}]',
				"custom_model_data": mob_data["custom_model_data"],
				"lore": lore
			}
		}
	}

	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)

	if "variants" in mob_data:
		for variant_id, variant_data in mob_data["variants"].items():
			if not "dictionary" in variant_data:
				continue

			if (not mob_name in file_generation_flag) or (not file_generation_flag[mob_name]) or (mob_data["type"] == 'npc'or mob_data["type"] == 'decoy'):
				continue

			path = base_path + '/' + mob_data["type"] + '/' + variant_data["dictionary"]["recipe_prefix"] + "_" + mob_name + "_" + variant_id + '.json'
			makedir(path)

			lore = []
			max_line_len = 18
			for line in variant_data["dictionary"]["detail"]:
				while len(line)>0:
					line_ = line[:max_line_len]
					line = line[max_line_len:]
					lore.append("{\"text\":\"  " + line_ + "\",\"italic\":false,\"color\":\"yellow\"}")

			lore.append("{\"text\":\"\"}")
			lore.append("{\"translate\":\"anemoland.dictionary.area\",\"italic\":false}")
			appear_areas = "[{\"text\":\"  \"}"
			for i, appear_area in enumerate(variant_data["dictionary"]["main_areas"]):
				if i > 0:
					appear_areas += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"}"
				appear_areas += ",{\"translate\":\"anemoland.area." + appear_area + "\",\"italic\":false,\"color\":\"white\"}"
			appear_areas += "]"
			lore.append(appear_areas)

			lore.append("{\"text\":\"\"}")
			lore.append("{\"translate\":\"anemoland.common.attack_element\",\"italic\":false}")
			attack_elements = "[{\"text\":\"  \"}"
			for i, attack_elem in enumerate(variant_data["dictionary"]["attack_elements"]):
				if i > 0:
					attack_elements += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"}"
				attack_elements += ",{\"translate\":\"anemoland.common.element." + attack_elem + "\",\"italic\":false,\"color\":\"" + element_color[attack_elem] + "\"}"
			attack_elements += "]"
			lore.append(attack_elements)

			lore.append("{\"text\":\"\"}")
			lore.append("[{\"translate\":\"anemoland.common.damage_rate.give\",\"italic\":false},{\"text\":\"(%)\",\"italic\":false}]")
			parts_data = mob_data["parts"]
			if "parts" in variant_data:
				parts_data = variant_data["parts"]
			for part_name, part_data in parts_data.items():
				if "skip_display_mul" in part_data:
					continue
				damage_mul = "[{\"text\":\"  <\",\"italic\":false,\"color\":\"yellow\"},{\"translate\":\"anemoland.mob_part." + part_data["display_name"] + "\",\"italic\":false,\"color\":\"yellow\"},{\"text\":\"> \",\"italic\":false,\"color\":\"yellow\"}"
				if part_data["armor_mul"] > 100:
					damage_mul += ",{\"translate\":\"anemoland.common.element.physical\", \"italic\":false,\"color\":\"gray\"},{\"text\":\" " + str(part_data["armor_mul"]) + "\", \"italic\":false,\"color\":\"aqua\"}"
				elif part_data["armor_mul"] < 100:
					damage_mul += ",{\"translate\":\"anemoland.common.element.physical\", \"italic\":false,\"color\":\"gray\"},{\"text\":\" " + str(part_data["armor_mul"]) + "\", \"italic\":false,\"color\":\"gray\"}"
				else:
					damage_mul += ",{\"translate\":\"anemoland.common.element.physical\", \"italic\":false,\"color\":\"gray\"},{\"text\":\" " + str(part_data["armor_mul"]) + "\", \"italic\":false,\"color\":\"white\"}"
				if "elemental_damage_mul" in part_data:
					for elem_name, elem_damage_mul in part_data["elemental_damage_mul"].items():
						if elem_damage_mul > part_data["armor_mul"]:
							damage_mul += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"},{\"translate\":\"anemoland.common.element." + elem_name + "\", \"italic\":false,\"color\":\"" + element_color[elem_name] + "\"},{\"text\":\" " + str(elem_damage_mul) + "\", \"italic\":false,\"color\":\"aqua\"}"
						elif elem_damage_mul < part_data["armor_mul"]:
							damage_mul += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"},{\"translate\":\"anemoland.common.element." + elem_name + "\", \"italic\":false,\"color\":\"" + element_color[elem_name] + "\"},{\"text\":\" " + str(elem_damage_mul) + "\", \"italic\":false,\"color\":\"gray\"}"
						else:
							damage_mul += ",{\"text\":\" / \",\"italic\":false,\"color\":\"dark_gray\"},{\"translate\":\"anemoland.common.element." + elem_name + "\", \"italic\":false,\"color\":\"" + element_color[elem_name] + "\"},{\"text\":\" " + str(elem_damage_mul) + "\", \"italic\":false,\"color\":\"white\"}"
				damage_mul += "]"
				lore.append(damage_mul)
			lore.append("[{\"text\":\"  \"},{\"translate\":\"anemoland.dictionary.elem_mul_value_detail\",\"italic\":false,\"color\":\"dark_gray\"}]")


			output = {
				"type": "minecraft:crafting_shaped",
				"category": "redstone" if mob_data["type"] == "boss" else "building",
				"key": {
					"#": "minecraft:light_gray_stained_glass_pane"
				},
				"pattern": [
					"#"
				],
				"result": {
					"count": 1,
					"id": "minecraft:green_dye",
					"components":{
						"item_name": '[{"text":"【No.0' + ("1" if mob_data["type"] == "mob" else "2") + "-" + mob_data["dictionary"]["number"] + '】"},{"translate":"anemoland.mob.' + mob_name + '.' + variant_id + '.name"}]',
						"custom_model_data": mob_data["custom_model_data"] + variant_data["custom_model_data_add"],
						"lore": lore
					}
				}
			}

			with open(path, 'w', encoding='utf-8') as f:
				json.dump(output, f, indent='\t', ensure_ascii=False)



base_path = '../data/' + namespace_contents + '/loot_table/'

for mob_name, mob_data in mob_database.items():

	if (not mob_name in file_generation_flag) or (not file_generation_flag[mob_name]) or (mob_data["type"] == 'npc'or mob_data["type"] == 'decoy'):
		continue

	# loot_table pet
	if "pet" in mob_data and "loot_table_levels" in mob_data["pet"]:
		loot_table_levels = list(range(mob_data["pet"]["loot_table_levels"]["min"], mob_data["pet"]["loot_table_levels"]["max"]+1, mob_data["pet"]["loot_table_levels"]["step"]))
		for loot_table_level in loot_table_levels:
			path = base_path + 'item/pet/' + mob_name + '/' + str(loot_table_level) + '.json'
			makedir(path)

			gauge_cunsume_str = ""
			if "gauge_consume" in mob_data["pet"] and mob_data["pet"]["gauge_consume"] > 0:
					gauge_cunsume_str = ",gauge_consume_when_summon:" + str(mob_data["pet"]["gauge_consume"])

			hp = loot_table_level * mob_data["status"]["max_health"]["mul"] + mob_data["status"]["max_health"]["base"]
			if mob_data["type"] == "boss":
				if loot_table_level >= 30:
					hp *= 1.4
				elif loot_table_level >= 20:
					hp *= 1.2
				hp = (hp//100)*100

			lore = [
				[
					{
						"text": "  Lv." + str(loot_table_level),
						"italic": False,
						"color": "yellow"
					}
				],
				[
					{
						"text": "  HP ",
						"italic": False,
						"color": "blue"
					},
					{
						"text": str(hp)
					}
				],
				[
					{
						"text": "  ",
						"italic": False,
						"color": "blue"
					},
					{
						"translate": "anemoland.common.attack_damage"
					},
					{
						"text": " "
					},
					{
						"text": str(round(loot_table_level * mob_data["status"]["attack_damage"]["mul"] + mob_data["status"]["attack_damage"]["base"],1))
					}
				],
				[""]
			]
			if mob_data["type"] == "mob":
				lore.append([
					{"translate": "anemoland.pet.lore.mob.1", "color": "gray", "italic":False}
				])
				lore.append([
					{"translate": "anemoland.pet.lore.mob.2", "color": "gray", "italic":False}
				])
				lore.append([
					{"translate": "anemoland.pet.lore.mob.3", "color": "gray", "italic":False}
				])
				lore.append([
					{"translate": "anemoland.pet.cooltime", "color": "white", "italic":False},
					{"text": "：30"},
					{"translate": "anemoland.common.second"}
				])
			elif mob_data["type"] == "boss":
				lore.append([
					{"translate": "anemoland.pet.lore.boss.1", "with":[{"keybind":"key.use"}], "color": "gray", "italic":False}
				])
				lore.append([
					{"translate": "anemoland.pet.lore.boss.2", "color": "gray", "italic":False}
				])
				lore.append([
					{"translate": "anemoland.pet.lore.boss.3", "color": "gray", "italic":False}
				])
			if "gauge_consume" in mob_data["pet"] and mob_data["pet"]["gauge_consume"]>0:
				lore.append([
					{"translate": "anemoland.pet.gauge_consumption", "color": "white", "italic":False},
					{"text": "：" + str(mob_data["pet"]["gauge_consume"]/100)}
				])
				lore.append([
					{"translate": "anemoland.pet.max_duration", "color": "white", "italic":False},
					{"text": "：90"},
					{"translate": "anemoland.common.second"}
				])
				lore.append([
					{"translate": "anemoland.pet.cooltime", "color": "white", "italic":False},
					{"text": "：90"},
					{"translate": "anemoland.common.second"}
				])

			power_up_str = ''
			next_level = loot_table_level+mob_data["pet"]["loot_table_levels"]["step"]
			if next_level in loot_table_levels:
				power_up_str += 'add_level:' + str(mob_data["pet"]["loot_table_levels"]["step"]) + ','
				power_up_str += 'materials:['
				medal_color = "bronze"
				base_level = 0
				if next_level >= 20:
					medal_color = "silver"
					base_level = 10
				if next_level >= 30:
					medal_color = "gold"
					base_level = 20
				required_count = next_level - base_level
				power_up_str += '{id:"' + mob_name + '_' + medal_color + '_medal",loot_table:"item/medal/' + mob_name + '/' + medal_color + '",count:' + str(required_count) + '}'
				power_up_str += ']'
			
			required_xp = 50
			for i in range(loot_table_level-5):
				required_xp *= 1.15 *mob_data["pet"]["xp_required_mul"]/10
				required_xp = int(required_xp)

			output = {
				"type": "minecraft:command",
				"pools": [
					{
						"rolls": 1,
						"entries": [
							{
								"type": "minecraft:item",
								"name": "minecraft:carrot_on_a_stick",
								"weight": 1,
								"functions": [
									{
										"function": "minecraft:sequence",
										"functions": [
											{
												"function": "minecraft:set_lore",
												"entity": "this",
												"lore": lore,
												"mode": "append"
											}
										]
									},
									{
										"function": "minecraft:set_custom_data",
										"tag": "{item_type:\"pet\"" + (",is_boss:1b" if mob_data["type"] == "boss" else ",is_boss:0b") + ",is_pet:1b,pet_id:\"" + mob_name + "\",display:{name:\"" + mob_data["display_name"] + "\"},loot_table:\"item/pet/" + mob_name + "\",power_up:{" + power_up_str + "},status:{health:{max:" + str(loot_table_level * mob_data["status"]["max_health"]["mul"] + mob_data["status"]["max_health"]["base"]) + "},attack:{base:" + str(loot_table_level * mob_data["status"]["attack_damage"]["mul"] + mob_data["status"]["attack_damage"]["base"]) + "},armor:{base:10},level:" + str(loot_table_level) + ",level_up:{health:" + str(mob_data["status"]["max_health"]["mul"]) + ",attack:" + str(mob_data["status"]["attack_damage"]["mul"]) + "},xp:{value:0,required:" + str(required_xp) + ",required_mul:" + str(mob_data["pet"]["xp_required_mul"]) + "}" + gauge_cunsume_str + "}}"
									},
									{
										"function": "minecraft:set_components",
										"components": {
											"minecraft:item_model": "anemoland:entity/" + mob_name + "/pet"
										}
									},
									{
										"function": "minecraft:set_name",
										"entity": "this",
										"name": {
											"translate": "anemoland.mob." + mob_name + ".default.name",
											"color": "white",
											"italic": False
										}
									}
								]
							}
						]
					}
				]
			}

			with open(path, 'w', encoding='utf-8') as f:
				json.dump(output, f, indent='\t', ensure_ascii=False)


	# loot_table medal

	medal_colors = [['bronze', 'ブロンズ', 0, 'gold', [1, 19]], ['silver', 'シルバー', 1, 'gray', [20, 29]], ['gold', 'ゴールド', 2, 'yellow', [30]]]

	for medal_color in medal_colors:
		path = base_path + 'item/medal/' + mob_name + '/' + medal_color[0] + '.json'
		makedir(path)

		lore = []
		if len(medal_color[4])>1:
			lore.append(
				[
					{"text": "  "},
					{
						"translate": "anemoland.item.medal.mob.lore.1",
						"with": [{"text":"Lv." + str(medal_color[4][0]) + "-" + str(medal_color[4][1])},{"translate": "anemoland.mob." + mob_name + ".default.name" }],
						"italic": False,
						"color": "white"
					}
				]
			)
		else:
			lore.append([
					{"text": "  "},
					{
						"translate": "anemoland.item.medal.mob.lore.1",
						"with": [{"text":"Lv." + str(medal_color[4][0]) + "+"},{"translate": "anemoland.mob." + mob_name + ".default.name" }],
						"italic": False,
						"color": "white"
					}
				]
			)

		output = {
			"type": "minecraft:command",
			"pools": [
				{
					"rolls": 1,
					"entries": [
						{
							"type": "minecraft:item",
							"name": "minecraft:yellow_dye",
							"weight": 1,
							"functions": [
								{
									"function": "minecraft:set_lore",
									"entity": "this",
									"lore": lore,
									"mode": "append"
								},
								{
									"function": "minecraft:set_custom_data",
									"tag": "{item_type:\"material\",id:\"" + mob_name + "_" + medal_color[0] +"_medal\"}"
								},
								{
									"function": "minecraft:set_components",
									"components": {
										"minecraft:item_model": "anemoland:entity/" + mob_name + "/medal/" + medal_color[0]
									}
								},
								{
									"function": "minecraft:set_name",
									"entity": "this",
									"name": {
										"translate": "anemoland.item.medal.mob.name",
										"with": [{"translate": "anemoland.mob." + mob_name + ".default.name"},{"translate": "anemoland.common.rank." + medal_color[0]}],
										"color": medal_color[3],
										"italic": False
									}
								}
							]
						}
					]
				}
			]
		}


		with open(path, 'w', encoding='utf-8') as f:
			json.dump(output, f, indent='\t', ensure_ascii=False)


	# loot_table death

	if mob_data["type"] == 'mob':
		loot_table_levels = {
			'1': [
				{
					'color': 'bronze',
					'rolls': [1, 2],
					'drop_bonus_scale': 1
				}
			],
			'2': [
				{
					'color': 'silver',
					'rolls': [1, 2],
					'drop_bonus_scale': 1
				}
			],
			'3': [
				{
					'color': 'gold',
					'rolls': [1, 2],
					'drop_bonus_scale': 1
				}
			]
		}
	elif mob_data["type"] == 'boss':
		loot_table_levels = {
			'1': [
				{
					'color': 'bronze',
					'rolls': [6, 8],
					'drop_bonus_scale': 3
				}
			],
			'2': [
				{
					'color': 'silver',
					'rolls': [6, 8],
					'drop_bonus_scale': 3
				}
			],
			'3': [
				{
					'color': 'gold',
					'rolls': [6, 8],
					'drop_bonus_scale': 3
				}
			]
		}

	for level, loot_table_data in loot_table_levels.items():
		path = base_path + 'entity/' + mob_name + '/' + str(level) + '.json'
		makedir(path)

		pools = []
		for pool_data in loot_table_data:
			pools.append(
				{
					"rolls": {
						"type": "minecraft:score",
						"target": {
							"type": "minecraft:fixed",
							"name": "#drop_bonus"
						},
						"score": "temp",
						"scale": pool_data["drop_bonus_scale"]
					},
					"entries": [
						{
							"type": "minecraft:loot_table",
							"value": namespace_contents + ":item/medal/" + mob_name + "/" + pool_data["color"]
						}
					]
				}
			)
			pools.append(
				{
					"rolls": {
						"min": pool_data["rolls"][0],
						"max": pool_data["rolls"][1]
					},
					"entries": [
						{
							"type": "minecraft:loot_table",
							"value": namespace_contents + ":item/medal/" + mob_name + "/" + pool_data["color"]
						}
					]
				}
			)

		output = {
			"type": "minecraft:command",
			"pools": pools
		}


		with open(path, 'w', encoding='utf-8') as f:
			json.dump(output, f, indent='\t', ensure_ascii=False)



resourcepack_path = common_database["resourcepack_path"]

base_path = resourcepack_path + '/assets/anemoland/items/'

if not os.path.isdir(base_path):
	print('dir not exist! (' + base_path + ')')
	exit(0)

for mob_name, mob_data in mob_database.items():
	if mob_data["type"] == "mob" or mob_data["type"] == "boss":
		for rank in ["bronze", "silver", "gold"]:
			path = base_path + 'entity/' + mob_name + '/medal/' + rank + '.json'
			makedir(path)
			output = {
				"model": {
					"type": "minecraft:model",
					"model": "anemoland:item/entity/" + mob_name + "/medal/" + rank
				}
			}
			with open(path, 'w', encoding='utf-8') as f:
				json.dump(output, f, indent='\t', ensure_ascii=False)

		path = base_path + 'entity/' + mob_name + '/pet.json'
		makedir(path)
		output = {
			"model": {
				"type": "minecraft:model",
				"model": "anemoland:item/entity/" + mob_name + "/pet"
			}
		}
		with open(path, 'w', encoding='utf-8') as f:
			json.dump(output, f, indent='\t', ensure_ascii=False)
		
		path = base_path + 'entity/' + mob_name + '/icon.json'
		makedir(path)
		output = {
			"model": {
				"type": "minecraft:model",
				"model": "anemoland:item/entity/" + mob_name + "/icon"
			}
		}
		with open(path, 'w', encoding='utf-8') as f:
			json.dump(output, f, indent='\t', ensure_ascii=False)

base_path = resourcepack_path + '/assets/minecraft/models/item/'

if not os.path.isdir(base_path):
	print('dir not exist! (' + base_path + ')')
	exit(0)

path = base_path + 'yellow_dye.json'
makedir(path)
overrides = []
for mob_name, mob_data in mob_database.items():
	if mob_data["type"] == "npc" or mob_data["type"] == 'decoy':
		continue
	overrides.append({
		"predicate": { "custom_model_data": mob_data["custom_model_data"]*10 },
		"model": "item/custom/entity/" + mob_name + "/bronze_medal"
	})
	overrides.append({
		"predicate": { "custom_model_data": mob_data["custom_model_data"]*10+1 },
		"model": "item/custom/entity/" + mob_name + "/silver_medal"
	})
	overrides.append({
		"predicate": { "custom_model_data": mob_data["custom_model_data"]*10+2 },
		"model": "item/custom/entity/" + mob_name + "/gold_medal"
	})
output = {
	"parent": "minecraft:item/generated",
	"textures": {
		"layer0": "minecraft:item/yellow_dye"
	},
	"overrides": overrides
}
with open(path, 'w', encoding='utf-8') as f:
	json.dump(output, f, indent='\t', ensure_ascii=False)


path = base_path + 'blue_dye.json'
makedir(path)
overrides = []
for mob_name, mob_data in mob_database.items():
	if mob_data["type"] == "npc" or mob_data["type"] == 'decoy':
		continue
	overrides.append({
		"predicate": { "custom_model_data": mob_data["custom_model_data"] },
		"model": "item/custom/entity/" + mob_name + "/pet"
	})
output = {
	"parent": "minecraft:item/generated",
	"textures": {
		"layer0": "minecraft:item/blue_dye"
	},
	"overrides": overrides
}
with open(path, 'w', encoding='utf-8') as f:
	json.dump(output, f, indent='\t', ensure_ascii=False)


path = base_path + 'green_dye.json'
makedir(path)
overrides = []
for mob_name, mob_data in mob_database.items():
	if mob_data["type"] == "npc" or mob_data["type"] == 'decoy':
		continue
	overrides.append({
		"predicate": { "custom_model_data": mob_data["custom_model_data"] },
		"model": "item/custom/entity/" + mob_name + "/icon"
	})
	if "variants" in mob_data:
		for variant_id, variant_data in mob_data["variants"].items():
			if not "custom_model_data_add" in variant_data:
				continue
			overrides.append({
				"predicate": { "custom_model_data": mob_data["custom_model_data"] + variant_data["custom_model_data_add"] },
				"model": "item/custom/entity/" + mob_name + "/icon_" + variant_id
			})
output = {
	"parent": "minecraft:item/generated",
	"textures": {
		"layer0": "minecraft:item/green_dye"
	},
	"overrides": overrides
}
with open(path, 'w', encoding='utf-8') as f:
	json.dump(output, f, indent='\t', ensure_ascii=False)





base_path = resourcepack_path + '/assets/anemoland/models/item/'

for mob_name, mob_data in mob_database.items():
	if mob_data["type"] == "npc" or mob_data["type"] == 'decoy':
		continue

	path = base_path + 'entity/' + mob_name + '/medal/bronze.json'
	makedir(path)
	output = {
		"parent": "minecraft:item/generated",
		"textures": {
		"layer0": "minecraft:item/custom/entity/" + mob_name + "/bronze_medal"
		}
	}
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)
	path = base_path + 'entity/' + mob_name + '/medal/silver.json'
	makedir(path)
	output = {
		"parent": "minecraft:item/generated",
		"textures": {
		"layer0": "minecraft:item/custom/entity/" + mob_name + "/silver_medal"
		}
	}
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)

	path = base_path + 'entity/' + mob_name + '/medal/gold.json'
	makedir(path)
	output = {
		"parent": "minecraft:item/generated",
		"textures": {
		"layer0": "minecraft:item/custom/entity/" + mob_name + "/gold_medal"
		}
	}
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)

	path = base_path + 'entity/' + mob_name + '/pet.json'
	makedir(path)
	output = {
		"parent": "minecraft:item/generated",
		"textures": {
		"layer0": "minecraft:item/custom/entity/" + mob_name + "/pet"
		}
	}
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)

	path = base_path + 'entity/' + mob_name + '/icon.json'
	makedir(path)
	output = {
		"credit": "Made with Blockbench",
		"textures": {
			"0": "item/custom/entity/" + mob_name + "/icon",
			"particle": "item/custom/entity/" + mob_name + "/icon"
		},
		"elements": [
			{
				"from": [0, 0, 8],
				"to": [16, 16, 10],
				"rotation": {"angle": 0, "axis": "y", "origin": [0, 0, 8]},
				"faces": {
					"south": {"uv": [0, 0, 16, 16], "texture": "#0"}
				}
			}
		],
		"gui_light": "front",
		"display": {
			"gui": {
				"scale": [mob_data["icon_scale"], mob_data["icon_scale"], 1]
			}
		}
	}
	with open(path, 'w', encoding='utf-8') as f:
		json.dump(output, f, indent='\t', ensure_ascii=False)

	if "variants" in mob_data:
		for variant_id, variant_data in mob_data["variants"].items():
			if not "custom_model_data_add" in variant_data:
				continue
			path = base_path + 'entity/' + mob_name + '/icon_' + variant_id + '.json'
			makedir(path)
			output = {
				"credit": "Made with Blockbench",
				"textures": {
					"0": "item/custom/entity/" + mob_name + "/icon_" + variant_id,
					"particle": "item/custom/entity/" + mob_name + "/icon_" + variant_id
				},
				"elements": [
					{
						"from": [0, 0, 8],
						"to": [16, 16, 10],
						"rotation": {"angle": 0, "axis": "y", "origin": [0, 0, 8]},
						"faces": {
							"south": {"uv": [0, 0, 16, 16], "texture": "#0"}
						}
					}
				],
				"gui_light": "front",
				"display": {
					"gui": {
						"scale": [mob_data["icon_scale"], mob_data["icon_scale"], 1]
					}
				}
			}
			with open(path, 'w', encoding='utf-8') as f:
				json.dump(output, f, indent='\t', ensure_ascii=False)