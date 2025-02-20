execute as @e[type=minecraft:player,tag=lighting_hit,sort=nearest,limit=1] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 150 force
execute as @e[type=minecraft:player,tag=lighting_hit,sort=nearest,limit=1] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 1 50 force
execute as @e[type=minecraft:player,tag=lighting_hit,sort=nearest,limit=1] at @s run particle minecraft:glow ~ ~2 ~ 0 2 0 0 150 force
execute as @e[type=minecraft:player,tag=lighting_hit,sort=nearest,limit=1] at @s run effect give @s cofh_core:shocked 20 1