import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI;

//make basic circuit oredict
val anyBasicCircuit = <ore:anyBasicCircuit>;
anyBasicCircuit.add(<advancedrocketry:ic:0>);
anyBasicCircuit.add(<hbm:circuit:8>);

//Basic Circuit Recipes 
recipes.addShapeless("AR-basic-circuit", <advancedrocketry:ic:0>, [<hbm:circuit:8>]);

//Advanced Circuit Recipes
//Oredicting
val anyAdvancedCircuit = <ore:anyAdvancedCircuit>;
anyAdvancedCircuit.add(<advancedrocketry:ic:2>);
anyAdvancedCircuit.add(<hbm:circuit:9>);

recipes.addShapeless("AR-adv-circuit", <advancedrocketry:ic:2>, [<hbm:circuit:9>]);

//more hightech recipes
//yeeting AR circ processes
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:itemcircuitplate:1>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:itemcircuitplate>);
