# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.carnara.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'carnara', 'function_path': 'animated_java:carnara/remove/this'}
function #animated_java:carnara/as_root/on_remove
execute on passengers if entity @s[tag=aj.data] run function animated_java:carnara/remove/zzz/0
execute on passengers run kill @s
kill @s