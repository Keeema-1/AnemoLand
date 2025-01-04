
data modify storage temp:_ data.pages set value []

function anemoland:sys/player/area/common/village/update/book_shop/armor/00

data modify block ~ ~ ~ Book.components."minecraft:written_book_content".pages set from storage temp:_ data.pages
