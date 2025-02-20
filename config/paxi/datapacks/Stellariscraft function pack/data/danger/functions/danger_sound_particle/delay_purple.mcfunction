#播放危
execute at @e[tag=purple] run execute at @a[distance=..32] run particle stellarisdlc:dangerspurple ~ ~3 ~ 0 0 0 1 1 force @a[distance=..32]
execute at @e[tag=purple] run execute at @a[distance=..32] run playsound star:danger block @a ~ ~ ~ 1

#删除“purple”标签
tag @e[tag=purple] remove purple
