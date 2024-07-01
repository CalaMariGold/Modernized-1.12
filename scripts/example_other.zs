import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.jei.JEI;

// TO BE ORGANIZED AND EXPANDED!


// JEI
// JEI.hideCategory("minecraft.anvil");



// Item Names, Tooltips, and Descriptions
/** 
<minecraft:dirt>.displayName = "§cNot Dirt";
<minecraft:dirt>.addTooltip("§3I Can't Believe It's Not Dirt!");
<minecraft:dirt>.removeTooltip("The exact text of a tooltip that shouldn't exist.");
JEI.addDescription(<minecraft:dirt>,"You thought it was dirt, but it was me! Not Dirt!");
*/



// Manually set the hardness of a block (time it takes to mine)
// Harvest level can be changed in materialchanger.cfg
/**
val stone as IItemStack = <minecraft:stone:*>;
stone.hardness = 5.5;
*/