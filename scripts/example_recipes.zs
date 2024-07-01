import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.jei.JEI;


// TO BE ORGANIZED AND EXPANDED!



// Removing items via regex
/** 
var hoesAll = itemUtils.getItemsByRegexRegistryName(":*_hoe$") as IItemStack[];
for hoe in hoesAll{
    JEI.removeAndHide(hoe);
}
*/



// Removing items via array
/**
val redstoneAdjacent as IItemStack[] = [<minecraft:redstone>, <minecraft:redstone_block>, <minecraft:redstone_torch>, <minecraft:repeater>, <minecraft:comparator>, <minecraft:redstone_lamp>, <minecraft:activator_rail>, <minecraft:piston>, <minecraft:sticky_piston>, <minecraft:observer>, <minecraft:golden_rail>, <minecraft:detector_rail>, <minecraft:dropper>, <minecraft:dispenser>, <minecraft:clock>, <minecraft:compass>, <minecraft:noteblock>];

for item in redstoneAdjacent{
    recipes.remove(item);
}
*/