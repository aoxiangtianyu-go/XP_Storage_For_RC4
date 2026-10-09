# Add tag
execute in minecraft:overworld positioned 22 175 229 run tag @a[distance=..10] add src4.ab.display_xp

# Remove tag
execute in minecraft:overworld positioned 22 175 229 run tag @a[distance=10..,tag=src4.ab.display_xp] remove src4.ab.display_xp

# Button trigger
execute in minecraft:overworld positioned 18 175 229 if block 18 175 229 #minecraft:buttons[powered=true] if score $storage_button storage_button matches 0 run function xp_storage:buttons/storage_trigger
execute in minecraft:overworld positioned 26 175 229 if block 26 175 229 #minecraft:buttons[powered=true] if score $retrieve_button retrieve_button matches 0 run function xp_storage:buttons/retrieve_trigger

# Reset after button is released
execute in minecraft:overworld unless block 18 175 229 #minecraft:buttons[powered=true] run scoreboard players set $storage_button storage_button 0
execute in minecraft:overworld unless block 26 175 229 #minecraft:buttons[powered=true] run scoreboard players set $retrieve_button retrieve_button 0