# level^2 + 6*level

scoreboard players operation $temp xp_storage.calc = @s xp_storage.xp_levels
scoreboard players operation $temp2 xp_storage.calc = @s xp_storage.xp_levels

scoreboard players operation $temp xp_storage.calc *= $temp2 xp_storage.calc
scoreboard players operation $temp2 xp_storage.calc *= #6 xp_storage.calc
scoreboard players operation $temp xp_storage.calc += $temp2 xp_storage.calc