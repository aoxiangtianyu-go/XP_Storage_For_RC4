# Calculate total experience points required for the current level
execute if score @s xp_storage.xp_levels matches 0..16 run function xp_storage:xp/progress/points1
execute if score @s xp_storage.xp_levels matches 17..31 run function xp_storage:xp/progress/points2
execute if score @s xp_storage.xp_levels matches 32..63 run function xp_storage:xp/progress/points3

# Calculate progress points within the current level
scoreboard players operation @s xp_storage.xp_progress_points = @s xp_storage.xp_points_storage
scoreboard players operation @s xp_storage.xp_progress_points -= $temp xp_storage.calc