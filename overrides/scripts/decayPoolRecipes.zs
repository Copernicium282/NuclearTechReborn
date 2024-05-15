import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;


val uranium_isotope_a = RecipeBuilder.newBuilder("uranium_isotope_a", "decay_pool", 7200);
uranium_isotope_a.addItemInput(<nuclearcraft:uranium:0> * 1);
uranium_isotope_a.addItemOutput(<nuclearcraft:ingot:2> * 1);
uranium_isotope_a.addEnergyPerTickOutput(2);
uranium_isotope_a.build();

val uranium_isotope_b = RecipeBuilder.newBuilder("uranium_isotope_b", "decay_pool", 3600);
uranium_isotope_b.addItemInput(<nuclearcraft:uranium:5> * 1);
uranium_isotope_b.addItemOutput(<nuclearcraft:ingot:2> * 1);
uranium_isotope_b.addEnergyPerTickOutput(2);
uranium_isotope_b.build();

val uranium_isotope_c = RecipeBuilder.newBuilder("uranium_isotope_c", "decay_pool", 14400);
uranium_isotope_c.addItemInput(<nuclearcraft:uranium:10> * 1);
uranium_isotope_c.addItemOutput(<nuclearcraft:ingot:2> * 1);
uranium_isotope_c.addEnergyPerTickOutput(2);
uranium_isotope_c.build();

val neptunium_isotope_a = RecipeBuilder.newBuilder("neptunium_isotope_a", "decay_pool", 1440);
neptunium_isotope_a.addItemInput(<nuclearcraft:neptunium:0> * 1);
neptunium_isotope_a.addItemOutput(<nuclearcraft:ingot:2> * 1);
neptunium_isotope_a.addEnergyPerTickOutput(4);
neptunium_isotope_a.build();

val neptunium_isotope_b = RecipeBuilder.newBuilder("neptunium_isotope_b", "decay_pool", 360);
neptunium_isotope_b.addItemInput(<nuclearcraft:neptunium:5> * 1);
neptunium_isotope_b.addItemOutput(<nuclearcraft:uranium:0> * 1);
neptunium_isotope_b.addEnergyPerTickOutput(4);
neptunium_isotope_b.build();

val plutonium_isotope_a = RecipeBuilder.newBuilder("plutonium_isotope_a", "decay_pool", 720);
plutonium_isotope_a.addItemInput(<nuclearcraft:plutonium:0> * 1);
plutonium_isotope_a.addItemOutput(<nuclearcraft:ingot:2> * 1);
plutonium_isotope_a.addEnergyPerTickOutput(7);
plutonium_isotope_a.build();

val plutonium_isotope_b = RecipeBuilder.newBuilder("plutonium_isotope_b", "decay_pool", 360);
plutonium_isotope_b.addItemInput(<nuclearcraft:plutonium:5> * 1);
plutonium_isotope_b.addItemOutput(<nuclearcraft:uranium:5> * 1);
plutonium_isotope_b.addEnergyPerTickOutput(7);
plutonium_isotope_b.build();

val plutonium_isotope_c = RecipeBuilder.newBuilder("plutonium_isotope_c", "decay_pool", 240);
plutonium_isotope_c.addItemInput(<nuclearcraft:plutonium:10> * 1);
plutonium_isotope_c.addItemOutput(<nuclearcraft:neptunium:5> * 1);
plutonium_isotope_c.addEnergyPerTickOutput(7);
plutonium_isotope_c.build();

val plutonium_isotope_d = RecipeBuilder.newBuilder("plutonium_isotope_d", "decay_pool", 600);
plutonium_isotope_d.addItemInput(<nuclearcraft:plutonium:15> * 1);
plutonium_isotope_d.addItemOutput(<nuclearcraft:uranium:10> * 1);
plutonium_isotope_d.addEnergyPerTickOutput(7);
plutonium_isotope_d.build();

val americium_isotope_a = RecipeBuilder.newBuilder("americium_isotope_a", "decay_pool", 600);
americium_isotope_a.addItemInput(<nuclearcraft:americium:0> * 1);
americium_isotope_a.addItemOutput(<nuclearcraft:neptunium:5> * 1);
americium_isotope_a.addEnergyPerTickOutput(8);
americium_isotope_a.build();

val americium_isotope_b = RecipeBuilder.newBuilder("americium_isotope_b", "decay_pool", 480);
americium_isotope_b.addItemInput(<nuclearcraft:americium:5> * 1);
americium_isotope_b.addItemOutput(<nuclearcraft:ingot:2> * 1);
americium_isotope_b.addEnergyPerTickOutput(8);
americium_isotope_b.build();

val americium_isotope_c = RecipeBuilder.newBuilder("americium_isotope_c", "decay_pool", 720);
americium_isotope_c.addItemInput(<nuclearcraft:americium:10> * 1);
americium_isotope_c.addItemOutput(<nuclearcraft:plutonium:5> * 1);
americium_isotope_c.addEnergyPerTickOutput(8);
americium_isotope_c.build();

val curium_isotope_a = RecipeBuilder.newBuilder("curium_isotope_a", "decay_pool", 100);
curium_isotope_a.addItemInput(<nuclearcraft:curium:0> * 1);
curium_isotope_a.addItemOutput(<nuclearcraft:plutonium:5> * 1);
curium_isotope_a.addEnergyPerTickOutput(9);
curium_isotope_a.build();

val curium_isotope_b = RecipeBuilder.newBuilder("curium_isotope_b", "decay_pool", 240);
curium_isotope_b.addItemInput(<nuclearcraft:curium:5> * 1);
curium_isotope_b.addItemOutput(<nuclearcraft:plutonium:10> * 1);
curium_isotope_b.addEnergyPerTickOutput(9);
curium_isotope_b.build();

val curium_isotope_c = RecipeBuilder.newBuilder("curium_isotope_c", "decay_pool", 180);
curium_isotope_c.addItemInput(<nuclearcraft:curium:10> * 1);
curium_isotope_c.addItemOutput(<nuclearcraft:plutonium:15> * 1);
curium_isotope_c.addEnergyPerTickOutput(9);
curium_isotope_c.build();

val curium_isotope_d = RecipeBuilder.newBuilder("curium_isotope_d", "decay_pool", 1200);
curium_isotope_d.addItemInput(<nuclearcraft:curium:15> * 1);
curium_isotope_d.addItemOutput(<nuclearcraft:americium:10> * 1);
curium_isotope_d.addEnergyPerTickOutput(9);
curium_isotope_d.build();

val berkelium_isotope_a = RecipeBuilder.newBuilder("berkelium_isotope_a", "decay_pool", 120);
berkelium_isotope_a.addItemInput(<nuclearcraft:berkelium:0> * 1);
berkelium_isotope_a.addItemOutput(<nuclearcraft:americium:10> * 1);
berkelium_isotope_a.addEnergyPerTickOutput(11);
berkelium_isotope_a.build();

val berkelium_isotope_b = RecipeBuilder.newBuilder("berkelium_isotope_b", "decay_pool", 140);
berkelium_isotope_b.addItemInput(<nuclearcraft:berkelium:5> * 1);
berkelium_isotope_b.addItemOutput(<nuclearcraft:dust:3> * 1);
berkelium_isotope_b.addEnergyPerTickOutput(11);
berkelium_isotope_b.build();

val californium_isotope_a = RecipeBuilder.newBuilder("californium_isotope_a", "decay_pool", 120);
californium_isotope_a.addItemInput(<nuclearcraft:californium:0> * 1);
californium_isotope_a.addItemOutput(<nuclearcraft:curium:5> * 1);
californium_isotope_a.addEnergyPerTickOutput(17);
californium_isotope_a.build();

val californium_isotope_b = RecipeBuilder.newBuilder("californium_isotope_b", "decay_pool", 90);
californium_isotope_b.addItemInput(<nuclearcraft:californium:5> * 1);
californium_isotope_b.addItemOutput(<nuclearcraft:curium:10> * 1);
californium_isotope_b.addEnergyPerTickOutput(17);
californium_isotope_b.build();

val californium_isotope_c = RecipeBuilder.newBuilder("californium_isotope_c", "decay_pool", 120);
californium_isotope_c.addItemInput(<nuclearcraft:californium:10> * 1);
californium_isotope_c.addItemOutput(<nuclearcraft:curium:15> * 1);
californium_isotope_c.addEnergyPerTickOutput(17);
californium_isotope_c.build();

val californium_isotope_d = RecipeBuilder.newBuilder("californium_isotope_d", "decay_pool", 90);
californium_isotope_d.addItemInput(<nuclearcraft:californium:15> * 1);
californium_isotope_d.addItemOutput(<nuclearcraft:dust:3> * 1);
californium_isotope_d.addEnergyPerTickOutput(17);
californium_isotope_d.build();

val plutonium_238 = RecipeBuilder.newBuilder("plutonium_238", "decay_pool", 100);
plutonium_238.addItemInput(<nuclearcraft:plutonium:0> * 1);
plutonium_238.addItemOutput(<qmd:isotope:4> * 1);
plutonium_238.addEnergyPerTickOutput(10);
plutonium_238.build();

val beryllium = RecipeBuilder.newBuilder("beryllium", "decay_pool", 60);
beryllium.addItemInput(<qmd:isotope:1> * 1);
beryllium.addItemOutput(<nuclearcraft:lithium:1> * 1);
beryllium.addEnergyPerTickOutput(10);
beryllium.build();

val protactinium = RecipeBuilder.newBuilder("protactinium", "decay_pool", 240);
protactinium.addItemInput(<qmd:isotope:5> * 1);
protactinium.addItemOutput(<nuclearcraft:dust:2> * 1);
protactinium.addEnergyPerTickOutput(10);
protactinium.build();

val uranium_234 = RecipeBuilder.newBuilder("uranium_234", "decay_pool", 425);
uranium_234.addItemInput(<qmd:isotope:4> * 1);
uranium_234.addItemOutput(<nuclearcraft:fission_dust:1> * 1);
uranium_234.addEnergyPerTickOutput(8);
uranium_234.build();

val co_60 = RecipeBuilder.newBuilder("co_60", "decay_pool", 245);
co_60.addItemInput(<qmd:isotope:6> * 1);
co_60.addItemOutput(<qmd:dust:5> * 1);
co_60.addEnergyPerTickOutput(10);
co_60.build();

val iridium = RecipeBuilder.newBuilder("iridium", "decay_pool", 60);
iridium.addItemInput(<qmd:isotope:7> * 1);
iridium.addItemOutput(<qmd:dust:10> * 1);
iridium.addEnergyPerTickOutput(10);
iridium.build();

