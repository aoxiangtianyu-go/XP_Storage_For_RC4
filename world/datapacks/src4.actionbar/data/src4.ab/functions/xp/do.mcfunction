#Get XP points
function src4.ab:xp/get_points

#Store total XP as string
execute store result storage src4.ab:main temp int 1 run scoreboard players get @s src4.xp_points
data modify storage src4.ab:main temp set string storage src4.ab:main temp

#Parse into char array
data modify storage src4.ab:main xp_chars set value []
data modify storage src4.ab:main xp_chars_neg set value []
function src4.ab:xp/parse

# === Inject ===
# Store storage XP as string
execute store result storage src4.ab:main storage_temp int 1 run scoreboard players get @s xp_storage.xp_points_storage
data modify storage src4.ab:main storage_temp set string storage src4.ab:main storage_temp

# Parse storage XP into char array
data modify storage src4.ab:main storage_chars set value []
data modify storage src4.ab:main storage_chars_neg set value []
function xp_storage:xp/parse_storage

# === Inject End ===

#Display in actionbar (xp_chars_neg ensures alignment is consistent regardless of string length)
# === Change ===
data modify storage src4.ab:main components append value '["",{"translate":"item.emerald.1.name.1","font":"rc4:spacing"},{"translate":"src4.ab.functions.xp.do.2","font":"rc4:xpbar"},{"nbt":"xp_chars","storage":"src4.ab:main","font":"rc4:xpbar","color":"#7EFC20","interpret":true},{"text":"  B+a+n+k+:+","font":"rc4:xpbar","color":"#55FFFF"},{"nbt":"storage_chars","storage":"src4.ab:main","font":"rc4:xpbar","color":"#55FFFF","interpret":true},{"nbt":"xp_chars_neg","storage":"src4.ab:main","font":"rc4:spacing","interpret":true},{"text":"aaaaab","font":"rc4:spacing"},{"nbt":"storage_chars_neg","storage":"src4.ab:main","font":"rc4:spacing","interpret":true},{"translate":"item.cyan_dye.4.lore.2.2","font":"rc4:spacing"}]'
# === Change End ===