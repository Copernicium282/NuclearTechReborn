#priority 2
#modloaded avaritia

import mods.nuclearcraft.BasicRecipeHandler;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;
import crafttweaker.util.Math;


//Machine Crafting Recipe

mods.nuclearcraft.Assembler.addRecipe(
    <avaritia:neutron_collector>, <nuclearcraft:decay_hastener>, <nuclearcraft:part:10>, <nuclearcraft:machine_interface>, <nuclearcraft:decay_neutron_collector>);

//Adding Recipes

var DecayNeutronCollector = BasicRecipeHandler.get("decay_neutron_collector");
DecayNeutronCollector.addRecipe([<nuclearcraft:fission_dust:1>, <nuclearcraft:dust:9>, <nuclearcraft:dust:2>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 150.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:fission_dust:2>, <nuclearcraft:dust:9>, <nuclearcraft:dust:2>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 85.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:fission_dust:3>, <nuclearcraft:dust:9>, <nuclearcraft:pellet_thorium>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 90.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:fission_dust:4>, <nuclearcraft:dust:9>, <nuclearcraft:uranium>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 75.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:fission_dust:5>, <nuclearcraft:dust:9>, <nuclearcraft:dust:10>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 100.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:uranium>, <nuclearcraft:dust:9>, <nuclearcraft:fission_dust>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 375.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:uranium:2>, <nuclearcraft:dust:9>, <nuclearcraft:fission_dust>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 375.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:uranium:3>, <nuclearcraft:dust:9>, <nuclearcraft:fission_dust>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 375.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:neptunium>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 370.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:neptunium:2>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 370.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:neptunium:3>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 370.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:5>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:5>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 235.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:6>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:6>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 235.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:7>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:7>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 235.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:8>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:8>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 235.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:9>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:9>, <nuclearcraft:dust:8>, <avaritia:resource:2>*2, 235.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:10>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:5>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 95.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:11>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:6>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 95.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:12>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:7>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 95.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:13>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:8>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 95.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:14>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:9>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 95.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:15>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:10>, <nuclearcraft:dust:8>, <avaritia:resource:2>*1, 505.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:16>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:11>, <nuclearcraft:dust:8>, <avaritia:resource:2>*1, 505.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:17>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:12>, <nuclearcraft:dust:8>, <avaritia:resource:2>*1, 505.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:18>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:13>, <nuclearcraft:dust:8>, <avaritia:resource:2>*1, 505.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:plutonium:19>, <nuclearcraft:dust:9>, <nuclearcraft:uranium:14>, <nuclearcraft:dust:8>, <avaritia:resource:2>*1, 505.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:5>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 130.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:1>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:6>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 130.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:2>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:7>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 130.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:3>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:8>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 130.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:4>, <nuclearcraft:dust:9>, <nuclearcraft:neptunium:9>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 130.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:5>, <nuclearcraft:dust:9>, <nuclearcraft:dust:2>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 115.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:7>, <nuclearcraft:dust:9>, <nuclearcraft:dust:2>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 115.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:8>, <nuclearcraft:dust:9>, <nuclearcraft:dust:2>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 115.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:10>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:5>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 185.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:11>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:6>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 185.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:12>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:7>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 185.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:13>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:8>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 185.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:americium:14>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:9>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 185.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:5>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 100.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:1>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:6>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 100.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:2>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:7>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 100.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:3>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:8>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 100.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:4>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:9>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 100.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:5>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:10>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 190.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:6>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:11>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 190.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:7>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:12>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 190.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:8>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:13>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 190.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:9>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:14>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 190.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:10>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:15>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 175.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:11>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:16>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 175.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:12>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:17>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 175.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:13>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:18>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 175.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:curium:14>, <nuclearcraft:dust:9>, <nuclearcraft:plutonium:19>, <nuclearcraft:dust:8>, <avaritia:resource:2>*3, 175.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium>, <nuclearcraft:dust:9>, <nuclearcraft:americium:10>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 145.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium:1>, <nuclearcraft:dust:9>, <nuclearcraft:americium:11>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 145.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium:2>, <nuclearcraft:dust:9>, <nuclearcraft:americium:12>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 145.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium:3>, <nuclearcraft:dust:9>, <nuclearcraft:americium:13>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 145.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium:4>, <nuclearcraft:dust:9>, <nuclearcraft:americium:14>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 145.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium:5>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium:7>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:berkelium:8>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium>, <nuclearcraft:dust:9>, <nuclearcraft:curium:5>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:1>, <nuclearcraft:dust:9>, <nuclearcraft:curium:6>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:2>, <nuclearcraft:dust:9>, <nuclearcraft:curium:7>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:3>, <nuclearcraft:dust:9>, <nuclearcraft:curium:8>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:4>, <nuclearcraft:dust:9>, <nuclearcraft:curium:9>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 125.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:5>, <nuclearcraft:dust:9>, <nuclearcraft:curium:10>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 90.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:6>, <nuclearcraft:dust:9>, <nuclearcraft:curium:11>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 90.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:7>, <nuclearcraft:dust:9>, <nuclearcraft:curium:12>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 90.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:8>, <nuclearcraft:dust:9>, <nuclearcraft:curium:13>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 90.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:9>, <nuclearcraft:dust:9>, <nuclearcraft:curium:14>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 90.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:10>, <nuclearcraft:dust:9>, <nuclearcraft:curium:15>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 140.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:11>, <nuclearcraft:dust:9>, <nuclearcraft:curium:16>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 140.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:12>, <nuclearcraft:dust:9>, <nuclearcraft:curium:17>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 140.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:13>, <nuclearcraft:dust:9>, <nuclearcraft:curium:18>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 140.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:14>, <nuclearcraft:dust:9>, <nuclearcraft:curium:19>, <nuclearcraft:dust:8>, <avaritia:resource:2>*4, 140.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:15>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 80.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:17>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 80.0]);
DecayNeutronCollector.addRecipe([<nuclearcraft:californium:18>, <nuclearcraft:dust:9>, <nuclearcraft:dust:3>, <nuclearcraft:dust:8>, <avaritia:resource:2>*5, 80.0]);