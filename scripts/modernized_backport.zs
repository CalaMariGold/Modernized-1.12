#modloaded oe quark
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;


//Makes Barks and Logs behave like 1.13+... Almost
    <ore:logWood>.add(<quark:bark:*>);
    //Vanilla
        furnace.remove(<minecraft:coal:1>);
        furnace.addRecipe(<minecraft:coal:1>, <ore:logWood>, 0.15);
    //Done!
    
    //Oceanic Expanse
        recipes.removeByRecipeName("oe:palm_planks");
        recipes.removeByRecipeName("oe:palm_wood");
        recipes.addShapeless(<oe:palm_log>, [<oe:palm_wood>]);
        furnace.setFuel(<oe:palm_boat>, 400);
        furnace.setFuel(<oe:palm_sapling>, 100);
    //Done!

    //Quark
        recipes.removeByRecipeName("quark:bark");
        recipes.removeByRegex("quark:bark_\\d");
        for i in 0 to 6{
            var bark as IItemStack = <item:quark:bark:${i}>;
            var log as IItemStack = <item:minecraft:log${(i<4)?"":"2"}:${i%4}>;
            recipes.addShaped(bark * 3, [
                [log, log],
                [log, log]
            ]);
        }
    //Done!
//Done!

//Deeper Depths candle craft
    recipes.addShaped(<deeperdepths:candle>, [
        [<ore:string>],
        [<futuremc:honeycomb>]
    ]);

//OE tropical slime is slime
    <ore:slimeball>.add(<oe:blue_slime_ball>);
    <ore:blockSlime>.add(<oe:blue_slime_block>);
    recipes.removeByRecipeName("minecraft:slime");
    recipes.addShaped(<minecraft:slime>, [
        [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
        [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
        [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>]
    ]);
//Done!