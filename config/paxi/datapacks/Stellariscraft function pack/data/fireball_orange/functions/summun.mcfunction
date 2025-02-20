#点位坐标的计分板
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy
scoreboard objectives add x2 dummy
scoreboard objectives add y2 dummy
scoreboard objectives add z2 dummy

#动量的计分板
scoreboard objectives add momentum dummy

#拉火球中间
execute anchored feet run summon cataclysm:ignis_fireball ^ ^4.5 ^0.5 {Tags:[midst],Motion:[0.0d,0.0d,0.0d],NoGravity:0b}

#拉火球右边
execute anchored feet run summon cataclysm:ignis_fireball ^2 ^3 ^0.5 {Tags:[top_right],Motion:[0.0d,0.0d,0.0d],NoGravity:0b}

#拉火球左边
execute anchored feet run summon cataclysm:ignis_fireball ^-2 ^3 ^0.5 {Tags:[top_left],Motion:[0.0d,0.0d,0.0d],NoGravity:0b}