import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

val digamma_fuel = RecipeBuilder.newBuilder("digamma_fuel", "digamma", 24);
digamma_fuel.addItemInput(<hbm:rbmk_fuel_drx>.withTag({core: 20.0, yield: 1000000.0, hull: 20.0}));
digamma_fuel.addFluidInput(<liquid:cryotheum_nak> * 7000);
digamma_fuel.addFluidOutput(<liquid:cryotheum_nak_hot> * 7000);
digamma_fuel.addItemOutput(<hbm:undefined> * 2).setChance(0.9996);
digamma_fuel.build();