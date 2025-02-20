#播放危
execute at @e[tag=red] run execute at @a[distance=..32] run particle star:dangers_red ~ ~3 ~ 0 0 0 1 1 force @a[distance=..32]
execute at @e[tag=red] run execute at @a[distance=..32] run playsound star:danger block @a ~ ~ ~ 1

#删除“red”标签
tag @e[tag=red] remove red
