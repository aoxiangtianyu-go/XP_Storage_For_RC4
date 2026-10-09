data modify storage src4.ab:main storage_chars append string storage src4.ab:main storage_temp 0 1
data modify storage src4.ab:main storage_chars append value "+"
data modify storage src4.ab:main storage_chars_neg append value "a"
data modify storage src4.ab:main storage_temp set string storage src4.ab:main storage_temp 1
execute store result score $storage_temp src4.cr run data get storage src4.ab:main storage_temp

execute if score $storage_temp src4.cr matches 1.. run function xp_storage:xp/parse_storage