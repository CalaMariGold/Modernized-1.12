/* 
    Modernized 1.12 - Mob Drops Script
    Contains backport of Drowned loot table (enabled by default)
    Also contains disabled examples of how to add more rare mob loot.

*/


#modloaded loottweaker
import loottweaker.Conditions;
import loottweaker.LootTweaker.getTable as Table;

var pool as loottweaker.LootPool;


// Replaces drowned's gold drop with copper
// Enabled by default
if (true){
    // Accesses assets/oe/loot_tables/entities/drowned.json. That is a loot table 
    //https://github.com/SirSquidly/Oceanic-Expanse/blob/master/src/main/resources/assets/oe/loot_tables/entities/drowned.json
    val drowned = Table("oe:entities/drowned");
    val drowned_captain = Table("oe:entities/drowned_captain");

    pool = drowned.getPool("drowned_rare_drop");
    // We are now in the second pool, the one containing the gold ingot
    // First, we want to increase the chance of the pool getting rolled, as copper loot in vanilla is 11%, not 5%
    // We can see in the github that this is a Condition
    // LootTweaker doesn't let us remove some conditions, so we clear them and then add back the ones we want
    // Conditions list : https://loottweaker-docs.readthedocs.io/en/latest/type-docs/conditions.html 
    pool.clearConditions();
    pool.addConditions([
        Conditions.killedByPlayer(), //As per vanilla
        Conditions.randomChanceWithLooting(0.11, 0.02) //Base and per-level increase
    ]);
    // Now, we only need to swap the item
    // You can see that is in an item entry
    // As our target entry doesn't have an entryName, we must clear all and readd the useful ones
    pool.clearEntries();
    // No need for fanciness, we can see the original entry isn't complicated - using oreDict in case Deeper Depths is removed
    pool.addItemEntry(<ore:ingotCopper>.firstItem, 1);


    // Captain is midly different, but much the same
    // This is what it would look like in a script
    pool = Table("oe:entities/drowned_captain").getPool("drowned_rare_drop");
    pool.clearConditions();
    pool.clearEntries();
    pool.addConditions([
        Conditions.killedByPlayer(),
        Conditions.randomChanceWithLooting(0.22, 0.04)
    ]);
    pool.addItemEntry(<ore:ingotCopper>.firstItem, 1);

    // You can see the new loot table in minecraft/dumps/loot_tables after running /ct loottables all
}


// Adds more rare monster loot. 
// Disabled by default
if (false){ // Husks drop gold
    // Replacing item entry
    pool = Table("minecraft:entities/husk").getPool("pool1");
    // entryName is already a thing. We can therefore just remove it
    pool.removeEntry("minecraft:iron_ingot");
    pool.addItemEntry(<minecraft:gold_ingot>,1);
}
if (false){ //Endermen drop biotite
    // Adding an entire pool
    pool = Table("minecraft:entities/enderman").addPool("biotite", 1, 1, 0 ,0); //name, min, max, minBonus, maxBonus
    pool.addConditions([
        Conditions.killedByPlayer(),
        Conditions.randomChanceWithLooting(0.11, 0.02)
    ]);
    pool.addItemEntry(<quark:biotite>, 1);
}