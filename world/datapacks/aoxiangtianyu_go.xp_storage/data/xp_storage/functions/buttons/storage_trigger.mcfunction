# Lock button
scoreboard players set $storage_button storage_button 1

# Select nearest player within 5 blocks of the button
execute positioned 18 175 229 as @p[distance=..5] run function xp_storage:buttons/storage