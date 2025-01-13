$data modify storage anemoland:progress data.beta1.field.$(field_id).event.event_id set value "carnara_double"
$data modify storage anemoland:progress data.beta1.field.$(field_id).event.waves set value [{"id": "carnara_double", "level": "$(level)"}]
$data modify storage anemoland:progress data.beta1.field.$(field_id).event.waves_len set value 1
$data modify storage anemoland:progress data.beta1.field.$(field_id).display_update_flag set value 1b
$data modify storage anemoland:progress data.beta1.field.$(field_id).event.bonus set value {gold:0,xp:0,drop:0}
$data modify storage anemoland:progress data.beta1.field.$(field_id).event.npc_level set value $(level)
$data modify storage anemoland:progress data.beta1.field.$(field_id).event.with_npc1 set value 0b
