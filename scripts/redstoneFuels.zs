import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.SolidFission;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.ChanceItemIngredient;

//Billets

mods.nuclearcraft.Assembler.addRecipe(<mekanism:compressedredstone>*24, <ore:dustGraphite>*4, <ore:dustBeryllium>*2, <ore:dustRadium>*2, <contenttweaker:billet_her>);
mods.nuclearcraft.Assembler.addRecipe(<mekanism:compressedredstone>*12, <ore:dustGraphite>*4, <ore:dustBeryllium>*2, <ore:dustRadium>*2, <contenttweaker:billet_mer>);
mods.nuclearcraft.Assembler.addRecipe(<mekanism:compressedredstone>*6, <ore:dustGraphite>*4, <ore:dustBeryllium>*2, <ore:dustRadium>*2, <contenttweaker:billet_ler>);

//Fuel

mods.nuclearcraft.Assembler.addRecipe(<ore:ingotCobalt>, <ore:ingotZircaloy>, <ore:ingotLead>, <contenttweaker:billet_her>*9, <contenttweaker:pellet_fuel_her>);
mods.nuclearcraft.Assembler.addRecipe(<ore:ingotCobalt>, <ore:ingotZircaloy>, <ore:ingotLead>, <contenttweaker:billet_mer>*9, <contenttweaker:pellet_fuel_mer>);
mods.nuclearcraft.Assembler.addRecipe(<ore:ingotCobalt>, <ore:ingotZircaloy>, <ore:ingotLead>, <contenttweaker:billet_ler>*9, <contenttweaker:pellet_fuel_ler>);

//Tooltips

<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.italic("Highly Enriched Redstone-Based Starter Fuel"), format.gray("Hold Shift for more info"));
<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.blue("Splits with: Slow Neutrons"));
<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.blue("Splits into: Fast Neutrons"));
<contenttweaker:pellet_fuel_her>.addShiftTooltip(format.green("Function Type: SAFE / LINEAR"));

<contenttweaker:pellet_fuel_mer>.addShiftTooltip(format.italic("Medium-Enriched Redstone-Based Starter Fuel"), format.gray("Hold Shift for more info"));
<contenttweaker:pellet_fuel_mer>.addShiftTooltip(format.blue("Splits with: Slow Neutrons"));
<contenttweaker:pellet_fuel_mer>.addShiftTooltip(format.blue("Splits into: Fast Neutrons"));
<contenttweaker:pellet_fuel_mer>.addShiftTooltip(format.green("Function Type: SAFE / LINEAR"));

<contenttweaker:pellet_fuel_ler>.addShiftTooltip(format.italic("Low-Enriched Redstone-Based Starter Fuel"), format.gray("Hold Shift for more info"));
<contenttweaker:pellet_fuel_ler>.addShiftTooltip(format.blue("Splits with: Slow Neutrons"));
<contenttweaker:pellet_fuel_ler>.addShiftTooltip(format.blue("Splits into: Fast Neutrons"));
<contenttweaker:pellet_fuel_ler>.addShiftTooltip(format.green("Function Type: SAFE / LINEAR"));

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