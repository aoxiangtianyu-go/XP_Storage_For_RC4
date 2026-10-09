function xp_storage:xp/progress/levels
function xp_storage:xp/progress/points

# Restore level using binary decomposition
scoreboard players operation @s xp_storage.calc = @s xp_storage.xp_levels

execute if score @s xp_storage.calc matches 32.. run experience add @s 32 levels
execute if score @s xp_storage.calc matches 32.. run scoreboard players remove @s xp_storage.calc 32

execute if score @s xp_storage.calc matches 16.. run experience add @s 16 levels
execute if score @s xp_storage.calc matches 16.. run scoreboard players remove @s xp_storage.calc 16

execute if score @s xp_storage.calc matches 8.. run experience add @s 8 levels
execute if score @s xp_storage.calc matches 8.. run scoreboard players remove @s xp_storage.calc 8

execute if score @s xp_storage.calc matches 4.. run experience add @s 4 levels
execute if score @s xp_storage.calc matches 4.. run scoreboard players remove @s xp_storage.calc 4

execute if score @s xp_storage.calc matches 2.. run experience add @s 2 levels
execute if score @s xp_storage.calc matches 2.. run scoreboard players remove @s xp_storage.calc 2

execute if score @s xp_storage.calc matches 1.. run experience add @s 1 levels
execute if score @s xp_storage.calc matches 1.. run scoreboard players remove @s xp_storage.calc 1

# Restore progress points using binary decomposition
scoreboard players operation @s xp_storage.calc = @s xp_storage.xp_progress_points

execute if score @s xp_storage.calc matches 256.. run experience add @s 256 points
execute if score @s xp_storage.calc matches 256.. run scoreboard players remove @s xp_storage.calc 256

execute if score @s xp_storage.calc matches 128.. run experience add @s 128 points
execute if score @s xp_storage.calc matches 128.. run scoreboard players remove @s xp_storage.calc 128

execute if score @s xp_storage.calc matches 64.. run experience add @s 64 points
execute if score @s xp_storage.calc matches 64.. run scoreboard players remove @s xp_storage.calc 64

execute if score @s xp_storage.calc matches 32.. run experience add @s 32 points
execute if score @s xp_storage.calc matches 32.. run scoreboard players remove @s xp_storage.calc 32

execute if score @s xp_storage.calc matches 16.. run experience add @s 16 points
execute if score @s xp_storage.calc matches 16.. run scoreboard players remove @s xp_storage.calc 16

execute if score @s xp_storage.calc matches 8.. run experience add @s 8 points
execute if score @s xp_storage.calc matches 8.. run scoreboard players remove @s xp_storage.calc 8

execute if score @s xp_storage.calc matches 4.. run experience add @s 4 points
execute if score @s xp_storage.calc matches 4.. run scoreboard players remove @s xp_storage.calc 4

execute if score @s xp_storage.calc matches 2.. run experience add @s 2 points
execute if score @s xp_storage.calc matches 2.. run scoreboard players remove @s xp_storage.calc 2

execute if score @s xp_storage.calc matches 1.. run experience add @s 1 points
execute if score @s xp_storage.calc matches 1.. run scoreboard players remove @s xp_storage.calc 1