# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.garapapas.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'garapapas', 'function_path': 'animated_java:garapapas/as_all_locators'}
$data modify storage aj:temp command set value '$(command)'
execute on passengers if entity @s[tag=aj.data] run function animated_java:garapapas/zzz/21