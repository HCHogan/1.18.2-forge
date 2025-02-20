# from ./on_hit
# @s: entity

scoreboard players set @p[tag=in.self] in.cd_weapon 45
effect give @s wither 7 4

playsound minecraft:entity.wither.ambient player @a[distance=..16] ~ ~ ~ 2 1.25 0.0
playsound minecraft:entity.wither.shoot player @a[distance=..16] ~ ~ ~ 2 1.0 0.0
particle minecraft:soul_fire_flame ~ ~1 ~ 0.025 0.025 0.025 0.35 20 force
