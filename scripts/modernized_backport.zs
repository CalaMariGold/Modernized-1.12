/* 
    Modernized 1.12 - Modernized Backports Script
    This script is enabled by default!
    Contains backports of modern vanilla features
    Also contains some improvements for mod compatibility

*/

#modloaded oe quark
#loader crafttweaker reloadable
import crafttweaker.item.IItemStack;


// === Oceanic Expanse ===
recipes.removeByRecipeName("oe:palm_planks");
recipes.removeByRecipeName("oe:palm_wood");
recipes.addShapeless(<oe:palm_log>, [<oe:palm_wood>]);
furnace.setFuel(<oe:palm_boat>, 400);
furnace.setFuel(<oe:palm_sapling>, 100);

// Make OE tropical blue slime compatible with vanilla slime in crafting recipes
<ore:slimeball>.add(<oe:blue_slime_ball>);
<ore:blockSlime>.add(<oe:blue_slime_block>);

// Recreate the vanilla slime block recipe to work with any slimeball type
recipes.removeByRecipeName("minecraft:slime");
recipes.addShaped(<minecraft:slime>, [
    [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
    [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
    [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>]
]);



// === Quark ===
// Implement modern-style bark block crafting (3 bark from 4 logs)
recipes.removeByRecipeName("quark:bark");
recipes.removeByRegex("quark:bark_\\d");
for i in 0 to 6 {
    var bark = <quark:bark>.definition.makeStack(i);
    var log = i < 4 
        ? <minecraft:log>.definition.makeStack(i % 4)
        : <minecraft:log2>.definition.makeStack(i % 4);
    recipes.addShaped(bark * 3, [
        [log, log],
        [log, log]
    ]);
}

// Makes Bark blocks from Quark be recognized as wooden logs
// This mimics 1.13+ behavior where bark blocks are part of the log tag
// Charcoal should also support log oreDict
<ore:logWood>.add(<quark:bark:*>);
furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<minecraft:coal:1>, <ore:logWood>, 0.15);



// === Deeper Depths ===
// Adds candle crafting
recipes.addShaped(<deeperdepths:candle>, [
    [<ore:string>],
    [<futuremc:honeycomb>]
]);