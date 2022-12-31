import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.SolidFission;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.ChanceItemIngredient;

//Fuel

mods.nuclearcraft.Assembler.addRecipe(<hbm:billet_yharonite>*1, <hbm:cladding_lead>*1, <hbm:billet_les>*1, <contenttweaker:billet_her>);

//Tooltips

<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.italic("Low-Enriched Scrhabidium Sandwiched Yharonite Billet Fuel"), format.gray("Hold Shift for more info"));
<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.blue("Arrives From: Elliptical non-euclidean shapes"));
<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.blue("Departs to: Hyperbolic non-euclidean shapes"));
<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.yellow("Function Type: MEDIUM / SQUARE ROOT"));
//Lead Creation Function
//x * 0.5

//Lead Destruction Function
//x² * 50

//Doom Function
//(x + 10)² / 10000 * 10000



//Fission Recipes
//mods.nuclearcraft.SolidFission.addRecipe(FuelInputName, DepletedFuelName, ProcessTimeInTicks, HeatPerTick, BaseEfficiency, CriticalityFactor, DecayFactor, SelfPrimingOrNot(true/false), RadiationEmitted);

SolidFission.addRecipe(<contenttweaker:pellet_fuel_her>, <contenttweaker:pellet_depleted_fuel_her>, 28800, 13, 1.29, 80, 0.001, false, 69.0e-7);
SolidFission.addRecipe(<contenttweaker:pellet_fuel_mer>, <contenttweaker:pellet_depleted_fuel_mer>, 38400, 7, 1.17, 102, 0.001, false, 69.0e-7);
SolidFission.addRecipe(<contenttweaker:pellet_fuel_ler>, <contenttweaker:pellet_depleted_fuel_ler>, 57600, 3, 1.03, 160, 0.001, false, 69.0e-7);

//Fuel Reprocessing

val sr = ChanceItemIngredient.create(<ore:dustStrontium90>, 20) as IIngredient;
val cs = ChanceItemIngredient.create(<ore:dustCesium137>, 20) as IIngredient;

FuelReprocessor.addRecipe(<contenttweaker:pellet_depleted_fuel_her>*9, <nuclearcraft:uranium:0>*4, <nuclearcraft:neptunium:0>*2, <qmd:ingot:4>*9,  
<nuclearcraft:neptunium:0>*1, <ore:ingotZircaloy>*9, <nuclearcraft:ingot:2>*9, cs, sr);
FuelReprocessor.addRecipe(<contenttweaker:pellet_depleted_fuel_mer>*9, <nuclearcraft:uranium:0>*3, <nuclearcraft:neptunium:0>*1, <qmd:ingot:4>*9,
<nuclearcraft:neptunium:0>*1, <ore:ingotZircaloy>*9, <nuclearcraft:ingot:2>*9, cs, sr);
FuelReprocessor.addRecipe(<contenttweaker:pellet_depleted_fuel_ler>*9, <nuclearcraft:uranium:0>*2, <nuclearcraft:neptunium:0>*1, <qmd:ingot:4>*9,
<nuclearcraft:neptunium:0>*1, <ore:ingotZircaloy>*9, <nuclearcraft:ingot:2>*9, cs, sr);