#loader crafttweaker reloadable // Allows this script to be reloaded in-game with /ct reload
// Make neccessary imports. Many common used imports have been included here.
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityItem;
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.world.IWorldInfo;
import crafttweaker.event.PlayerAdvancementEvent;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.PlayerLeftClickBlockEvent;

// TO BE ORGANIZED AND EXPANDED!


// Do something when a player logs in for the first time. Only occurs on first time world join
/** 
events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
	if (isNull(event.player.data.firstTimeJoin)) {
        server.commandManager.executeCommand(server, "say " + event.player.name + " joined for the first time!");
        event.player.update({firstTimeJoin: true});
    }
});
*/




// Do something when the player respawns
// Gives a Quark Soul Compass with Curse of Vanishing on respawn
/** 
events.onPlayerRespawn(function(event as crafttweaker.event.PlayerRespawnEvent){
    if(!event.entity.world.isRemote()){
        event.player.give(<quark:soul_compass>.withTag({ench:[{id:71,lvl:1}]}));
    }
});
*/


// Do something after X (400) ticks
/**
event.player.world.catenation()
.run(function(world, context) {
    context.data = world.time;
})
.sleep(400)
.then(function(world, context) {
    server.commandManager.executeCommand(server, "say 400 ticks passed!");
})
.start();
*/



// Do something when the player right clicks an item
/**
static dirt as IItemStack = <minecraft:dirt>;
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){
    if(!event.world.isRemote()){
        val itemStack = event.item as IItemStack;     
        if ((itemStack.definition.id).matches(dirt.definition.id)) {  
            server.commandManager.executeCommand(server, "say Dirt has been right clicked!");
        }  
    }
});
*/


// Do something ONCE when the player left clicks a specific block with specific items
/** 
static woodPick as IItemStack = <minecraft:wooden_pickaxe:*>;
static stonePick as IItemStack = <minecraft:stone_pickaxe:*>;
events.onPlayerLeftClickBlock(function(event as crafttweaker.event.PlayerLeftClickBlockEvent){
    if(!event.entity.world.isRemote()){
        if(isNull(event.player.data.leftClickedBlock)){       
            val playerHoldItemStack = event.player.currentItem as IItemStack; 
            if(event.block.displayName == "Diamond Ore"){
                if(!isNull(playerHoldItemStack)){
                    if (woodPick.matches(playerHoldItemStack) || stonePick.matches(playerHoldItemStack)) {  
                        event.player.sendChat("§4Your " + event.player.currentItem.displayName + " isn't strong enough to break diamond ore!");
                        Commands.call("playsound quark:item.soul_bead.curse player @s ~ ~ ~ 5.0 1.0 1.0", event.player, event.world, true, true);
                    }
                }
                event.player.update({leftClickedBlock: true});
            }
        }
    }
});
*/




// Add a Game Stage to all players when an entity dies
/**
events.onEntityLivingDeath(function(event as crafttweaker.event.EntityLivingDeathEvent){
    if(!event.entity.world.isRemote()){
        if(event.entity.definition.id == <entity:minecraft:wither>.id)
        {
            server.commandManager.executeCommand(server, "gamestage silentadd @a killedWither");
        }
    }
});
*/