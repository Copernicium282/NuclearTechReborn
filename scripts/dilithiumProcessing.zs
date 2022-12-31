import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.SolidFission;
import mods.nuclearcraft.FuelReprocessor;

//Dilithium Initializer

mods.nuclearcraft.Assembler.addRecipe(<hbm:rod_quad_empty>, <hbm:ingot_schrabidate>*4, <nuclearcraft:dust:6>*4, null, <contenttweaker:li_infused_schrabidate_quad_rod>);

//Schrabidate Depletion and Lithium Transformation

SolidFission.addRecipe(<contenttweaker:li_infused_schrabidate_quad_rod>, <contenttweaker:rod_dilithium_pure>, 3000, 500, 4.00, 200, 0.5, true, 8.0e-2);

//Dilithium Extraction

FuelReprocessor.addRecipe(<contenttweaker:rod_dilithium_pure>*9, <libvulpes:productgem:0>*9, <hbm:rod_quad_empty>*9, null,  
null, null, null, null, null);