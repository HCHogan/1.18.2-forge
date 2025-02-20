#建立Tag
execute at @a run tag @e add targeted

#获取玩家坐标
execute store result score x2 momentum run data get entity @e[type=player,limit=1,tag=targeted] Pos[0] 500
execute store result score y2 momentum run data get entity @e[type=player,limit=1,tag=targeted] Pos[1] 500
execute store result score z2 momentum run data get entity @e[type=player,limit=1,tag=targeted] Pos[2] 500

#获取火球坐标
execute store result score x1 momentum run data get entity @e[tag=top_left,limit=1] Pos[0] 500
execute store result score y1 momentum run data get entity @e[tag=top_left,limit=1] Pos[1] 500
execute store result score z1 momentum run data get entity @e[tag=top_left,limit=1] Pos[2] 500
#获取的坐标为小数，计分板只能取整，所以乘算500(原来一千，速度很快)

#计算到目标位置的动量
scoreboard players operation x2 momentum -= x1 momentum
scoreboard players operation y2 momentum -= y1 momentum
scoreboard players operation z2 momentum -= z1 momentum
#结算的时候再除算回去
execute store result entity @e[tag=top_left,limit=1] Motion[0] double 0.001 run scoreboard players get x2 momentum
execute store result entity @e[tag=top_left,limit=1] Motion[1] double 0.001 run scoreboard players get y2 momentum
execute store result entity @e[tag=top_left,limit=1] Motion[2] double 0.001 run scoreboard players get z2 momentum

#删除Tag
execute at @a run tag @e remove targeted