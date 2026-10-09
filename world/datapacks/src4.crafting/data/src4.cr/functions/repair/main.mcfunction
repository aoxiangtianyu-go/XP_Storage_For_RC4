# I'm just going to keep summoning this guy all the time because I'm paranoid
execute unless entity 5050C40-0000-0000-CF10-000000000007 run summon piglin 659 5 508 {PersistenceRequired:1b,NoAI:1b,IsImmuneToZombification:1b,CanPickUpLoot:0b,Silent:1b,NoGravity:1b,Attributes:[{Name:generic.attack_damage,Base:0}],UUID:[I;84216896,0,-821035008,7],Tags:["src4.cr","src4.cr7"]}

execute store result score $temp2 src4.cr at 5050C40-0000-0000-CF10-000000000000 run function src4.cr:crafting_station/check_integrity
execute if score $temp src4.cr matches 1.. at 5050C40-0000-0000-CF10-000000000000 as @e[type=item,distance=..10] run function src4.cr:crafting_station/kill_items
execute if score $temp2 src4.cr matches 1.. at 5050C40-0000-0000-CF10-000000000000 as @e[type=item,distance=..10] run function src4.cr:crafting_station/kill_items

execute at 5050C40-0000-0000-CF10-000000000000 if entity @a[distance=..20] run function src4.cr:player_nearby

scoreboard players add $global_timer src4.cr 1
scoreboard players operation $temp src4.cr = $global_timer src4.cr
scoreboard players operation $temp src4.cr %= #30 src4.cr
execute if score $temp src4.cr matches 0 at 5050C40-0000-0000-CF10-000000000000 run function src4.cr:crafting_station/visuals/ambience