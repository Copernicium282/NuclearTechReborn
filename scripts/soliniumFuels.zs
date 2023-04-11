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

mods.nuclearcraft.Assembler.addRecipe(<hbm:billet_solinium>*4, <ore:dustGraphite>*4, <ore:dustBeryllium>*2, <ore:dustRadium>*2, <contenttweaker:billet_hes>);
mods.nuclearcraft.Assembler.addRecipe(<hbm:billet_solinium>*2, <ore:dustGraphite>*4, <ore:dustBeryllium>*2, <ore:dustRadium>*2, <contenttweaker:billet_mes>);
mods.nuclearcraft.Assembler.addRecipe(<hbm:billet_solinium>*1, <ore:dustGraphite>*4, <ore:dustBeryllium>*2, <ore:dustRadium>*2, <contenttweaker:billet_les>);

//Fuel

mods.nuclearcraft.Assembler.addRecipe(<ore:ingotCobalt>, <ore:ingotZircaloy>, <ore:ingotLead>, <contenttweaker:billet_hes>, <contenttweaker:pellet_fuel_hes>);
mods.nuclearcraft.Assembler.addRecipe(<ore:ingotCobalt>, <ore:ingotZircaloy>, <ore:ingotLead>, <contenttweaker:billet_mes>, <contenttweaker:pellet_fuel_mes>);
mods.nuclearcraft.Assembler.addRecipe(<ore:ingotCobalt>, <ore:ingotZircaloy>, <ore:ingotLead>, <contenttweaker:billet_les>, <contenttweaker:pellet_fuel_les>);

//Tooltips

<contenttweaker:pellet_fuel_hes>.addShiftTooltip(format.italic("Highly Enriched Solinium-Based Fuel"), format.gray("Hold Shift for more info"));
<contenttweaker:pellet_fuel_hes>.addShiftTooltip(format.blue("Splits with: Slow Neutrons"));
<contenttweaker:pellet_fuel_hes>.addShiftTooltip(format.blue("Splits into: Fast Neutrons"));
<contenttweaker:pellet_fuel_hes>.addShiftTooltip(format.green("Function Type: SAFE / LINEAR"));

<contenttweaker:pellet_fuel_mes>.addShiftTooltip(format.italic("Medium-Enriched Solinium-Based Fuel"), format.gray("Hold Shift for more info"));
<contenttweaker:pellet_fuel_mes>.addShiftTooltip(format.blue("Splits with: Slow Neutrons"));
<contenttweaker:pellet_fuel_mes>.addShiftTooltip(format.blue("Splits into: Fast Neutrons"));
<contenttweaker:pellet_fuel_mes>.addShiftTooltip(format.green("Function Type: SAFE / LINEAR"));

<contenttweaker:pellet_fuel_les>.addShiftTooltip(format.italic("Low-Enriched Solinium-Based Fuel"), format.gray("Hold Shift for more info"));
<contenttweaker:pellet_fuel_les>.addShiftTooltip(format.blue("Splits with: Slow Neutrons"));
<contenttweaker:pellet_fuel_les>.addShiftTooltip(format.blue("Splits into: Fast Neutrons"));
<contenttweaker:pellet_fuel_les>.addShiftTooltip(format.green("Function Type: SAFE / LINEAR"));

//Fission Recipes
//mods.nuclearcraft.SolidFission.addRecipe(FuelInputName, DepletedFuelName, ProcessTimeInTicks, HeatPerTick, BaseEfficiency, CriticalityFactor, DecayFactor, SelfPrimingOrNot(true/false), RadiationEmitted);

SolidFission.addRecipe(<contenttweaker:pellet_fuel_hes>, <contenttweaker:pellet_depleted_fuel_hes>, 288000, 130, 2.00, 40, 0.001, true, 48.0e-6);
SolidFission.addRecipe(<contenttweaker:pellet_fuel_mes>, <contenttweaker:pellet_depleted_fuel_mes>, 384000, 70, 1.90, 60, 0.001, true, 48.0e-6);
SolidFission.addRecipe(<contenttweaker:pellet_fuel_les>, <contenttweaker:pellet_depleted_fuel_les>, 576000, 30, 1.80, 80, 0.001, true, 48.0e-6);

//Fuel Reprocessing

FuelReprocessor.addRecipe(<contenttweaker:pellet_depleted_fuel_hes>*9, <nuclearcraft:uranium:0>*4, <nuclearcraft:neptunium:0>*2, <qmd:ingot:4>*9,  
<nuclearcraft:neptunium:0>*1, <ore:ingotZircaloy>*9, <nuclearcraft:ingot:2>*9, <hbm:nugget_euphemium>*9, <hbm:nuclear_waste>*4);
FuelReprocessor.addRecipe(<contenttweaker:pellet_depleted_fuel_mes>*9, <nuclearcraft:uranium:0>*3, <nuclearcraft:neptunium:0>*1, <qmd:ingot:4>*9,
<nuclearcraft:neptunium:0>*1, <ore:ingotZircaloy>*9, <nuclearcraft:ingot:2>*9, <hbm:nugget_euphemium>*5, <hbm:nuclear_waste>*2);
FuelReprocessor.addRecipe(<contenttweaker:pellet_depleted_fuel_les>*9, <nuclearcraft:uranium:0>*2, <nuclearcraft:neptunium:0>*1, <qmd:ingot:4>*9,
<nuclearcraft:neptunium:0>*1, <ore:ingotZircaloy>*9, <nuclearcraft:ingot:2>*9, <hbm:nugget_euphemium>*2, <hbm:nuclear_waste>*1);