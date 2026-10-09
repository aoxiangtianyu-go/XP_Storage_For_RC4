# 2.5*level^2 - 40.5*level + 360

scoreboard players operation $temp xp_storage.calc = @s xp_storage.xp_levels
scoreboard players operation $temp2 xp_storage.calc = @s xp_storage.xp_levels

scoreboard players operation $temp xp_storage.calc *= $temp2 xp_storage.calc
scoreboard players operation $temp xp_storage.calc *= #5 xp_storage.calc
scoreboard players operation $temp xp_storage.calc /= #2 xp_storage.calc

scoreboard players operation $temp2 xp_storage.calc *= #81 xp_storage.calc
scoreboard players operation $temp2 xp_storage.calc /= #2 xp_storage.calc

scoreboard players operation $temp xp_storage.calc -= $temp2 xp_storage.calc
scoreboard players add $temp xp_storage.calc 360