#播放危
execute at @e[tag=orange] run execute at @a[distance=..32] run particle star:dangers ~ ~3 ~ 0 0 0 1 1 force @a[distance=..32]
execute at @e[tag=orange] run execute at @a[distance=..32] run playsound star:danger block @a ~ ~ ~ 1

#删除“orange”标签
tag @e[tag=orange] remove orange

