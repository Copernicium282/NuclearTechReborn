import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

val bismuth = RecipeBuilder.newBuilder("bismuth", "fluid_irradiator", 6528);
bismuth.addFluidInput(<liquid:bismuth> * 576);
bismuth.addFluidOutput(<liquid:polonium> * 576);
bismuth.build();

val gold = RecipeBuilder.newBuilder("gold", "fluid_irradiator", 6080);
gold.addFluidInput(<liquid:gold> * 576);
gold.addFluidOutput(<liquid:spicygold> * 576);
gold.build();

val lithiumsix = RecipeBuilder.newBuilder("lithiumsix", "fluid_irradiator", 3800);
lithiumsix.addFluidInput(<liquid:lithiumsix> * 576);
lithiumsix.addFluidOutput(<liquid:lithiumsvn> * 576);
lithiumsix.build();

val boronten = RecipeBuilder.newBuilder("boronten", "fluid_irradiator", 3800);
boronten.addFluidInput(<liquid:boronten> * 576);
boronten.addFluidOutput(<liquid:boronelvn> * 576);
boronten.build();