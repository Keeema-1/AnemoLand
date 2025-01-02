
data modify storage temp:_ data.drop_item set from storage temp:_ data.Items[0]
function anemoland:sys/player/menu/common/drop_item/common

execute unless data storage temp:_ data.Items[1] run return 1
data modify storage temp:_ data.drop_item set from storage temp:_ data.Items[1]
function anemoland:sys/player/menu/common/drop_item/common
