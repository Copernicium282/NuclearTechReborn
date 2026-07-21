import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;


mods.nuclearcraft.Assembler.addRecipe(<qmd:dust:5>, <minecraft:redstone>, <hbm:plate_titanium>, null, <contenttweaker:catalyst>);

val diborane = RecipeBuilder.newBuilder("diborane", "catalytic_chem_reactor", 300);
diborane.addItemInput(<contenttweaker:catalyst> * 1);
diborane.addFluidInput(<liquid:boron> * 72);
diborane.addFluidInput(<liquid:hydrogen> * 750);
diborane.addFluidOutput(<liquid:diborane> * 250);
diborane.build();

val boric_acid = RecipeBuilder.newBuilder("boric_acid", "catalytic_chem_reactor", 350);
boric_acid.addItemInput(<contenttweaker:catalyst> * 1);
boric_acid.addFluidInput(<liquid:diborane> * 125);
boric_acid.addFluidInput(<liquid:water> * 750);
boric_acid.addFluidOutput(<liquid:boric_acid> * 250);
boric_acid.addFluidOutput(<liquid:hydrogen> * 750);
boric_acid.build();

val ammonia = RecipeBuilder.newBuilder("ammonia", "catalytic_chem_reactor", 275);
ammonia.addItemInput(<contenttweaker:catalyst> * 1);
ammonia.addFluidInput(<liquid:nitrogen> * 250);
ammonia.addFluidInput(<liquid:hydrogen> * 750);
ammonia.addFluidOutput(<liquid:ammonia> * 500);
ammonia.build();

val boron_nitride_solution = RecipeBuilder.newBuilder("boron_nitride_solution", "catalytic_chem_reactor", 250);
boron_nitride_solution.addItemInput(<contenttweaker:catalyst> * 1);
boron_nitride_solution.addFluidInput(<liquid:boric_acid> * 500);
boron_nitride_solution.addFluidInput(<liquid:ammonia> * 500);
boron_nitride_solution.addFluidOutput(<liquid:boron_nitride_solution> * 333);
boron_nitride_solution.addFluidOutput(<liquid:water> * 1000);
boron_nitride_solution.build();

val water = RecipeBuilder.newBuilder("water", "catalytic_chem_reactor", 250);
water.addItemInput(<contenttweaker:catalyst> * 1);
water.addFluidInput(<liquid:hydrogen> * 500);
water.addFluidInput(<liquid:oxygen> * 250);
water.addFluidOutput(<liquid:water> * 250);
water.build();

val heavy_water = RecipeBuilder.newBuilder("heavy_water", "catalytic_chem_reactor", 250);
heavy_water.addItemInput(<contenttweaker:catalyst> * 1);
heavy_water.addFluidInput(<liquid:deuterium> * 500);
heavy_water.addFluidInput(<liquid:oxygen> * 250);
heavy_water.addFluidOutput(<liquid:heavy_water> * 250);
heavy_water.build();

val hydrofluoric_acid = RecipeBuilder.newBuilder("hydrofluoric_acid", "catalytic_chem_reactor", 270);
hydrofluoric_acid.addItemInput(<contenttweaker:catalyst> * 1);
hydrofluoric_acid.addFluidInput(<liquid:hydrogen> * 250);
hydrofluoric_acid.addFluidInput(<liquid:fluorine> * 250);
hydrofluoric_acid.addFluidOutput(<liquid:hydrofluoric_acid> * 250);
hydrofluoric_acid.build();

val lif = RecipeBuilder.newBuilder("lif", "catalytic_chem_reactor", 260);
lif.addItemInput(<contenttweaker:catalyst> * 1);
lif.addFluidInput(<liquid:lithium> * 72);
lif.addFluidInput(<liquid:fluorine> * 250);
lif.addFluidOutput(<liquid:lif> * 72);
lif.build();

val beryllium_fluoride = RecipeBuilder.newBuilder("beryllium_fluoride", "catalytic_chem_reactor", 260);
beryllium_fluoride.addItemInput(<contenttweaker:catalyst> * 1);
beryllium_fluoride.addFluidInput(<liquid:lithium> * 72);
beryllium_fluoride.addFluidInput(<liquid:fluorine> * 250);
beryllium_fluoride.addFluidOutput(<liquid:bef2> * 72);
beryllium_fluoride.build();

val sulfur_dioxide = RecipeBuilder.newBuilder("sulfur_dioxide", "catalytic_chem_reactor", 290);
sulfur_dioxide.addItemInput(<contenttweaker:catalyst> * 1);
sulfur_dioxide.addFluidInput(<liquid:sulfur> * 333);
sulfur_dioxide.addFluidInput(<liquid:oxygen> * 500);
sulfur_dioxide.addFluidOutput(<liquid:sulfur_dioxide> * 500);
sulfur_dioxide.build();

val sulfur_trioxide = RecipeBuilder.newBuilder("sulfur_trioxide", "catalytic_chem_reactor", 290);
sulfur_trioxide.addItemInput(<contenttweaker:catalyst> * 1);
sulfur_trioxide.addFluidInput(<liquid:sulfur_dioxide> * 500);
sulfur_trioxide.addFluidInput(<liquid:oxygen> * 250);
sulfur_trioxide.addFluidOutput(<liquid:sulfur_trioxide> * 500);
sulfur_trioxide.build();

val sulfuric_acid = RecipeBuilder.newBuilder("sulfuric_acid", "catalytic_chem_reactor", 230);
sulfuric_acid.addItemInput(<contenttweaker:catalyst> * 1);
sulfuric_acid.addFluidInput(<liquid:sulfur_trioxide> * 250);
sulfuric_acid.addFluidInput(<liquid:oxygen> * 250);
sulfuric_acid.addFluidOutput(<liquid:sulfuric_acid> * 250);
sulfuric_acid.build();

val calcium_sulfate_solution = RecipeBuilder.newBuilder("calcium_sulfate_solution", "catalytic_chem_reactor", 200);
calcium_sulfate_solution.addItemInput(<contenttweaker:catalyst> * 1);
calcium_sulfate_solution.addFluidInput(<liquid:fluorite_water> * 333);
calcium_sulfate_solution.addFluidInput(<liquid:sulfuric_acid> * 500);
calcium_sulfate_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 1000);
calcium_sulfate_solution.addFluidOutput(<liquid:calcium_sulfate_solution> * 333);
calcium_sulfate_solution.build();

val sodium_hydroxide_solution = RecipeBuilder.newBuilder("sodium_hydroxide_solution", "catalytic_chem_reactor", 280);
sodium_hydroxide_solution.addItemInput(<contenttweaker:catalyst> * 1);
sodium_hydroxide_solution.addFluidInput(<liquid:sodium_fluoride_solution> * 333);
sodium_hydroxide_solution.addFluidInput(<liquid:water> * 500);
sodium_hydroxide_solution.addFluidOutput(<liquid:sodium_hydroxide_solution> * 333);
sodium_hydroxide_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
sodium_hydroxide_solution.build();

val potassium_hydroxide_solution = RecipeBuilder.newBuilder("potassium_hydroxide_solution", "catalytic_chem_reactor", 275);
potassium_hydroxide_solution.addItemInput(<contenttweaker:catalyst> * 1);
potassium_hydroxide_solution.addFluidInput(<liquid:potassium_fluoride_solution> * 333);
potassium_hydroxide_solution.addFluidInput(<liquid:water> * 500);
potassium_hydroxide_solution.addFluidOutput(<liquid:potassium_hydroxide_solution> * 333);
potassium_hydroxide_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
potassium_hydroxide_solution.build();

val sodium_fluoride_solution = RecipeBuilder.newBuilder("sodium_fluoride_solution", "catalytic_chem_reactor", 650);
sodium_fluoride_solution.addItemInput(<contenttweaker:catalyst> * 1);
sodium_fluoride_solution.addFluidInput(<liquid:sodium_fluoride_solution> * 333);
sodium_fluoride_solution.addFluidInput(<liquid:boric_acid> * 1000);
sodium_fluoride_solution.addFluidOutput(<liquid:borax_solution> * 167);
sodium_fluoride_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
sodium_fluoride_solution.build();

val oxygen_difluoride = RecipeBuilder.newBuilder("oxygen_difluoride", "catalytic_chem_reactor", 295);
oxygen_difluoride.addItemInput(<contenttweaker:catalyst> * 1);
oxygen_difluoride.addFluidInput(<liquid:oxygen_difluoride> * 250);
oxygen_difluoride.addFluidInput(<liquid:water> * 250);
oxygen_difluoride.addFluidOutput(<liquid:oxygen> * 250);
oxygen_difluoride.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
oxygen_difluoride.build();

val fluorine = RecipeBuilder.newBuilder("fluorine", "catalytic_chem_reactor", 310);
fluorine.addItemInput(<contenttweaker:catalyst> * 1);
fluorine.addFluidInput(<liquid:oxygen_difluoride> * 250);
fluorine.addFluidInput(<liquid:sulfur_dioxide> * 250);
fluorine.addFluidOutput(<liquid:sulfur_trioxide> * 250);
fluorine.addFluidOutput(<liquid:fluorine> * 250);
fluorine.build();

val difluoride_oxygen = RecipeBuilder.newBuilder("difluoride_oxygen", "catalytic_chem_reactor", 315);
difluoride_oxygen.addItemInput(<contenttweaker:catalyst> * 1);
difluoride_oxygen.addFluidInput(<liquid:oxygen> * 250);
difluoride_oxygen.addFluidInput(<liquid:fluorine> * 500);
difluoride_oxygen.addFluidOutput(<liquid:oxygen_difluoride> * 500);
difluoride_oxygen.build();

val ethanol = RecipeBuilder.newBuilder("ethanol", "catalytic_chem_reactor", 225);
ethanol.addItemInput(<contenttweaker:catalyst> * 1);
ethanol.addFluidInput(<liquid:sugar> * 36);
ethanol.addFluidInput(<liquid:water> * 250);
ethanol.addFluidOutput(<liquid:ethanol> * 1000);
ethanol.build();

val carbon_monoxide = RecipeBuilder.newBuilder("carbon_monoxide", "catalytic_chem_reactor", 240);
carbon_monoxide.addItemInput(<contenttweaker:catalyst> * 1);
carbon_monoxide.addFluidInput(<liquid:carbon_dioxide> * 250);
carbon_monoxide.addFluidInput(<liquid:hydrogen> * 250);
carbon_monoxide.addFluidOutput(<liquid:carbon_monoxide> * 250);
carbon_monoxide.addFluidOutput(<liquid:water> * 250);
carbon_monoxide.build();

val methanol = RecipeBuilder.newBuilder("methanol", "catalytic_chem_reactor", 230);
methanol.addItemInput(<contenttweaker:catalyst> * 1);
methanol.addFluidInput(<liquid:carbon_monoxide> * 250);
methanol.addFluidInput(<liquid:hydrogen> * 500);
methanol.addFluidOutput(<liquid:methanol> * 250);
methanol.build();

val fluoromethane = RecipeBuilder.newBuilder("fluoromethane", "catalytic_chem_reactor", 245);
fluoromethane.addItemInput(<contenttweaker:catalyst> * 1);
fluoromethane.addFluidInput(<liquid:methanol> * 250);
fluoromethane.addFluidInput(<liquid:fluorine> * 250);
fluoromethane.addFluidOutput(<liquid:fluoromethane> * 250);
fluoromethane.addFluidOutput(<liquid:water> * 250);
fluoromethane.build();

val ethene = RecipeBuilder.newBuilder("ethene", "catalytic_chem_reactor", 245);
ethene.addItemInput(<contenttweaker:catalyst> * 1);
ethene.addFluidInput(<liquid:fluoromethane> * 500);
ethene.addFluidInput(<liquid:naoh> * 333);
ethene.addFluidOutput(<liquid:ethene> * 250);
ethene.addFluidOutput(<liquid:sodium_fluoride_solution> * 333);
ethene.build();

val koh = RecipeBuilder.newBuilder("koh", "catalytic_chem_reactor", 240);
koh.addItemInput(<contenttweaker:catalyst> * 1);
koh.addFluidInput(<liquid:fluoromethane> * 500);
koh.addFluidInput(<liquid:koh> * 333);
koh.addFluidOutput(<liquid:ethene> * 250);
koh.addFluidOutput(<liquid:potassium_fluoride_solution> * 333);
koh.build();

val sulfur_trioxide_less = RecipeBuilder.newBuilder("sulfur_trioxide_less", "catalytic_chem_reactor", 220);
sulfur_trioxide_less.addItemInput(<contenttweaker:catalyst> * 1);
sulfur_trioxide_less.addFluidInput(<liquid:ethene> * 250);
sulfur_trioxide_less.addFluidInput(<liquid:sulfuric_acid> * 250);
sulfur_trioxide_less.addFluidOutput(<liquid:ethanol> * 250);
sulfur_trioxide_less.addFluidOutput(<liquid:sulfur_trioxide> * 250);
sulfur_trioxide_less.build();

val arsenic = RecipeBuilder.newBuilder("arsenic", "catalytic_chem_reactor", 210);
arsenic.addItemInput(<contenttweaker:catalyst> * 1);
arsenic.addFluidInput(<liquid:boron> * 72);
arsenic.addFluidInput(<liquid:arsenic> * 333);
arsenic.addFluidOutput(<liquid:bas> * 333);
arsenic.build();

val alugentum = RecipeBuilder.newBuilder("alugentum", "catalytic_chem_reactor", 205);
alugentum.addItemInput(<contenttweaker:catalyst> * 1);
alugentum.addFluidInput(<liquid:alugentum> * 24);
alugentum.addFluidInput(<liquid:oxygen> * 1000);
alugentum.addFluidOutput(<liquid:alumina> * 48);
alugentum.addFluidOutput(<liquid:silver> * 24);
alugentum.build();

val witherite_water = RecipeBuilder.newBuilder("witherite_water", "catalytic_chem_reactor", 200);
witherite_water.addItemInput(<contenttweaker:catalyst> * 1);
witherite_water.addFluidInput(<liquid:witherite_water> * 500);
witherite_water.addFluidInput(<liquid:nitric_acid> * 1000);
witherite_water.addFluidOutput(<liquid:barium_nitrate_solution> * 500);
witherite_water.build();

val nitric_oxide = RecipeBuilder.newBuilder("nitric_oxide", "catalytic_chem_reactor", 255);
nitric_oxide.addItemInput(<contenttweaker:catalyst> * 1);
nitric_oxide.addFluidInput(<liquid:nitrogen> * 500);
nitric_oxide.addFluidInput(<liquid:oxygen> * 500);
nitric_oxide.addFluidOutput(<liquid:nitric_oxide> * 1000);
nitric_oxide.build();

val nitrogen_dioxide = RecipeBuilder.newBuilder("nitrogen_dioxide", "catalytic_chem_reactor", 260);
nitrogen_dioxide.addItemInput(<contenttweaker:catalyst> * 1);
nitrogen_dioxide.addFluidInput(<liquid:nitric_oxide> * 1000);
nitrogen_dioxide.addFluidInput(<liquid:oxygen> * 500);
nitrogen_dioxide.addFluidOutput(<liquid:nitrogen_dioxide> * 1000);
nitrogen_dioxide.build();

val nitric_acid = RecipeBuilder.newBuilder("nitric_acid", "catalytic_chem_reactor", 265);
nitric_acid.addItemInput(<contenttweaker:catalyst> * 1);
nitric_acid.addFluidInput(<liquid:nitrogen_dioxide> * 1000);
nitric_acid.addFluidInput(<liquid:water> * 333);
nitric_acid.addFluidOutput(<liquid:nitric_acid> * 666);
nitric_acid.addFluidOutput(<liquid:nitric_oxide> * 333);
nitric_acid.build();

val acid_ethanol = RecipeBuilder.newBuilder("acid_ethanol", "catalytic_chem_reactor", 235);
acid_ethanol.addItemInput(<contenttweaker:catalyst> * 1);
acid_ethanol.addFluidInput(<liquid:ethanol> * 1000);
acid_ethanol.addFluidInput(<liquid:sulfuric_acid> * 1000);
acid_ethanol.addFluidOutput(<liquid:ethene> * 1000);
acid_ethanol.build();
