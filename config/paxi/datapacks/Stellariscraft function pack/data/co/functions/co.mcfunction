#生成标签“co”的盔甲架
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["co"]}

#删除“co”计分板
scoreboard objectives remove co

#添加“co”计分板
scoreboard objectives add co dummy "co"

#检测带有“co”标签的盔甲架，以他为半径30格内的玩家分别在“co”计分板下的“coo”添加分数1
execute at @e[tag=co] run execute as @e[type=player,distance=..30] run scoreboard players add coo co 1

#总和分数到玩家身上
scoreboard players operation @e[type=armor_stand,tag=co] co = coo co

#清理buff
execute at @e[type=armor_stand,scores={co=2}] run effect clear @e[type=!minecraft:player,distance=..20] stellarisdlc:stamina_regen_enhanced
execute at @e[type=armor_stand,scores={co=2}] run effect clear @e[type=!minecraft:player,distance=..20] minecraft:resistance

#当玩家身上分数等于2时（耐力恢复）
execute at @e[type=armor_stand,scores={co=2}] run effect give @e[type=!minecraft:player,distance=..20] stellarisdlc:stamina_regen_enhanced 999999 0

#当玩家身上分数等于3时（耐力恢复）
execute at @e[type=armor_stand,scores={co=3}] run effect give @e[type=!minecraft:player,distance=..20] stellarisdlc:stamina_regen_enhanced 999999 1

#当玩家身上分数等于大于4时（耐力恢复）
execute at @e[type=armor_stand,scores={co=4..}] run effect give @e[type=!minecraft:player,distance=..20] stellarisdlc:stamina_regen_enhanced 999999 2

#当玩家身上分数等于2时（抗性）
execute at @e[type=armor_stand,scores={co=2}] run effect give @e[type=!minecraft:player,distance=..20] minecraft:resistance 999999 0

#当玩家身上分数等于3时（抗性）
execute at @e[type=armor_stand,scores={co=3}] run effect give @e[type=!minecraft:player,distance=..20] minecraft:resistance 999999 1

#当玩家身上分数等于大于4时（抗性）
execute at @e[type=armor_stand,scores={co=4..}] run effect give @e[type=!minecraft:player,distance=..20] minecraft:resistance 999999 2

#删除“co”计分板
scoreboard objectives remove co

#删除带有“co”标签的盔甲架
kill @e[tag=co]
