import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//Research

val speed_upgrade_research_b = RecipeBuilder.newBuilder("speed_upgrade_research_b", "researcher", 300);
speed_upgrade_research_b.addItemInput(<minecraft:piston>*1);
speed_upgrade_research_b.addEnergyPerTickInput(50);
speed_upgrade_research_b.addItemOutput(<contenttweaker:speed_upgrade_research> * 1);
speed_upgrade_research_b.build();

val speed_upgrade_research = RecipeBuilder.newBuilder("speed_upgrade_research", "researcher", 600);
speed_upgrade_research.addItemInput(<nuclearcraft:part:4>*1);
speed_upgrade_research.addEnergyPerTickInput(50);
speed_upgrade_research.addItemOutput(<contenttweaker:speed_upgrade_research> * 2);
speed_upgrade_research.build();

val energy_upgrade_research = RecipeBuilder.newBuilder("energy_upgrade_research", "researcher", 1200);
energy_upgrade_research.addItemInput(<nuclearcraft:part:8>*1);
energy_upgrade_research.addEnergyPerTickInput(50);
energy_upgrade_research.addItemOutput(<contenttweaker:energy_upgrade_research> * 4);
energy_upgrade_research.build();

val energy_upgrade_research_b = RecipeBuilder.newBuilder("energy_upgrade_research_b", "researcher", 900);
energy_upgrade_research_b.addItemInput(<nuclearcraft:part:9>*1);
energy_upgrade_research_b.addEnergyPerTickInput(50);
energy_upgrade_research_b.addItemOutput(<contenttweaker:energy_upgrade_research> * 3);
energy_upgrade_research_b.build();

val speed_upgrade_research_c = RecipeBuilder.newBuilder("speed_upgrade_research_c", "researcher", 900);
speed_upgrade_research_c.addItemInput(<nuclearcraft:part:7>*1);
speed_upgrade_research_c.addEnergyPerTickInput(50);
speed_upgrade_research_c.addItemOutput(<contenttweaker:speed_upgrade_research> * 3);
speed_upgrade_research_c.build();

//Remove old recipes
val Upgrades = [
    <mekanism:speedupgrade>,
    <mekanism:energyupgrade>,
    <nuclearcraft:upgrade:1>,
    <nuclearcraft:upgrade>
] as IItemStack[];

for item in Upgrades {
    recipes.remove(item);
}

//New recipes
val energy_upgrade = RecipeBuilder.newBuilder("energy_upgrade", "researcher", 900);
energy_upgrade.addItemInput(<contenttweaker:energy_upgrade_research> * 2);
energy_upgrade.addEnergyPerTickInput(50);
energy_upgrade.addItemOutput(<nuclearcraft:upgrade:1> * 1);
energy_upgrade.build();

val speed_upgrade = RecipeBuilder.newBuilder("speed_upgrade", "researcher", 900);
speed_upgrade.addItemInput(<contenttweaker:speed_upgrade_research> * 2);
speed_upgrade.addEnergyPerTickInput(50);
speed_upgrade.addItemOutput(<nuclearcraft:upgrade> * 1);
speed_upgrade.build();

//Unification
recipes.addShapeless("SpeedUpgrades", <mekanism:speedupgrade>,  [<nuclearcraft:upgrade>]);
recipes.addShapeless("EnergyUpgrades", <mekanism:energyupgrade>,  [<nuclearcraft:upgrade:1>]);
recipes.addShapeless("SpeedUpgradesReverse", <nuclearcraft:upgrade>,  [<mekanism:speedupgrade>]);
recipes.addShapeless("EnergyUpgradesReverse", <nuclearcraft:upgrade:1>,  [<mekanism:energyupgrade>]);