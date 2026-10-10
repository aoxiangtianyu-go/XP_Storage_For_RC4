#Get XP cost
execute store result score $xp_cost src4.cr run data get storage src4.cr:main StandItem.tag.repair_cost
scoreboard players operation $xp_cost src4.cr *= #10 src4.cr

#Get material cost
execute as 5050C40-0000-0000-CF10-000000000006 run function src4.cr:repair/cost/amount
execute as 5050C40-0000-0000-CF10-000000000006 run function src4.cr:repair/cost/type

#Display XP for nearby players
# === Change ===
#tag @a[distance=..10] add src4.ab.display_xp
# === Change End ===

#Display cost
execute unless score $displayed_xp_cost src4.cr = $xp_cost src4.cr run function src4.cr:repair/cost/display
execute if score $displayed_xp_cost src4.cr = $xp_cost src4.cr unless score $displayed_mat_cost src4.cr = $mat_cost src4.cr run function src4.cr:repair/cost/display
execute if score $displayed_xp_cost src4.cr = $xp_cost src4.cr if score $displayed_mat_cost src4.cr = $mat_cost src4.cr unless score $displayed_mat_type src4.cr = $mat_type src4.cr run function src4.cr:repair/cost/display

#Button
execute if score $rep_anim src4.cr matches ..-1 run scoreboard players add $rep_anim src4.cr 1
execute if score $rep_anim src4.cr matches 1.. run scoreboard players remove $rep_anim src4.cr 1
execute if block ~ ~-1 ~1 #minecraft:buttons[powered=true] if score $rep_anim src4.cr matches 0 run function src4.cr:repair/trigger/do

#Craft
execute if score $rep_anim src4.cr matches 1 run function src4.cr:repair/do

#Not enough
execute if score $rep_anim src4.cr matches -29 run function src4.cr:repair/cost/display_red
execute if score $rep_anim src4.cr matches -24 run function src4.cr:repair/cost/display
execute if score $rep_anim src4.cr matches -19 run function src4.cr:repair/cost/display_red
execute if score $rep_anim src4.cr matches -14 run function src4.cr:repair/cost/display

#Mid particle spawn
execute if score $rep_anim src4.cr matches 10 run particle minecraft:sonic_boom ~ ~.7 ~.25 0 0 0 1 1 force
