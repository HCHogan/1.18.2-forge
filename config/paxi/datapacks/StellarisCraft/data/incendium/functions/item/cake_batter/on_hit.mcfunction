# from: player/event/on_hit/entity
# @s: entity hit by cake batter

execute store success score $hunger in.dummy if predicate incendium:random/5
execute store success score $feed in.dummy if predicate incendium:random/25

execute if score $hunger in.dummy matches 10.. run tellraw @s {"translate": "%1$s%4733088$s","with":["You've eaten too much cake and received a stomach ache",{"translate":"incendium.item.cake.system.ache"}], "color": "#ff69b4"}
execute if score $hunger in.dummy matches 10.. run effect give @s minecraft:hunger 60 4

execute unless score $hunger in.dummy matches 10.. if score $feed in.dummy matches 1.. run tellraw @s {"translate": "%1$s%4733088$s","with":["Yum",{"translate":"incendium.item.cake.system.yum"}], "color": "#ffddf4"}
execute unless score $hunger in.dummy matches 10.. if score $feed in.dummy matches 1.. run effect give @s minecraft:saturation 60 1
