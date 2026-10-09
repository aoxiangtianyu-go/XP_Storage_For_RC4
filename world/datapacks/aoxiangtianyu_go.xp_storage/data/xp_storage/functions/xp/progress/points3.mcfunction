# 4.5*level^2 - 162.5*level + 2220

scoreboard players operation $temp xp_storage.calc = @s xp_storage.xp_levels
scoreboard players operation $temp2 xp_storage.calc = @s xp_storage.xp_levels

scoreboard players operation $temp xp_storage.calc *= $temp2 xp_storage.calc
scoreboard players operation $temp xp_storage.calc *= #9 xp_storage.calc

scoreboard players operation $temp2 xp_storage.calc *= #325 xp_storage.calc
scoreboard players operation $temp xp_storage.calc -= $temp2 xp_storage.calc

scoreboard players operation $temp xp_storage.calc /= #2 xp_storage.calc
scoreboard players add $temp xp_storage.calc 2220