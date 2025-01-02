$data modify storage temp:_ data.pet_lore append value '[{"text":"  HP ","color":"blue","italic":false},{"text":"$(health)","color":"blue"}]'
$data modify storage temp:_ data.pet_lore append value '[{"text":"  攻撃力 ","color":"blue","italic":false},{"text":"$(attack_int).$(attack_decimal)"}]'
