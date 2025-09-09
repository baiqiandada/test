# 只对有playing标签的玩家生效并添加死亡效果
execute as @a[tag=playing] at @s if block ~ ~ ~ end_rod run effect give @s instant_damage 1 100 true
execute as @a[tag=playing] at @s if block ~ ~ ~ end_rod run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.1 50
execute as @a[tag=playing] at @s if block ~ ~ ~ end_rod run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
execute as @a[tag=playing] at @s if block ~ ~ ~ end_rod run tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":" 被末地烛扎死了"}]}