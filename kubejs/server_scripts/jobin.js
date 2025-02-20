
onEvent('summoningrituals.complete', event => {
    event.level.spawnLightning(event.pos.x, event.pos.y, event.pos.z, true);
});



onEvent('block.right_click', event => {
 if (event.block == 'cataclysm:altar_of_fire' && event.player.getHeldItem(event.hand) == 'cataclysm:burning_ashes')
 {
         event.server.runCommandSilent('title @p title {"text":"焰魔！苏醒了！！","color":"red"}');

   }
})


//仿生泪滴
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput(
     SummoningOutput.mob('star:mimic_tears')
                .offset(0, 2, 0)
    )
    .input('minecraft:ghast_tear')
    .input('minecraft:slime_block')
    .recipeTime(80)
    .blockBelow('stellariscraft:pblock');

});


//赤焰军团
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput(
        SummoningOutput.mob('blaze')
            .count(3))
    .mobOutput('jobinsmobs:reaper')
    .input('8x minecraft:magma_block')
    .input('minecraft:lava_bucket')
    .input('3x minecraft:diamond')
    .input('16x minecraft:coal')
    .recipeTime(80)
    .blockBelow('stellariscraft:pblock');

});

//僵尸先遣
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('jobinsmobs:darkadvance')
    .input('3x minecraft:copper_ingot')
    .input('4x minecraft:rotten_flesh')
    .input('6x minecraft:cobblestone')
    .input('4x minecraft:iron_ingot')
    .recipeTime(80)
    .blockBelow('stellariscraft:pblock');

});


//沙之凝壳
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('jobinsmobs:sandcaptain')
    .input('alexsmobs:guster_eye')
    .input('5x minecraft:rotten_flesh')
    .input('stellariscraft:blazestone')
    .input('2x minecraft:iron_ingot')
    .recipeTime(100)
    .blockBelow('stellariscraft:pblock');

});


//森白影魔
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('jobinsmobs:senbaidevil')
    .input('3x minecraft:bone')
    .input('miningmaster:spider_kunzite')
    .input('minecraft:netherite_scrap')
    .input('4x minecraft:amethyst_shard')
    .recipeTime(140)
    .blockBelow('stellariscraft:pblock');

});



//杀戮将军
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('jobinsmobs:slaughtergeneral')
    .input('4x minecraft:diamond')
    .input('byg:ametrine_gems')
    .input('4x minecraft:netherrack')
    .input('miningmaster:dive_aquamarine')
    .recipeTime(100)
    .blockBelow('stellariscraft:pblock');

});



//金焰神王
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('jobinsmobs:goldenflame')
    .input('minecraft:wither_skeleton_skull')
    .input('cataclysm:ignitium_ingot')
    .input('cataclysm:burning_ashes')
    .input('miningmaster:heart_rhodonite')
    .recipeTime(180)
    .blockBelow('stellariscraft:pblock');

});


//晨星之渊
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('jobinsmobs:msabyss')
    .input('blue_skies:horizonite_ingot')
    .input('blue_skies:diopside_gem')
    .input('blue_skies:ventium_ingot')
    .recipeTime(180)
    .blockBelow('stellariscraft:pblock');

});



//凝渊者
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput(
         SummoningOutput.mob('jobinsmobs:gazeabysser')
                    .offset(0, 2, 0)
        )
    .input('minecraft:dirt')
    .recipeTime(300)
    .blockBelow('stellariscraft:ublock');

});


//刷三王————二级
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('mowziesmobs:umvuthi')
    .input('byg:ametrine_gems')
    .input('minecraft:campfire')
    .input('stellariscraft:sandheart')

    .recipeTime(180)
    .blockBelow('stellariscraft:mblock');
});
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('mowziesmobs:frostmaw')
    .input('byg:ametrine_gems')
    .input('minecraft:blue_ice')
    .input('miningmaster:ice_sapphire')
    
    .recipeTime(180)
    .blockBelow('stellariscraft:mblock');
});


//孤豪的刀
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:immortalbadge")
    .itemOutput('guhao:guhao')
    .input('6x omnis:haunted_steel_ingot')
    .input('6x stellariscraft:w_knightingot')
    .input('6x cataclysm:enderite_ingot')
    .input('6x cataclysm:witherite_ingot')
    .input('6x stellariscraft:deadingot')
    .input('6x cataclysm:ignitium_ingot')

    .recipeTime(300)
    .blockBelow('stellariscraft:ublock');

});



//太刀——旧世界
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("biomesoplenty:blood_bucket")
    .itemOutput('stellarisdlc:oldworld')
    .input('6x biomesoplenty:bramble')
    .input('6x alexsmobs:blood_sac')
    .input('6x irons_spellbooks:blood_vial')
    .input('6x cataclysm:witherite_ingot')
    .input('6x biomesoplenty:flesh')
    .input('6x minecraft:nether_wart')

    .recipeTime(300)
    .blockBelow('stellariscraft:pblock');
});

//贤者H
onEvent('recipes', event => {
    event.recipes.summoningrituals.altar("stellariscraft:imessence")
    .mobOutput('jobinsmobs:sage')
    .input('stellariscraft:sandheart')
    .input('2x minecraft:diamond')
    .input('minecraft:netherite_ingot')
    .input('2x blue_skies:diopside_gem')

    .recipeTime(280)
    .blockBelow('stellariscraft:mblock');
});

onEvent('player.chat',event => {
    if (event.message.match("齐天大圣")) {
        if (event.player.getMainHandItem() == 'stellarisdlc:life_saving_strand') {
            event.server.runCommandSilent('title @p title {"text":"得他形易，承他意难","color":"yellow"}');
        }
    }
})