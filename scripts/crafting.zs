import crafttweaker.api.recipe.Brewing;
import crafttweaker.api.item.alchemy.Potion;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import crafttweaker.api.recipe.SmithingRecipeManager;
import mods.jei.component.JeiIngredient;
import mods.jei.JEI;
import crafttweaker.api.item.ItemCooldowns;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.RightClickItemEvent;
import crafttweaker.api.item.ItemCooldowns;
import crafttweaker.api.recipe.type.StonecutterRecipe;
import crafttweaker.api.event.entity.living.use.LivingEntityUseItemFinishEvent;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.world.ServerLevel;
import mods.itemstages.ItemStages;

//ban铁魔法工作台锻造台配方
craftingTable.removeByModid("irons_spellbooks");
smithing.removeByModid("irons_spellbooks");


//铁砧升级
craftingTable.remove(<item:sophisticatedbackpacks:anvil_upgrade>);
craftingTable.addShaped("anvil_upgrade", <item:sophisticatedbackpacks:anvil_upgrade>, [
    [<item:minecraft:anvil>, <item:minecraft:diamond>, <item:minecraft:anvil>],
    [<item:minecraft:diamond>, <item:sophisticatedbackpacks:inception_upgrade>, <item:minecraft:diamond>],
    [<item:minecraft:anvil>, <item:minecraft:diamond>, <item:minecraft:anvil>]]);
//神秘蠕虫
craftingTable.addShapeless("mysterious_worm", <item:alexsmobs:mysterious_worm>, [<item:alexsmobs:mosquito_larva>,<item:alexsmobs:warped_muscle>]);
//末地唱片    
craftingTable.addShaped("music_disc_daze", <item:alexsmobs:music_disc_daze>, [
    [<item:alexsmobs:cosmic_cod>, <item:alexsmobs:cosmic_cod>, <item:alexsmobs:cosmic_cod>],
    [<item:alexsmobs:cosmic_cod>, <tag:items:minecraft:music_discs>, <item:alexsmobs:cosmic_cod>],
    [<item:alexsmobs:cosmic_cod>, <item:alexsmobs:cosmic_cod>, <item:alexsmobs:cosmic_cod>]]);

//铁魔法，魔法布匹，奥术锭
craftingTable.addShaped("magic_cloth", <item:irons_spellbooks:magic_cloth>, [
    [<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>], 
    [<item:irons_spellbooks:arcane_essence>,<item:minecraft:white_wool>,<item:irons_spellbooks:arcane_essence>], 
    [<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>]]);
craftingTable.addShaped("arcane_ingot", <item:irons_spellbooks:arcane_ingot>, [
    [<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>], 
    [<item:irons_spellbooks:arcane_essence>,<item:minecraft:copper_ingot>,<item:irons_spellbooks:arcane_essence>], 
    [<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>,<item:irons_spellbooks:arcane_essence>]]);
//物品阶段——禁用：
ItemStages.restrict(<item:epicacg:training_bow>, "unlock_acg");
ItemStages.restrict(<item:epicacg:battle_scythe>, "unlock_acg");
ItemStages.restrict(<item:epicacg:elucidator>, "unlock_acg");
ItemStages.restrict(<item:epicacg:firefly_sword>, "unlock_acg");
ItemStages.restrict(<item:epicacg:dark_repulsor>, "unlock_acg");
ItemStages.restrict(<item:epicacg:lambent_light>, "unlock_acg");
ItemStages.restrict(<item:epicacg:dragon_shit_crystal>, "unlock_acg");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "epicacg:sao_single_sword"}), "unlock_acg");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "epicacg:sao_rapier_skill"}), "unlock_acg");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "epicacg:sao_dual_sword_skill"}), "unlock_acg");

ItemStages.restrict(<item:wom:agony>, "unlock_wom");
ItemStages.restrict(<item:wom:tormented_mind>, "unlock_wom");
ItemStages.restrict(<item:wom:ruine>, "unlock_wom");
ItemStages.restrict(<item:wom:ender_blaster>, "unlock_wom");
ItemStages.restrict(<item:wom:antitheus>, "unlock_wom");
ItemStages.restrict(<item:wom:herrscher>, "unlock_wom");
ItemStages.restrict(<item:wom:gesetz>, "unlock_wom");
ItemStages.restrict(<item:wom:moonless>, "unlock_wom");
ItemStages.restrict(<item:wom:wooden_staff>, "unlock_wom");
ItemStages.restrict(<item:wom:stone_staff>, "unlock_wom");
ItemStages.restrict(<item:wom:iron_staff>, "unlock_wom");
ItemStages.restrict(<item:wom:golden_staff>, "unlock_wom");
ItemStages.restrict(<item:wom:diamond_staff>, "unlock_wom");
ItemStages.restrict(<item:wom:netherite_staff>, "unlock_wom");
ItemStages.restrict(<item:wom:demon_seal>, "unlock_wom");

smithing.remove(<item:wom:satsujin>);

ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:precise_roll"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:ender_step"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:ender_obscuris"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:shadow_step"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:bull_charge"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:counter_attack"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:perfect_bulwark"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:vengeful_parry"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:arrow_tenacity"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:pain_anticipation"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:latent_retribution"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:vampirize"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:dodge_master"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:critical_knowledge"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:heart_shield"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:mindset"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:adrenaline"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:dancing_blade"}), "unlock_wom");
ItemStages.restrict(<item:epicfight:skillbook>.withTag({skill: "wom:meditation"}), "unlock_wom");

brewing.removeRecipe(<potion:minecraft:long_weakness>, <item:minecraft:redstone>, <potion:minecraft:weakness>);
ItemStages.restrict(<item:minecraft:potion>.withTag({Potion: "davespotioneering:milk"}), "unlock_davepotion");
ItemStages.restrict(<item:minecraft:splash_potion>.withTag({Potion: "davespotioneering:milk"}), "unlock_davepotion");
ItemStages.restrict(<item:minecraft:lingering_potion>.withTag({Potion: "davespotioneering:milk"}), "unlock_davepotion");

ItemStages.restrict(<item:irons_spellbooks:rotten_spell_book>, "unlock_davepotion");
ItemStages.restrict(<item:irons_spellbooks:villager_spell_book>, "unlock_davepotion");


//禁用铁魔法2法球+2符文
craftingTable.remove(<item:irons_spellbooks:mana_upgrade_orb>);
craftingTable.remove(<item:irons_spellbooks:cooldown_upgrade_orb>);
craftingTable.remove(<item:irons_spellbooks:cooldown_rune>);
craftingTable.remove(<item:irons_spellbooks:arcane_rune>);


//禁用弹弓
craftingTable.remove(<item:supplementaries:slingshot>);

//测试棒
craftingTable.addShaped("staff", <item:wukong:staff>, [
    [<item:minecraft:air>, <item:minecraft:stripped_oak_log>, <item:minecraft:stripped_oak_log>], 
    [<item:minecraft:stripped_oak_log>, <item:ba_bt:guardian_eye_ocean>, <item:minecraft:stripped_oak_log>], 
    [<item:minecraft:stripped_oak_log>, <item:minecraft:stripped_oak_log>, <item:minecraft:air>]]);
//金箍棒
craftingTable.addShaped("jingubang", <item:wukong:jingubang>, [
    [<item:minecraft:air>, <item:minecraft:gilded_blackstone>, <item:ba_bt:guardian_eye_nether>], 
    [<item:minecraft:gilded_blackstone>, <item:wukong:staff>, <item:minecraft:gilded_blackstone>], 
    [<item:ba_bt:guardian_eye_nether>, <item:minecraft:gilded_blackstone>, <item:minecraft:air>]]);
//注射器
craftingTable.addShaped("peter", <item:stellarisdlc:peter>, [
    [<item:minecraft:air>, <item:cataclysm:enderite_ingot>, <item:cataclysm:enderite_ingot>],
    [<item:stellariscraft:w_knightingot>, <item:stellariscraft:steelingot>, <item:minecraft:air>],
    [<item:stellariscraft:w_knightingot>, <item:stellariscraft:steelingot>, <item:minecraft:air>]]);

//生命感召--附魔书合成
craftingTable.addShaped("heartfelt1", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short,id: "miningmaster:heartfelt"}]}), [
    [<item:minecraft:book>, <item:irons_spellbooks:arcane_essence>, <item:minecraft:book>], 
    [<item:irons_spellbooks:arcane_essence>, <item:stellariscraft:netheritess>, <item:irons_spellbooks:arcane_essence>], 
    [<item:minecraft:book>, <item:irons_spellbooks:arcane_essence>, <item:minecraft:book>]]);
craftingTable.addShaped("heartfelt2", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short,id: "miningmaster:heartfelt"}]}), [
    [<item:minecraft:book>, <item:irons_spellbooks:arcane_essence>, <item:minecraft:book>], 
    [<item:irons_spellbooks:arcane_essence>, <item:stellariscraft:diedscrap>, <item:irons_spellbooks:arcane_essence>], 
    [<item:minecraft:book>, <item:irons_spellbooks:arcane_essence>, <item:minecraft:book>]]);
craftingTable.addShaped("heartfelt3", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short,id: "miningmaster:heartfelt"}]}), [
    [<item:minecraft:air>, <item:irons_spellbooks:magic_cloth>, <item:minecraft:air>], 
    [<item:irons_spellbooks:magic_cloth>, <item:stellariscraft:witherc>, <item:irons_spellbooks:magic_cloth>], 
    [<item:minecraft:air>, <item:irons_spellbooks:magic_cloth>, <item:minecraft:air>]]);
craftingTable.addShaped("heartfelt4", <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short,id: "miningmaster:heartfelt"}]}), [
    [<item:minecraft:air>, <item:irons_spellbooks:magic_cloth>, <item:minecraft:air>], 
    [<item:irons_spellbooks:magic_cloth>, <item:stellariscraft:starcore>, <item:irons_spellbooks:magic_cloth>], 
    [<item:minecraft:air>, <item:irons_spellbooks:magic_cloth>, <item:minecraft:air>]]);



//技能书-锻造+合成
craftingTable.addShaped("phantom_ascent", <item:epicfight:skillbook>.withTag({skill: "epicfight:phantom_ascent"}), [
    [<item:quark:bottled_cloud>, <item:quark:bottled_cloud>, <item:quark:bottled_cloud>], 
    [<item:quark:bottled_cloud>, <item:minecraft:book>, <item:quark:bottled_cloud>], 
    [<item:quark:bottled_cloud>, <item:artifacts:cloud_in_a_bottle>, <item:quark:bottled_cloud>]]);

craftingTable.addShaped("double_jump", <item:epicfight:skillbook>.withTag({skill: "star:double_jump"}), [
    [<item:quark:bottled_cloud>, <item:stellariscraft:netheritess>, <item:quark:bottled_cloud>], 
    [<item:quark:bottled_cloud>, <item:minecraft:book>, <item:quark:bottled_cloud>], 
    [<item:quark:bottled_cloud>, <item:artifacts:cloud_in_a_bottle>, <item:quark:bottled_cloud>]]);

craftingTable.addShaped("forbidden_strength", <item:epicfight:skillbook>.withTag({skill: "epicfight:forbidden_strength"}), [
    [<item:minecraft:air>, <item:bosses_of_mass_destruction:soul_star>, <item:minecraft:air>], 
    [<item:bosses_of_mass_destruction:soul_star>, <item:minecraft:book>, <item:bosses_of_mass_destruction:soul_star>], 
    [<item:minecraft:air>, <item:bosses_of_mass_destruction:soul_star>, <item:minecraft:air>]]);

craftingTable.addShaped("see_through", <item:epicfight:skillbook>.withTag({skill: "star:see_through"}), [
    [<item:minecraft:book>, <item:minecraft:diamond>, <item:minecraft:book>], 
    [<item:minecraft:diamond>, <item:ba_bt:guardian_eye_land>, <item:minecraft:diamond>], 
    [<item:minecraft:book>, <item:minecraft:diamond>, <item:minecraft:book>]]);



//无限海绵+无限灭火
craftingTable.addShaped("heartseacharge", <item:stellariscraft:heartseacharge>, [
    [<item:minecraft:air>, <item:aquaculture:neptunium_nugget>, <item:minecraft:air>], 
    [<item:minecraft:prismarine_crystals>, <item:minecraft:heart_of_the_sea>, <item:minecraft:prismarine_crystals>], 
    [<item:minecraft:air>, <item:aquaculture:neptunium_nugget>, <item:minecraft:air>]]);
craftingTable.addShaped("infinitysponge", <item:stellariscraft:infinitysponge>, [
    [<item:minecraft:air>, <item:minecraft:sponge>, <item:minecraft:air>], 
    [<item:minecraft:sponge>, <item:ringsofascension:ring_sponge>, <item:minecraft:sponge>], 
    [<item:minecraft:air>, <item:minecraft:sponge>, <item:minecraft:air>]]);



//属性重置水晶
craftingTable.addShaped("rebuild_crystal", <item:stellarisdlc:rebuild_crystal>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:amethysttoolsmod:amethyst_cluster_lv2>], 
    [<item:stellariscraft:adventurespar>, <item:amethysttoolsmod:amethyst_cluster_lv2>, <item:minecraft:air>], 
    [<item:minecraft:end_crystal>, <item:minecraft:air>, <item:minecraft:air>]]);

//镰刀-锻造+合成
smithing.remove(<item:stellarisdlc:soulsickle>);
smithing.addRecipe("soulsickle", <item:stellarisdlc:soulsickle>, <item:stellarisdlc:sickle>, <item:minecraft:nether_star>);
craftingTable.addShaped("sickle", <item:stellarisdlc:sickle>, [
    [<item:stellariscraft:blazestone>, <item:stellariscraft:blazestone>, <item:stellariscraft:blazestone>], 
    [<item:minecraft:air>, <item:mca:scythe>, <item:minecraft:air>], 
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:wither_skeleton_skull>]]);




//戴夫酿造台
craftingTable.remove(<item:davespotioneering:compound_brewing_stand>);
craftingTable.remove(<item:davespotioneering:reinforced_cauldron>);
craftingTable.remove(<item:davespotioneering:potion_injector>);
craftingTable.remove(<item:davespotioneering:potioneer_gauntlet>);
craftingTable.remove(<item:davespotioneering:rudimentary_gauntlet>);

craftingTable.addShaped("potion_injector", <item:davespotioneering:potion_injector>, [
    [<item:minecraft:leather>, <item:minecraft:stone_button>, <item:minecraft:leather>], 
    [<item:stellariscraft:steelingot>, <item:minecraft:dragon_breath>, <item:stellariscraft:steelingot>], 
    [<item:minecraft:netherite_ingot>, <item:stellariscraft:steelingot>, <item:minecraft:netherite_ingot>]]);

craftingTable.addShaped("compound_brewing_stand", <item:davespotioneering:compound_brewing_stand>, [
    [<item:minecraft:air>, <item:minecraft:dragon_breath>, <item:minecraft:air>], 
    [<item:minecraft:blaze_rod>, <item:minecraft:brewing_stand>, <item:minecraft:blaze_rod>], 
    [<item:stellariscraft:netherrotingot>, <item:minecraft:netherite_ingot>, <item:stellariscraft:netherrotingot>]]);

craftingTable.addShaped("reinforced_cauldron", <item:davespotioneering:reinforced_cauldron>, [
    [<item:stellariscraft:netherrotingot>, <item:minecraft:netherite_scrap>, <item:stellariscraft:netherrotingot>], 
    [<item:minecraft:netherite_scrap>, <item:minecraft:cauldron>, <item:minecraft:netherite_scrap>], 
    [<item:stellariscraft:netherrotingot>, <item:minecraft:netherite_scrap>, <item:stellariscraft:netherrotingot>]]);


//拳套——系列锻造
smithing.addRecipe("potioneer_to_guard", <item:cataclysm:gauntlet_of_guard>, <item:davespotioneering:potioneer_gauntlet>, <item:cataclysm:void_core>);
smithing.addRecipe("netherite_to_potioneer", <item:davespotioneering:potioneer_gauntlet>, <item:davespotioneering:netherite_gauntlet>, <item:davespotioneering:potion_injector>);
craftingTable.addShaped("glove_to_rudimentary", <item:davespotioneering:rudimentary_gauntlet>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>], 
    [<item:minecraft:copper_ingot>, <item:epicfight:glove>, <item:minecraft:copper_ingot>], 
    [<item:minecraft:gold_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:gold_ingot>]]);





//修铁砧
smithing.addRecipe("chipped2perfect", <item:minecraft:anvil>, <item:minecraft:chipped_anvil>, <item:stellariscraft:steelingot>);
smithing.addRecipe("damaged2chipped", <item:minecraft:chipped_anvil>, <item:minecraft:damaged_anvil>, <item:stellariscraft:steelingot>);

//森白——合金残片
smithing.remove(<item:minecraft:netherite_ingot>);
smithing.addRecipe("netheritess2netherite_scrap", <item:minecraft:netherite_scrap>*2, <item:minecraft:gold_ingot>, <item:stellariscraft:netheritess>);

//绑石套
craftingTable.addShaped("tiestone_armor_helmet", <item:stellarisdlc:tiestone_armor_helmet>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
    [<item:minecraft:leather>, <item:minecraft:cobblestone>, <item:minecraft:leather>], 
    [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>]]);
craftingTable.addShaped("tiestone_armor_chestplate", <item:stellarisdlc:tiestone_armor_chestplate>, [
    [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>], 
    [<item:minecraft:leather>, <item:minecraft:cobblestone>, <item:minecraft:leather>], 
    [<item:minecraft:cobblestone>, <item:minecraft:leather>, <item:minecraft:cobblestone>]]);
craftingTable.addShaped("tiestone_armor_leggings", <item:stellarisdlc:tiestone_armor_leggings>, [
    [<item:minecraft:cobblestone>, <item:minecraft:iron_ingot>, <item:minecraft:cobblestone>], 
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>], 
    [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>]]);
craftingTable.addShaped("tiestone_armor_boots", <item:stellarisdlc:tiestone_armor_boots>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>], 
    [<item:minecraft:cobblestone>, <item:minecraft:air>, <item:minecraft:cobblestone>]]);



//黑石
craftingTable.addShaped("blackstone", <item:minecraft:blackstone>*8, [
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>], 
    [<item:minecraft:cobblestone>, <item:minecraft:black_dye>, <item:minecraft:cobblestone>], 
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]]);

//青金石块合成
craftingTable.addShaped("diamond_heart2", <item:minecraft:lapis_block>*4, [
    [<item:minecraft:gold_ingot>, <item:irons_spellbooks:arcane_essence>, <item:minecraft:gold_ingot>], 
    [<item:irons_spellbooks:arcane_essence>, <item:quark:diamond_heart>, <item:irons_spellbooks:arcane_essence>], 
    [<item:minecraft:gold_block>, <item:irons_spellbooks:arcane_essence>, <item:minecraft:gold_block>]]);


//黑暗之核
craftingTable.addShaped("blacknetherstar", <item:stellariscraft:blacknetherstar>, [
    [<item:cataclysm:witherite_ingot>, <item:amethysttoolsmod:amethyst_cluster_lv2>, <item:cataclysm:witherite_ingot>], 
    [<item:amethysttoolsmod:amethyst_cluster_lv2>, <item:minecraft:nether_star>, <item:amethysttoolsmod:amethyst_cluster_lv2>], 
    [<item:cataclysm:witherite_ingot>, <item:amethysttoolsmod:amethyst_cluster_lv2>, <item:cataclysm:witherite_ingot>]]);
smithing.addRecipe("wither_skeleton_skull1", <item:minecraft:wither_skeleton_skull>*6, <item:cataclysm:witherite_ingot>, <item:stellariscraft:imessence>);
smithing.addRecipe("wither_skeleton_skull2", <item:minecraft:wither_skeleton_skull>*3, <item:stellariscraft:netherrotingot>, <item:stellariscraft:imessence>);


//5种箭移植制箭台+箭袋
craftingTable.remove(<item:amethysttoolsmod:amethyst_arrow>);
craftingTable.remove(<item:alexsmobs:shark_tooth_arrow>);
craftingTable.remove(<item:amethysttoolsmod:amethyst_spectral_arrow>);
craftingTable.remove(<item:cataclysm:void_scatter_arrow>);
craftingTable.remove(<item:minecraft:spectral_arrow>);
craftingTable.addShaped("quiver", <item:supplementaries:quiver>, [
    [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:feather>], 
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>], 
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:air>]]);



//夸克俩飞镖
craftingTable.remove(<item:quark:pickarang>);
craftingTable.addShaped("pickarang", <item:quark:pickarang>, [
    [<item:quark:diamond_heart>, <tag:items:minecraft:planks>, <item:stellariscraft:sandheart>], 
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:minecraft:planks>], 
    [<item:minecraft:air>, <item:minecraft:air>, <item:quark:diamond_heart>]]);
smithing.remove(<item:quark:flamerang>);
smithing.addRecipe("flamerang", <item:quark:flamerang>, <item:quark:pickarang>, <item:stellariscraft:netherrotingot>);


//切石机·盔甲+马铠循环利用
stoneCutter.addRecipe("armor2diamond", <item:minecraft:diamond>*1, <tag:items:forge:armor/diamond>);
stoneCutter.addRecipe("armor2iron", <item:minecraft:iron_ingot>*2, <tag:items:forge:armor/iron>);
stoneCutter.addRecipe("armor2gold", <item:minecraft:gold_ingot>*3, <tag:items:forge:armor/gold>);

stoneCutter.addRecipe("iron_horsearmor", <item:minecraft:iron_ingot>*2, <item:minecraft:iron_horse_armor>);
stoneCutter.addRecipe("gold_horsearmor", <item:minecraft:gold_ingot>*2, <item:minecraft:golden_horse_armor>);
stoneCutter.addRecipe("diamond_horsearmor", <item:minecraft:diamond>*2, <item:minecraft:diamond_horse_armor>);


//剑斧+钢锭改配方
blastFurnace.addRecipe("iron_block2steelingot", <item:stellariscraft:steelingot>, <item:minecraft:iron_block>, 30.0, 200);
craftingTable.addShaped("fightswordaxe", <item:stellariscraft:fightswordaxe>, [
    [<item:minecraft:diamond>, <item:stellariscraft:steelingot>, <item:stellariscraft:steelingot>], 
    [<item:minecraft:diamond>, <item:stellariscraft:steelingot>, <item:minecraft:air>], 
    [<tag:items:minecraft:planks>, <item:minecraft:air>,<item:minecraft:air>]]);

//紫黄晶套
blastFurnace.remove(<item:byg:ametrine_gems>);
smithing.addRecipe("ametrine_gems", <item:byg:ametrine_gems>*15, <item:byg:ametrine_block>, <item:amethysttoolsmod:amethyst_cluster_lv2>);


//末影合金
smithing.addRecipe("enderite_ingot", <item:cataclysm:enderite_ingot>*2, <item:cataclysm:ignitium_ingot>, <item:cataclysm:enderite_ingot>);


//腐金、死亡、凋零合金、白泣套和锭
craftingTable.remove(<item:stellariscraft:netherrotingot>);
craftingTable.addShaped("netherrotingot", <item:stellariscraft:netherrotingot>, [
    [<item:minecraft:copper_block>, <item:stellariscraft:blazestone>, <item:minecraft:copper_block>], 
    [<item:stellariscraft:blazestone>, <item:stellariscraft:netheritess>, <item:stellariscraft:blazestone>], 
    [<item:minecraft:copper_block>, <item:stellariscraft:rotsteelingot>,<item:minecraft:copper_block>]]);
smithing.remove(<item:stellariscraft:deadingot>);
smithing.addRecipe("deadingot", <item:stellariscraft:deadingot>, <item:stellariscraft:rotsteelingot>, <item:stellariscraft:diedscrap>);
smithing.addRecipe("witherite_ingot", <item:cataclysm:witherite_ingot>, <item:stellariscraft:rotsteelingot>, <item:stellariscraft:witherc>);
craftingTable.addShaped("witherite_block", <item:cataclysm:witherite_block>, [
    [<item:cataclysm:witherite_ingot>, <item:cataclysm:witherite_ingot>, <item:cataclysm:witherite_ingot>], 
    [<item:cataclysm:witherite_ingot>, <item:cataclysm:witherite_ingot>, <item:cataclysm:witherite_ingot>], 
    [<item:cataclysm:witherite_ingot>, <item:cataclysm:witherite_ingot>, <item:cataclysm:witherite_ingot>]]);
craftingTable.addShapeless("witherite_block2ingot", <item:cataclysm:witherite_ingot>*9 , [<item:cataclysm:witherite_block>]);






//打刀系列：打刀+魔刀
craftingTable.addShaped("uchigatana", <item:epicfight:uchigatana>, [
    [<item:minecraft:air>, <item:minecraft:netherite_scrap>, <item:stellariscraft:steelingot>], 
    [<item:minecraft:netherite_scrap>, <item:stellariscraft:steelingot>, <item:minecraft:air>], 
    [<tag:items:minecraft:planks>, <item:minecraft:air>,<item:minecraft:air>]]);



//腐金大剑+分型者
craftingTable.addShaped("rotgreatsword", <item:stellarisdlc:rotgreatsword>, [
    [<item:minecraft:air>, <item:stellariscraft:steelingot>, <item:stellariscraft:netherrotingot>], 
    [<item:stellariscraft:steelingot>, <item:stellariscraft:netherrotingot>, <item:stellariscraft:steelingot>], 
    [<item:stellarisdlc:balmung>, <item:stellariscraft:steelingot>,<item:minecraft:air>]]);

//炎葬+终极分型者
craftingTable.remove(<item:cataclysm:the_incinerator>);
smithing.addRecipe("the_incinerator", <item:cataclysm:the_incinerator>, <item:stellarisdlc:rotgreatsword>, <item:cataclysm:ignitium_block>);
smithing.addRecipe("final_fractal", <item:cataclysm:final_fractal>, <item:stellarisdlc:rotgreatsword>, <item:stellariscraft:w_knightingot>);



//炼金台和召唤台
craftingTable.addShaped("alchemy_table", <item:blue_skies:alchemy_table>, [
    [<item:minecraft:air>, <item:blue_skies:horizonite_ingot>, <item:minecraft:air>], 
    [<item:blue_skies:falsite_ingot>, <item:blue_skies:dusk_arc>, <item:blue_skies:falsite_ingot>], 
    [<item:blue_skies:lunar_bookshelf>, <item:blue_skies:lunar_bookshelf>,<item:blue_skies:lunar_bookshelf>]]);
craftingTable.addShaped("summoning_table", <item:blue_skies:summoning_table>, [
    [<item:minecraft:air>, <item:blue_skies:star_flare>, <item:minecraft:air>], 
    [<item:blue_skies:aquite>, <item:blue_skies:ethereal_arc>, <item:blue_skies:aquite>], 
    [<item:blue_skies:bluebright_bookshelf>, <item:blue_skies:bluebright_bookshelf>,<item:blue_skies:bluebright_bookshelf>]]);


//移除钥匙
craftingTable.remove(<item:stellariscraft:pkey>);
craftingTable.remove(<item:stellariscraft:mkey>);
craftingTable.remove(<item:stellariscraft:ukey>);

//一级钥匙
craftingTable.addShaped("pkey", <item:stellariscraft:pkey>, [
    [<item:stellariscraft:adgrain>, <item:minecraft:amethyst_shard>, <item:stellariscraft:adgrain>], 
    [<item:minecraft:amethyst_shard>, <item:ba_bt:guardian_eye_land>, <item:minecraft:amethyst_shard>], 
    [<item:stellariscraft:adgrain>, <item:minecraft:amethyst_shard>,<item:stellariscraft:adgrain>]]);

//二级钥匙
craftingTable.addShaped("mkey", <item:stellariscraft:mkey>, [
    [<item:stellariscraft:adventurespar>, <item:minecraft:diamond>, <item:stellariscraft:adventurespar>], 
    [<item:minecraft:diamond>, <item:ba_bt:guardian_eye_ocean>, <item:minecraft:diamond>], 
    [<item:stellariscraft:adventurespar>, <item:minecraft:diamond>,<item:stellariscraft:adventurespar>]]);

//三级钥匙
craftingTable.addShaped("ukey", <item:stellariscraft:ukey>, [
    [<item:stellariscraft:adventurespar>, <item:bosses_of_mass_destruction:obsidian_heart>, <item:stellariscraft:adventurespar>], 
    [<item:minecraft:end_crystal>, <item:ba_bt:guardian_eye_end>, <item:minecraft:end_crystal>], 
    [<item:stellariscraft:adventurespar>, <item:cataclysm:void_core>,<item:stellariscraft:adventurespar>]]);



//锻造、强化晶石
craftingTable.remove(<item:stellarisdlc:forgedspar>);
smithing.addRecipe("forgedspar", <item:stellarisdlc:forgedspar>*2, <item:minecraft:lapis_block>, <item:stellariscraft:adventurespar>);
craftingTable.addShapeless("adgrain2forgedspar", <item:stellariscraft:adventurespar> , [<item:stellariscraft:adgrain>,<item:stellariscraft:adgrain>,<item:stellariscraft:adgrain>,<item:stellariscraft:adgrain>]);


//强化晶石（要满级经验书合成）
craftingTable.addShaped("reinforcedspar",<item:stellarisdlc:reinforcedspar>*4,[
[<item:minecraft:lapis_block>,<item:minecraft:experience_bottle>,<item:minecraft:lapis_block>],
[<item:minecraft:experience_bottle>,<item:xpbook:xp_tome>.withTag({xp: 1395}).transformReplace(<item:xpbook:xp_tome>.withTag({xp: 1})),<item:minecraft:experience_bottle>],
[<item:minecraft:lapis_block>,<item:minecraft:experience_bottle>,<item:minecraft:lapis_block>]
]);
//经验书
craftingTable.remove(<item:xpbook:xp_tome>);
craftingTable.addShaped("xp_tome", <item:xpbook:xp_tome>, [
    [<item:stellariscraft:adgrain>, <item:minecraft:lapis_lazuli>, <item:stellariscraft:adgrain>], 
    [<item:minecraft:ender_pearl>, <item:minecraft:book>, <item:minecraft:ender_pearl>], 
    [<item:stellariscraft:adgrain>, <item:minecraft:lapis_lazuli>,<item:stellariscraft:adgrain>]]);
//附魔之瓶
craftingTable.addShaped("experience_bottle",<item:minecraft:experience_bottle>*16,[
[<item:minecraft:glass>,<item:stellariscraft:adventurespar>,<item:minecraft:glass>],
[<item:minecraft:lapis_lazuli>,<item:xpbook:xp_tome>.withTag({xp: 1395}).transformReplace(<item:xpbook:xp_tome>.withTag({xp: 900})),<item:minecraft:lapis_lazuli>],
[<item:minecraft:glass>,<item:stellariscraft:adventurespar>,<item:minecraft:glass>]
]);



//震星手链
smithing.addRecipe("starpendant", <item:stellarisdlc:starpendant>, <item:artifacts:shock_pendant>, <item:stellariscraft:starcore>);


//人偶、两种奶昔
craftingTable.remove(<item:dummmmmmy:target_dummy_placer>);
craftingTable.remove(<item:neapolitan:banana_milkshake>);
craftingTable.remove(<item:neapolitan:mint_milkshake>);


//waystones，boats传送石
craftingTable.removeByModid("waystones");

//采集台、抓钩
craftingTable.remove(<item:byg:foragers_table>);
craftingTable.remove(<item:alexsmobs:squid_grapple>);

//镰刀
craftingTable.remove(<item:omnis:ravaged_scythe>);
smithing.remove(<item:omnis:haunted_scythe>);

//钥匙刻字
/*craftingTable.addShaped("key", <item:dimdungeons:block_key_charger>, [
    [<item:minecraft:stone_bricks>, <item:minecraft:diamond>, <item:minecraft:stone_bricks>], 
    [<item:minecraft:diamond>, <item:minecraft:ender_eye>, <item:minecraft:diamond>], 
    [<item:minecraft:stone_bricks>, <item:minecraft:diamond>,<item:minecraft:stone_bricks>]]);
*/


//煎饼、禁用苹果派、鸸鹋
    craftingTable.remove(<item:supplementaries:pancake>);
    craftingTable.remove(<item:alexsmobs:emu_leggings>);

//墨囊
craftingTable.addShapeless("fish_to_ink", <item:minecraft:ink_sac> , [<tag:items:minecraft:fishes>,<item:minecraft:rotten_flesh>]);


//麻布袋
craftingTable.addShaped("sack", <item:supplementaries:sack>, [
    [<item:minecraft:white_wool>, <item:minecraft:string>, <item:minecraft:white_wool>], 
    [<item:minecraft:white_wool>, <item:minecraft:air>, <item:minecraft:white_wool>], 
    [<item:minecraft:white_wool>, <item:minecraft:white_wool>,<item:minecraft:white_wool>]]);


//肥料
craftingTable.remove(<item:farmersdelight:organic_compost>);
//craftingTable.remove(<item:immersive_weathering:mulch_block>);

//蚊子枪
craftingTable.remove(<item:alexsmobs:blood_sprayer>);
craftingTable.remove(<item:alexsmobs:hemolymph_blaster>);
craftingTable.addShaped("blood_sprayer", <item:alexsmobs:blood_sprayer>, [
    [<item:alexsmobs:blood_sac>, <item:alexsmobs:blood_sac>, <item:minecraft:air>], 
    [<item:stellariscraft:deadheart>, <item:miningmaster:kinetic_opal>, <item:alexsmobs:mosquito_proboscis>], 
    [<item:minecraft:nether_brick>, <item:minecraft:air>,<item:minecraft:air>]]);

//雨伞
craftingTable.removeByRegex(".*umbrella.*");
//卷轴合成
craftingTable.addShaped("warp_scroll", <item:waystones:warp_scroll> * 4, [
    [<item:minecraft:paper>, <item:minecraft:copper_ingot>, <item:minecraft:paper>], 
    [<item:minecraft:copper_ingot>, <item:stellariscraft:adgrain>, <item:minecraft:copper_ingot>], 
    [<item:minecraft:paper>, <item:minecraft:copper_ingot>,<item:minecraft:paper>]]);
//指南针
craftingTable.remove(<item:explorerscompass:explorerscompass>);
craftingTable.remove(<item:naturescompass:naturescompass>);
craftingTable.addShaped("explorerscompass", <item:explorerscompass:explorerscompass>, [
    [<item:minecraft:cracked_stone_bricks>, <item:stellariscraft:adventurespar>, <item:minecraft:cracked_stone_bricks>], 
    [<item:minecraft:cobweb>, <item:artifacts:universal_attractor>, <item:minecraft:cobweb>], 
    [<item:minecraft:cracked_stone_bricks>, <item:minecraft:cobweb>,<item:minecraft:cracked_stone_bricks>]]);

craftingTable.addShaped("naturescompass", <item:naturescompass:naturescompass>, [
    [<tag:items:minecraft:logs>, <item:stellariscraft:adventurespar>, <tag:items:minecraft:logs>], 
    [<tag:items:minecraft:saplings>, <item:artifacts:universal_attractor>, <tag:items:minecraft:saplings>], 
    [<tag:items:minecraft:logs>, <tag:items:minecraft:saplings>, <tag:items:minecraft:logs>]]);

//祛魔台
craftingTable.remove(<item:disenchanting:disenchanter>);
craftingTable.addShaped("disenchanter", <item:disenchanting:disenchanter>, [
    [<item:minecraft:air>, <item:minecraft:anvil>, <item:minecraft:air>], 
    [<item:stellariscraft:netherrotingot>, <item:minecraft:enchanting_table>, <item:stellariscraft:netherrotingot>], 
    [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>,<item:minecraft:crying_obsidian>]]);

craftingTable.remove(<item:toolleveling:tool_leveling_table>);
craftingTable.addShaped("tool_leveling_table", <item:toolleveling:tool_leveling_table>, [
    [<item:minecraft:air>, <item:cataclysm:witherite_ingot>, <item:minecraft:air>], 
    [<item:miningmaster:heart_rhodonite>, <item:minecraft:enchanting_table>, <item:miningmaster:heart_rhodonite>], 
    [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>,<item:minecraft:crying_obsidian>]]);

//对称
craftingTable.addShaped("symmetryspear", <item:stellarisdlc:symmetryspear>, [
    [<item:minecraft:air>, <item:minecraft:gold_block>, <item:amethysttoolsmod:amethyst_cluster_lv2>], 
    [<item:minecraft:gold_block>, <item:minecraft:amethyst_shard>, <item:minecraft:gold_block>], 
    [<item:amethysttoolsmod:amethyst_cluster_lv2>, <item:minecraft:gold_block>,<item:minecraft:air>]]);
smithing.addRecipe("ignitium_ingot", <item:cataclysm:ignitium_ingot>*2, <item:minecraft:netherite_ingot>, <item:cataclysm:ignitium_ingot>);
smithing.addRecipe("diamond", <item:minecraft:diamond>*3, <item:quark:diamond_heart>, <item:stellariscraft:imessence>);

//斧子，银龙，锻造台
craftingTable.addShaped("voidaxe", <item:stellariscraft:voidaxe>, [
    [<item:miningmaster:spirit_garnet>, <item:omnis:haunted_steel_ingot>, <item:omnis:haunted_steel_ingot>], 
    [<item:miningmaster:spirit_garnet>, <item:minecraft:stick>, <item:minecraft:air>], 
    [<item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:air>]]);
craftingTable.addShaped("flayer", <item:stellarisdlc:flayer>, [
    [<item:minecraft:air>, <item:quark:dragon_scale>, <item:miningmaster:power_pyrite>], 
    [<item:minecraft:air>, <item:minecraft:netherite_ingot>, <item:quark:dragon_scale>], 
    [<item:minecraft:netherite_ingot>, <item:minecraft:air>,<item:minecraft:air>]]);

//魔龙，水晶与附魔台
craftingTable.addShaped("deadheart", <item:stellariscraft:deadheart>, [
    [<item:minecraft:end_crystal>, <item:cataclysm:void_core>, <item:minecraft:end_crystal>], 
    [<item:quark:dragon_scale>, <item:ba_bt:guardian_eye_end>, <item:quark:dragon_scale>], 
    [<item:minecraft:end_crystal>, <item:cataclysm:void_core>,<item:minecraft:end_crystal>]]);


craftingTable.remove(<item:minecraft:enchanting_table>);
craftingTable.addShaped("enchanting_table", <item:minecraft:enchanting_table>, [
    [<item:minecraft:air>, <item:minecraft:book>, <item:minecraft:air>], 
    [<item:irons_spellbooks:arcane_ingot>, <item:stellariscraft:blazestone>, <item:irons_spellbooks:arcane_ingot>], 
    [<item:minecraft:obsidian>, <item:minecraft:obsidian>,<item:minecraft:obsidian>]]);
//附魔蛋
craftingTable.addShapeless("fried_egg", <item:incubation:fried_egg> , [<item:farmersdelight:fried_egg>]);




//下界之证——外壳
craftingTable.remove(<item:stellarisdlc:evidencenether_2>);
craftingTable.addShaped("evidencenether_2", <item:stellarisdlc:evidencenether_2>, [
    [<item:stellariscraft:adventurespar>, <item:minecraft:air>, <item:stellariscraft:adventurespar>], 
    [<item:minecraft:air>, <item:stellariscraft:netherrotingot>, <item:minecraft:air>], 
    [<item:minecraft:gold_block>, <item:minecraft:air>,<item:minecraft:gold_block>]]);

//下界之证——核心
craftingTable.addShaped("evidencenether_1", <item:stellarisdlc:evidencenether_1>, [
    [<item:minecraft:obsidian>, <item:minecraft:netherite_scrap>, <item:minecraft:obsidian>], 
    [<item:minecraft:netherite_scrap>, <item:ba_bt:guardian_eye_core>, <item:minecraft:netherite_scrap>], 
    [<item:minecraft:crying_obsidian>, <item:minecraft:netherite_scrap>,<item:minecraft:crying_obsidian>]]);

//蔚蓝之证——外壳
craftingTable.addShaped("evidencestar_2", <item:stellarisdlc:evidencestar_2>, [
    [<item:blue_skies:lunar_stonebrick>, <item:minecraft:air>, <item:blue_skies:turquoise_stonebrick>], 
    [<item:minecraft:air>, <item:cataclysm:witherite_ingot>, <item:minecraft:air>], 
    [<item:cataclysm:ignitium_ingot>, <item:minecraft:air>,<item:cataclysm:ignitium_ingot>]]);

//蔚蓝之证——核心
craftingTable.addShaped("evidencestar_1", <item:stellarisdlc:evidencestar_1>, [
    [<item:minecraft:wither_rose>, <item:minecraft:nether_star>, <item:minecraft:wither_rose>], 
    [<item:minecraft:chiseled_quartz_block>, <item:ba_bt:guardian_eye_nether>, <item:minecraft:chiseled_quartz_block>], 
    [<item:minecraft:wither_rose>, <item:minecraft:chiseled_quartz_block>,<item:minecraft:wither_rose>]]);

//日长玉块
smithing.addRecipe("sunstone_block", <item:blue_skies:sunstone_block>, <item:blue_skies:moonstone_block>, <item:blue_skies:horizonite_block>);

//末地之证——外壳
craftingTable.addShaped("evidenceskies_1", <item:stellarisdlc:evidenceskies_1>, [
    [<item:blue_skies:aquite_block>, <item:minecraft:air>, <item:blue_skies:horizonite_block>], 
    [<item:minecraft:air>, <item:blue_skies:charoite>, <item:minecraft:air>], 
    [<item:blue_skies:poison_arc>, <item:minecraft:air>,<item:blue_skies:nature_arc>]]);

//末地之证——核心
craftingTable.addShaped("evidenceskies_2", <item:stellarisdlc:evidenceskies_2>, [
    [<item:minecraft:air>, <item:blue_skies:aquite>, <item:minecraft:air>], 
    [<item:blue_skies:diopside_gem>, <item:stellariscraft:starcore>, <item:blue_skies:pyrope_gem>], 
    [<item:minecraft:air>, <item:blue_skies:horizonite_ingot>,<item:minecraft:air>]]);

//冒险之证——外壳
craftingTable.addShaped("evidenceadventure_2", <item:stellarisdlc:evidenceadventure_2>, [
    [<item:mowziesmobs:painted_acacia>, <item:minecraft:air>, <item:mowziesmobs:painted_acacia>], 
    [<item:minecraft:air>, <item:byg:ametrine_gems>, <item:minecraft:air>], 
    [<item:stellariscraft:steelingot>, <item:minecraft:air>,<item:stellariscraft:steelingot>]]);

//冒险之证——核心
craftingTable.addShaped("evidenceadventure_1", <item:stellarisdlc:evidenceadventure_1>, [
    [<item:stellariscraft:adventurespar>, <item:bosses_of_mass_destruction:void_thorn>, <item:stellariscraft:adventurespar>], 
    [<item:bosses_of_mass_destruction:ancient_anima>, <item:alexsmobs:void_worm_eye>, <item:bosses_of_mass_destruction:monolith_block>], 
    [<item:stellariscraft:adventurespar>, <item:blue_skies:infused_arc_sword>,<item:stellariscraft:adventurespar>]]);

//饰品核心
craftingTable.addShaped("exchangestonecore", <item:stellarisdlc:exchangestonecore>, [
    [<item:minecraft:air>, <item:stellariscraft:exchangestone>, <item:minecraft:air>], 
    [<item:stellariscraft:exchangestone>, <item:stellariscraft:adventurespar>, <item:stellariscraft:exchangestone>], 
    [<item:minecraft:air>, <item:stellariscraft:exchangestone>,<item:minecraft:air>]]);


smithing.addRecipe("superhealth", <item:stellariscraft:superhealth>, <item:miningmaster:heart_rhodonite>, <item:miningmaster:air_malachite>);

//bhc心之容器
craftingTable.remove(<item:bhc:relic_apple>);
craftingTable.addShaped("relic_apple", <item:bhc:relic_apple>, [
    [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>], 
    [<item:minecraft:emerald_block>, <item:minecraft:golden_apple>, <item:minecraft:emerald_block>], 
    [<item:minecraft:air>, <item:minecraft:diamond>,<item:minecraft:air>]]);

craftingTable.remove(<item:bhc:red_heart_canister>);
craftingTable.addShapeless("red_heart_canister", <item:bhc:red_heart_canister> , [<item:bhc:red_heart>,<item:bhc:relic_apple>,<item:omnis:ravaged_metal>,<item:bhc:canister>]);
craftingTable.remove(<item:bhc:yellow_heart_canister>);
craftingTable.addShapeless("yellow_heart_canister", <item:bhc:yellow_heart_canister> , [<item:bhc:yellow_heart>,<item:minecraft:enchanted_golden_apple>,<item:miningmaster:lucky_citrine>,<item:bhc:canister>]);
craftingTable.remove(<item:bhc:green_heart_canister>);
craftingTable.addShapeless("green_heart_canister", <item:bhc:green_heart_canister> , [<item:bhc:green_heart>,<item:bhc:wither_bone>,<item:miningmaster:spider_kunzite>,<item:bhc:canister>]);
craftingTable.remove(<item:bhc:blue_heart_canister>);
craftingTable.addShapeless("blue_heart_canister", <item:bhc:blue_heart_canister> , [<item:bhc:blue_heart>,<item:blue_skies:falsite_ingot>,<item:minecraft:shulker_shell>,<item:bhc:canister>]);



//bomb炸弹
craftingTable.remove(<item:supplementaries:bomb>);
craftingTable.addShaped("bomb", <item:supplementaries:bomb>, [
    [<item:minecraft:air>, <item:minecraft:magma_cream>, <item:minecraft:gunpowder>], 
    [<item:minecraft:magma_cream>, <item:minecraft:tnt>, <item:minecraft:magma_cream>], 
    [<item:minecraft:air>, <item:minecraft:magma_cream>,<item:minecraft:air>]]);

//omnis安可护符
craftingTable.addShaped("ankh_charm", <item:omnis:ankh_charm>, [
    [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>], 
    [<item:minecraft:leather>, <item:cataclysm:witherite_ingot>, <item:minecraft:leather>], 
    [<item:minecraft:air>, <item:omnis:haunted_steel_ingot>,<item:minecraft:air>]]);


//关刀 青龙偃月刀
craftingTable.addShaped("dragonfalchion", <item:stellarisdlc:dragonfalchion>, [
    [<item:minecraft:air>, <item:miningmaster:air_malachite>, <item:stellariscraft:netherrotingot>], 
    [<item:minecraft:air>, <item:stellariscraft:deadingot>, <item:minecraft:air>], 
    [<item:epicfight:netherite_spear>, <item:minecraft:air>,<item:minecraft:air>]]);

//凤翅镏金镗 凤枪
craftingTable.addShaped("phoenixspear", <item:stellarisdlc:phoenixspear>, [
    [<item:minecraft:air>, <item:stellariscraft:deadingot>, <item:cataclysm:ignitium_ingot>], 
    [<item:minecraft:air>, <item:cataclysm:monstrous_horn>, <item:stellariscraft:deadingot>], 
    [<item:epicfight:netherite_spear>, <item:minecraft:air>,<item:minecraft:air>]]);

craftingTable.remove(<item:crittersandcompanions:pearl_necklace_2>);
craftingTable.remove(<item:crittersandcompanions:pearl_necklace_3>);

//二级珍珠项链
craftingTable.addShaped("pearl_necklace_2", <item:crittersandcompanions:pearl_necklace_2>, [
    [<item:minecraft:air>, <item:crittersandcompanions:pearl>, <item:minecraft:air>], 
    [<item:crittersandcompanions:pearl>, <item:minecraft:air>, <item:crittersandcompanions:pearl>], 
    [<item:minecraft:air>, <item:crittersandcompanions:pearl_necklace_1>,<item:minecraft:air>]]);

//三级珍珠项链
craftingTable.addShaped("pearl_necklace_3", <item:crittersandcompanions:pearl_necklace_3>, [
    [<item:minecraft:air>, <item:crittersandcompanions:pearl>, <item:minecraft:air>], 
    [<item:crittersandcompanions:pearl>, <item:minecraft:air>, <item:crittersandcompanions:pearl>], 
    [<item:minecraft:air>, <item:crittersandcompanions:pearl_necklace_2>,<item:minecraft:air>]]);

//长剑系列
//胜利剑（原咖喱棒）+誓约剑
craftingTable.addShaped("saber", <item:stellarisdlc:saber>, [
    [<item:minecraft:air>, <item:stellariscraft:steelingot>, <item:byg:ametrine_gems>], 
    [<item:stellariscraft:steelingot>, <item:minecraft:heart_of_the_sea>, <item:stellariscraft:steelingot>], 
    [<item:epicfight:netherite_longsword>, <item:stellariscraft:steelingot>,<item:minecraft:air>]]);

//卧雪
craftingTable.addShaped("liesnow", <item:stellariscraft:liesnow>, [
    [<item:minecraft:air>, <item:blue_skies:aquite_block>, <item:blue_skies:falsite_ingot>], 
    [<item:blue_skies:aquite_block>, <item:blue_skies:star_flare>, <item:blue_skies:aquite_block>], 
    [<item:epicfight:netherite_longsword>, <item:blue_skies:aquite_block>,<item:minecraft:air>]]);

//已有龙蛋卷 修改
craftingTable.remove(<item:s33r_more_food:omelet>);

craftingTable.addShaped("omelet1", <item:s33r_more_food:omelet>*4, [
    [<item:minecraft:air>, <item:minecraft:dragon_egg>, <item:minecraft:air>], 
    [<item:minecraft:carrot>, <item:stellariscraft:starcore>, <item:minecraft:egg>], 
    [<item:minecraft:air>, <item:minecraft:milk_bucket>,<item:minecraft:air>]]);

//刷龙蛋卷
craftingTable.addShaped("omelet2", <item:s33r_more_food:omelet>*2, [
    [<item:minecraft:air>, <item:s33r_more_food:omelet>, <item:minecraft:air>], 
    [<item:farmersdelight:carrot_crate>, <item:stellariscraft:starcore>, <item:incubation:chicken_egg_crate>], 
    [<item:minecraft:air>, <item:s33r_more_food:caramel_milk>,<item:minecraft:air>]]);

craftingTable.addShaped("omelet3", <item:s33r_more_food:omelet>*2, [
    [<item:minecraft:air>, <item:s33r_more_food:omelet>, <item:minecraft:air>], 
    [<item:farmersdelight:carrot_crate>, <item:stellariscraft:starcore>, <item:incubation:chicken_egg_crate>], 
    [<item:minecraft:air>, <item:s33r_more_food:sweet_berry_milk>,<item:minecraft:air>]]);


//海王胸甲 修改
craftingTable.remove(<item:aquaculture:neptunium_chestplate>);

craftingTable.addShaped("neptunium_chestplate", <item:aquaculture:neptunium_chestplate>, [
    [<item:aquaculture:neptunium_ingot>, <item:minecraft:conduit>, <item:aquaculture:neptunium_ingot>], 
    [<item:aquaculture:neptunium_ingot>, <item:aquaculture:neptunium_ingot>, <item:aquaculture:neptunium_ingot>], 
    [<item:aquaculture:neptunium_ingot>, <item:aquaculture:neptunium_ingot>,<item:aquaculture:neptunium_ingot>]]);


//海王头盔 修改
craftingTable.remove(<item:aquaculture:neptunium_helmet>);

craftingTable.addShaped("neptunium_helmet", <item:aquaculture:neptunium_helmet>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
    [<item:aquaculture:neptunium_ingot>, <item:aquaculture:neptunium_ingot>, <item:aquaculture:neptunium_ingot>], 
    [<item:aquaculture:neptunium_ingot>, <item:ba_bt:guardian_eye_land>,<item:aquaculture:neptunium_ingot>]]);

//海王恩惠+高炉烧制
blastFurnace.addRecipe("neptunes_bounty2neptunium_ingot", <item:aquaculture:neptunium_ingot>*2, <item:aquaculture:neptunes_bounty>, 300.0, 1200);




//锤子
craftingTable.addShaped("groundcrackhammer", <item:stellarisdlc:groundcrackhammer>, [
    [<item:minecraft:air>, <item:stellariscraft:rotsteelingot>, <item:minecraft:air>], 
    [<item:minecraft:air>, <item:cataclysm:infernal_forge>, <item:stellariscraft:rotsteelingot>], 
    [<item:blue_skies:horizonite_ingot>, <item:minecraft:air>,<item:minecraft:air>]]);

//金鳞枪
craftingTable.addShaped("dragonspear", <item:stellarisdlc:dragonspear>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:byg:ametrine_gems>], 
    [<item:minecraft:air>, <item:cataclysm:enderite_ingot>, <item:minecraft:air>], 
    [<item:epicfight:netherite_spear>, <item:minecraft:air>,<item:minecraft:air>]]);






//三叉戟
craftingTable.remove(<item:minecraft:trident>);
craftingTable.addShaped("trident", <item:minecraft:trident>, [
    [<item:minecraft:air>, <item:bettertridents:trident_fragment>, <item:byg:ametrine_gems>], 
    [<item:minecraft:air>, <item:minecraft:prismarine_crystals>, <item:bettertridents:trident_fragment>], 
    [<item:minecraft:prismarine_crystals>, <item:minecraft:air>,<item:minecraft:air>]]);

//海绵戒指
craftingTable.addShaped("ring_sponge", <item:ringsofascension:ring_sponge>, [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>], 
    [<item:minecraft:iron_ingot>, <item:stellariscraft:exchangestone>, <item:minecraft:iron_ingot>], 
    [<item:minecraft:air>, <item:minecraft:sponge>,<item:minecraft:air>]]);
//烧海绵
furnace.remove(<item:minecraft:sponge>);
furnace.addRecipe("wet_sponge2sponge", <item:minecraft:sponge>, <item:minecraft:wet_sponge>, 1, 60);

//巨型金苹果
craftingTable.remove(<item:overweight_farming:overweight_golden_apple_block>);

craftingTable.addShaped("overweight_golden_apple_block", <item:overweight_farming:overweight_golden_apple_block>, [
    [<item:minecraft:golden_apple>, <item:minecraft:golden_apple>, <item:minecraft:golden_apple>], 
    [<item:minecraft:golden_apple>, <item:minecraft:gold_block>, <item:minecraft:golden_apple>], 
    [<item:minecraft:golden_apple>, <item:minecraft:golden_apple>,<item:minecraft:golden_apple>]]);

//合金堆叠 改
craftingTable.remove(<item:sophisticatedbackpacks:stack_upgrade_tier_4>);
smithing.addRecipe("stack_upgrade_tier_4", <item:sophisticatedbackpacks:stack_upgrade_tier_4>, <item:sophisticatedbackpacks:stack_upgrade_tier_3>, <item:minecraft:netherite_block>);


//脚蹼饰品 海豚恩惠
brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "goblintraders:dolphins_grace"}), <item:artifacts:flippers>, <item:minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}));
//禁用药水配方——原版抗性4+缓慢4+原版速度2+瞪羚角速度3+原版4分钟虚弱，alex灵魂汲取重写配方
brewing.removeRecipe(<potion:minecraft:turtle_master>, <item:minecraft:turtle_helmet>, <potion:minecraft:awkward>);
brewing.removeRecipe(<potion:minecraft:strong_slowness>, <item:minecraft:glowstone_dust>, <potion:minecraft:slowness>);
brewing.removeRecipe(<potion:minecraft:strong_swiftness>, <item:minecraft:glowstone_dust>, <potion:minecraft:swiftness>);
brewing.removeRecipe(<potion:alexsmobs:speed_iii>, <item:alexsmobs:gazelle_horn>, <potion:minecraft:strong_swiftness>);
brewing.removeRecipe(<potion:minecraft:long_weakness>, <item:minecraft:redstone>, <potion:minecraft:weakness>);

brewing.removeRecipe(<potion:alexsmobs:strong_soulsteal>, <item:minecraft:glowstone_dust>, <potion:alexsmobs:soulsteal>);
brewing.removeRecipe(<potion:alexsmobs:soulsteal>, <item:alexsmobs:soul_heart>, <potion:minecraft:awkward>);



//杜兰德尔
craftingTable.addShaped("durandal", <item:stellariscraft:durandal>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:stellariscraft:netherrotingot>], 
    [<item:stellariscraft:steelingot>, <item:stellariscraft:netherrotingot>, <item:minecraft:air>], 
    [<item:epicfight:netherite_longsword>, <item:stellariscraft:steelingot>,<item:minecraft:air>]]);

//绿心、蓝心加cd
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:bhc:green_heart>.matches(event.item) {
    player.cooldowns.addCooldown(<item:bhc:green_heart>, 200);
  }
 });
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:bhc:blue_heart>.matches(event.item) {
    player.cooldowns.addCooldown(<item:bhc:blue_heart>, 600);
  }
 });
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var entity = event.entityLiving;
  if entity.level.isClientSide {
    return;
  }  
    if <item:bhc:blue_heart>.matches(event.item) {
    var serverLevel = entity.level as ServerLevel;
    serverLevel.server.executeCommand("effect give @p[sort=nearest,limit=1] supplementaries:overencumbered 15", true);
  }
 });



//龙蛋卷cd
 CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:bhc:blue_heart>.matches(event.item) {
    player.cooldowns.addCooldown(<item:s33r_more_food:omelet>, 600);
  }
 });

 
//红眼药——图腾cd
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:minecraft:potion>.withTag({Potion: "stellarisdlc:redeye"}).matches(event.item) {
    player.cooldowns.addCooldown(<item:minecraft:totem_of_undying>, 600);
  }
 });
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:minecraft:potion>.withTag({Potion: "stellarisdlc:redeye2"}).matches(event.item) {
    player.cooldowns.addCooldown(<item:minecraft:totem_of_undying>, 900);
  }
 });

//瞬间生命药——cd
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:minecraft:potion>.withTag({Potion: "minecraft:healing"}).matches(event.item) {
    player.cooldowns.addCooldown(<item:minecraft:potion>.withTag({Potion: "minecraft:healing"}), 60);
  }
 });
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}).matches(event.item) {
    player.cooldowns.addCooldown(<item:minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}), 100);
  }
 });
CTEventManager.register<LivingEntityUseItemFinishEvent>((event) => {
  var living = event.entityLiving;
  if !(living is Player) {
    return;
  }
  var player = living as Player;
  if <item:minecraft:potion>.withTag({Potion: "goblintraders:powerful_instant_health"}).matches(event.item) {
    player.cooldowns.addCooldown(<item:minecraft:potion>.withTag({Potion: "goblintraders:powerful_instant_health"}), 140);
  }
 });

//云朵瓶-2分钟cd
CTEventManager.register<RightClickItemEvent>((event) => {
  var player = event.player;
    if <item:quark:bottled_cloud>.matches(player.getMainHandItem()) {
    player.cooldowns.addCooldown(<item:quark:bottled_cloud>, 1200);
    print("On Cooldown!");
  }
 });


//红眼药+绽放——配方
brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "stellarisdlc:redeye"}), <item:cataclysm:witherite_ingot>, <item:minecraft:potion>.withTag({Potion: "epicfight:blooming"}));
brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "stellarisdlc:redeye2"}), <item:stellariscraft:blacknetherstar>, <item:minecraft:potion>.withTag({Potion: "stellarisdlc:redeye"}));
brewing.removeRecipe(<potion:epicfight:blooming>, <item:minecraft:amethyst_shard>, <potion:minecraft:regeneration>);
brewing.addRecipe(<item:minecraft:potion>.withTag({Potion: "epicfight:blooming"}), <item:miningmaster:heart_rhodonite>, <item:minecraft:potion>.withTag({Potion: "minecraft:regeneration"}));



 //挖矿大师
 mods.jei.JEI.addDescription(<item:miningmaster:fire_ruby>, "通过锻造台与对应的物品合成可以获得火矢、火焰附加、火焰保护、冶炼厂。（冶炼优先级低于换冶炼厂）(炉心傀儡掉落)");
 mods.jei.JEI.addDescription(<item:miningmaster:ice_sapphire>, "通过锻造台与对应的物品合成可以获得冰霜行者、霜冻、冰雪无阻。（森白影魔掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:spirit_garnet>, "通过锻造台与对应的物品合成可以获得荆棘、忠诚、多重射击。（狂沙之枪，金焰神王掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:haste_peridot>, "通过锻造台与对应的物品合成可以获得效率、饵钓、快速装填。（大地傀儡掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:haste_peridot_block>, "通过锻造台与对应的物品合成可以获得连锁采集。");
 mods.jei.JEI.addDescription(<item:miningmaster:lucky_citrine>, "通过锻造台与对应的物品合成可以获得时运、海之眷顾、抢夺、启蒙、收获者。（狂沙之枪，太阳神鸟掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:dive_aquamarine>, "通过锻造台与对应的物品合成可以获得水下速掘，水之恩惠、激流、深海探索者、海之眷顾。（海洋傀儡掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:divine_beryl>, "通过锻造台与对应的物品合成可以获得引雷、横扫之刃。（森白影魔掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:spider_kunzite>, "通过锻造台与对应的物品合成可以获得节肢杀手、精准采集。（赤焰军团掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:unbreaking_iolite>, "通过锻造台与对应的物品合成可以获得耐久。（杀戮将军掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:unbreaking_iolite_block>, "通过锻造台与对应的物品合成可以获得经验修补。");
 mods.jei.JEI.addDescription(<item:miningmaster:power_pyrite>, "通过锻造台与对应的物品合成可以获得锋利、力量、穿刺、碎石。（杀戮将军，下界傀儡掉落）");
 mods.jei.JEI.addDescription(<item:miningmaster:kinetic_opal>, "通过锻造台与对应的物品合成可以获得爆炸保护、击退、冲击。（金焰神王掉落）");
 //额外附魔
 mods.jei.JEI.addDescription(<item:stellariscraft:rotstone>, "通过锻造台与对应的物品合成可以获得吸血鬼诅咒。");
 mods.jei.JEI.addDescription(<item:minecraft:totem_of_undying>, "通过锻造台与对应的物品合成可以获得魔法保护、厌世。");
 mods.jei.JEI.addDescription(<item:blue_skies:glowing_poison_stone>, "通过锻造台与对应的物品合成可以获得毒害诅咒。");



//禁用海龟头（抗性3以上的药水）
craftingTable.remove(<item:minecraft:turtle_helmet>);

//下沉护符
craftingTable.addShaped("xiachenghufu",<item:artifacts:charm_of_sinking>,[
[<item:minecraft:air>,<item:minecraft:iron_ingot>,<item:minecraft:air>],
[<item:minecraft:iron_ingot>,<item:stellariscraft:exchangestone>,<item:minecraft:iron_ingot>],
[<item:minecraft:air>,<item:minecraft:obsidian>,<item:minecraft:air>]
]);

//震颤吊坠
craftingTable.addShaped("zhenchandiaozhui",<item:artifacts:shock_pendant>,[
[<item:minecraft:air>,<item:minecraft:iron_ingot>,<item:minecraft:air>],
[<item:minecraft:iron_ingot>,<item:stellariscraft:exchangestone>,<item:minecraft:iron_ingot>],
[<item:minecraft:air>,<item:minecraft:lightning_rod>,<item:minecraft:air>]
]);

//荆棘吊坠
craftingTable.addShaped("jingjidiaozhui",<item:artifacts:thorn_pendant>,[
[<item:minecraft:air>,<item:minecraft:iron_ingot>,<item:minecraft:air>],
[<item:minecraft:iron_ingot>,<item:stellariscraft:exchangestone>,<item:minecraft:iron_ingot>],
[<item:minecraft:air>,<item:minecraft:cactus>,<item:minecraft:air>]
]);

//烈焰吊坠
craftingTable.addShaped("lieyandiaozhui",<item:artifacts:flame_pendant>,[
[<item:minecraft:air>,<item:minecraft:iron_ingot>,<item:minecraft:air>],
[<item:minecraft:iron_ingot>,<item:stellariscraft:exchangestone>,<item:minecraft:iron_ingot>],
[<item:minecraft:air>,<item:miningmaster:fire_ruby>,<item:minecraft:air>]
]);

//恐慌项链
craftingTable.addShaped("konghuangxianglian",<item:artifacts:panic_necklace>,[
[<item:minecraft:air>,<item:minecraft:iron_ingot>,<item:minecraft:air>],
[<item:minecraft:iron_ingot>,<item:stellariscraft:exchangestone>,<item:minecraft:iron_ingot>],
[<item:minecraft:air>,<item:ringsofascension:ring_speed>,<item:minecraft:air>]
]);

//十字项链
craftingTable.addShaped("shizixianglian",<item:artifacts:cross_necklace>,[
[<item:minecraft:air>,<item:minecraft:iron_ingot>,<item:minecraft:air>],
[<item:minecraft:iron_ingot>,<item:stellariscraft:exchangestone>,<item:minecraft:iron_ingot>],
[<item:minecraft:air>,<item:stellariscraft:rotstone>,<item:minecraft:air>]
]);

//盾牌
//焰魔盾
craftingTable.remove(<item:cataclysm:bulwark_of_the_flame>);
craftingTable.addShaped("bulwark_of_the_flame",<item:cataclysm:bulwark_of_the_flame>,[
[<item:minecraft:nether_brick>,<item:cataclysm:ignitium_ingot>,<item:minecraft:nether_brick>],
[<item:minecraft:blaze_rod>,<item:shieldexex:netherite_tower_shield>,<item:minecraft:blaze_rod>],
[<item:minecraft:nether_brick>,<item:cataclysm:ignitium_ingot>,<item:minecraft:nether_brick>]
]);





//各大遗迹地图合成（数据包）
craftingTable.addShaped("aviary",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/aviary",id: "minecraft:barrel"},display: {Name: "{\"text\":\"末地——三只小鸟\"}"}}),[
[<tag:items:minecraft:planks>,<item:byg:ametrine_block>,<tag:items:minecraft:planks>],
[<item:stellariscraft:adventurespar>,<item:stellarisdlc:adventure_scroll>,<item:stellariscraft:adventurespar>],
[<tag:items:minecraft:planks>,<item:cataclysm:void_lantern_block>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("burning_arena",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/burning_arena",id: "minecraft:barrel"},display: {Name: "{\"text\":\"下界——焰魔决斗场\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:netherite_scrap>,<tag:items:minecraft:planks>],
[<item:minecraft:blaze_powder>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:blaze_powder>],
[<tag:items:minecraft:planks>,<item:minecraft:netherite_scrap>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("coliseum",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/coliseum",id: "minecraft:barrel"},display: {Name: "{\"text\":\"主世界——斗兽场（极远）\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:elytra>,<tag:items:minecraft:planks>],
[<item:stellariscraft:adventurespar>,<item:stellarisdlc:adventure_scroll>,<item:stellariscraft:adventurespar>],
[<tag:items:minecraft:planks>,<item:stellariscraft:adventurespar>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("end_tower",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/end_tower",id: "minecraft:barrel"},display: {Name: "{\"text\":\"战斗高塔——末地\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:end_crystal>,<tag:items:minecraft:planks>],
[<item:minecraft:ender_eye>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:ender_eye>],
[<tag:items:minecraft:planks>,<item:minecraft:end_crystal>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("foundry",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/foundry",id: "minecraft:barrel"},display: {Name: "{\"text\":\"主世界地下——铸造厂\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:diamond>,<tag:items:minecraft:planks>],
[<item:stellariscraft:adventurespar>,<item:stellarisdlc:adventure_scroll>,<item:stellariscraft:adventurespar>],
[<tag:items:minecraft:planks>,<item:minecraft:netherite_ingot>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("frostmaw_spawn",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/frostmaw_spawn",id: "minecraft:barrel"},display: {Name: "{\"text\":\"冰原——霜冻巨兽\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:packed_ice>,<tag:items:minecraft:planks>],
[<item:minecraft:snow_block>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:snow_block>],
[<tag:items:minecraft:planks>,<item:minecraft:packed_ice>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("gatekeeper_house_mountain",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/gatekeeper_house_mountain",id: "minecraft:barrel"},display: {Name: "{\"text\":\"蔚蓝守门人——山地\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:emerald>,<tag:items:minecraft:planks>],
[<item:minecraft:emerald>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:emerald>],
[<tag:items:minecraft:planks>,<item:minecraft:stone>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("gatekeeper_house_plains",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/gatekeeper_house_plains",id: "minecraft:barrel"},display: {Name: "{\"text\":\"蔚蓝守门人——平原\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:emerald>,<tag:items:minecraft:planks>],
[<item:minecraft:emerald>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:emerald>],
[<tag:items:minecraft:planks>,<item:minecraft:grass_block>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("gatekeeper_house_snowy",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/gatekeeper_house_snowy",id: "minecraft:barrel"},display: {Name: "{\"text\":\"蔚蓝守门人——雪地\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:emerald>,<tag:items:minecraft:planks>],
[<item:minecraft:emerald>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:emerald>],
[<tag:items:minecraft:planks>,<item:minecraft:snow_block>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("geocentric_tower",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/core_tower",id: "minecraft:barrel"},display: {Name: "{\"text\":\"战斗高塔——炉心\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:diamond>,<tag:items:minecraft:planks>],
[<item:minecraft:magma_block>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:magma_block>],
[<tag:items:minecraft:planks>,<item:minecraft:magma_block>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("heavenly_challenger",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/heavenly_challenger",id: "minecraft:barrel"},display: {Name: "{\"text\":\"天空——天堂挑战者\"}"}}),[
[<tag:items:minecraft:planks>,<item:stellariscraft:adventurespar>,<tag:items:minecraft:planks>],
[<item:minecraft:phantom_membrane>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:phantom_membrane>],
[<tag:items:minecraft:planks>,<item:stellariscraft:adventurespar>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("keep_kayra",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/keep_kayra",id: "minecraft:barrel"},display: {Name: "{\"text\":\"沼泽/沙漠/恶地——创世神殿（最远）\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:vine>,<tag:items:minecraft:planks>],
[<item:minecraft:vine>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:vine>],
[<tag:items:minecraft:planks>,<item:minecraft:vine>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("mushroom",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/mushroom",id: "minecraft:barrel"},display: {Name: "{\"text\":\"蘑菇岛——蘑孢灵\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:red_mushroom_block>,<tag:items:minecraft:planks>],
[<item:minecraft:brown_mushroom_block>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:brown_mushroom_block>],
[<tag:items:minecraft:planks>,<item:minecraft:mushroom_stem>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("nether_tower",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/nether_tower",id: "minecraft:barrel"},display: {Name: "{\"text\":\"战斗高塔——下界\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:lava_bucket>,<tag:items:minecraft:planks>],
[<item:minecraft:crying_obsidian>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:crying_obsidian>],
[<tag:items:minecraft:planks>,<item:minecraft:obsidian>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("shiraz_palace",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/shiraz_palace",id: "minecraft:barrel"},display: {Name: "{\"text\":\"沙漠——繁花宫殿（最远）\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:sandstone>,<tag:items:minecraft:planks>],
[<item:minecraft:sandstone>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:sandstone>],
[<tag:items:minecraft:planks>,<item:minecraft:sandstone>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("soul_black_smith",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/soul_black_smith",id: "minecraft:barrel"},display: {Name: "{\"text\":\"下界合金巨兽\"}"}}),[
[<tag:items:minecraft:planks>,<item:minecraft:netherite_scrap>,<tag:items:minecraft:planks>],
[<item:minecraft:lava_bucket>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:lava_bucket>],
[<tag:items:minecraft:planks>,<item:minecraft:redstone_block>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("umvuthana_grove",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/umvuthana_grove",id: "minecraft:barrel"},display: {Name: "{\"text\":\"主世界——太阳神鸟\"}"}}),[
[<tag:items:minecraft:planks>,<item:stellariscraft:adgrain>,<tag:items:minecraft:planks>],
[<item:stellariscraft:adgrain>,<item:stellarisdlc:adventure_scroll>,<item:stellariscraft:adgrain>],
[<tag:items:minecraft:planks>,<item:minecraft:campfire>,<tag:items:minecraft:planks>]
]);

craftingTable.addShaped("wrought_chamber",<item:minecraft:barrel>.withTag({BlockEntityTag: {LootTable: "stellariscraft:chests/maps/wrought_chamber",id: "minecraft:barrel"},display: {Name: "{\"text\":\"主世界——钢铁守护者\"}"}}),[
[<tag:items:minecraft:planks>,<item:stellariscraft:adgrain>,<tag:items:minecraft:planks>],
[<item:minecraft:iron_ingot>,<item:stellarisdlc:adventure_scroll>,<item:minecraft:iron_ingot>],
[<tag:items:minecraft:planks>,<item:stellariscraft:steelingot>,<tag:items:minecraft:planks>]
]);

//传送石，传送石碑配方
smithing.addRecipe("warp_stone", <item:waystones:warp_stone>, <item:stellariscraft:adventurespar>, <item:minecraft:ender_eye>);
smithing.addRecipe("waystone", <item:waystones:waystone>, <item:supplementaries:pedestal>, <item:waystones:warp_stone>);

//移除恶魂之泪配方
craftingTable.remove(<item:minecraft:ghast_tear>);

//新增恶魂之泪配方
craftingTable.addShaped("ghast_tear", <item:minecraft:ghast_tear>, [
    [<item:minecraft:air>,<item:minecraft:rotten_flesh>, <item:minecraft:air>], 
    [<item:minecraft:rotten_flesh>, <item:minecraft:bone>, <item:minecraft:rotten_flesh>], 
    [<item:minecraft:air>,<item:minecraft:magma_block>, <item:minecraft:air>]]);

//禁用acg配方
craftingTable.removeByModid("epicacg");


