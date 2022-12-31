import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;


mods.nuclearcraft.Assembler.addRecipe(<ore:ingotCobalt>, <ore:dustRedstone>, <ore:plateTitanium>, null, <contenttweaker:catalyst>);

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




//Tier-2 (Basic), reduces time by 20 seconds




val tier_a_diborane = RecipeBuilder.newBuilder("tier_a_diborane", "catalytic_chem_reactor_basic", 280);
tier_a_diborane.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_diborane.addFluidInput(<liquid:boron> * 72);
tier_a_diborane.addFluidInput(<liquid:hydrogen> * 750);
tier_a_diborane.addFluidOutput(<liquid:diborane> * 250);
tier_a_diborane.build();

val tier_a_boric_acid = RecipeBuilder.newBuilder("tier_a_boric_acid", "catalytic_chem_reactor_basic", 230);
tier_a_boric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_boric_acid.addFluidInput(<liquid:diborane> * 125);
tier_a_boric_acid.addFluidInput(<liquid:water> * 750);
tier_a_boric_acid.addFluidOutput(<liquid:boric_acid> * 250);
tier_a_boric_acid.addFluidOutput(<liquid:hydrogen> * 750);
tier_a_boric_acid.build();

val tier_a_ammonia = RecipeBuilder.newBuilder("tier_a_ammonia", "catalytic_chem_reactor_basic", 255);
tier_a_ammonia.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_ammonia.addFluidInput(<liquid:nitrogen> * 250);
tier_a_ammonia.addFluidInput(<liquid:hydrogen> * 750);
tier_a_ammonia.addFluidOutput(<liquid:ammonia> * 500);
tier_a_ammonia.build();

val tier_a_boron_nitride_solution = RecipeBuilder.newBuilder("tier_a_boron_nitride_solution", "catalytic_chem_reactor_basic", 230);
tier_a_boron_nitride_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_boron_nitride_solution.addFluidInput(<liquid:boric_acid> * 500);
tier_a_boron_nitride_solution.addFluidInput(<liquid:ammonia> * 500);
tier_a_boron_nitride_solution.addFluidOutput(<liquid:boron_nitride_solution> * 333);
tier_a_boron_nitride_solution.addFluidOutput(<liquid:water> * 1000);
tier_a_boron_nitride_solution.build();

val tier_a_water = RecipeBuilder.newBuilder("tier_a_water", "catalytic_chem_reactor_basic", 230);
tier_a_water.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_water.addFluidInput(<liquid:hydrogen> * 500);
tier_a_water.addFluidInput(<liquid:oxygen> * 250);
tier_a_water.addFluidOutput(<liquid:water> * 250);
tier_a_water.build();

val tier_a_heavy_water = RecipeBuilder.newBuilder("tier_a_heavy_water", "catalytic_chem_reactor_basic", 230);
tier_a_heavy_water.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_heavy_water.addFluidInput(<liquid:deuterium> * 500);
tier_a_heavy_water.addFluidInput(<liquid:oxygen> * 250);
tier_a_heavy_water.addFluidOutput(<liquid:heavy_water> * 250);
tier_a_heavy_water.build();

val tier_a_hydrofluoric_acid = RecipeBuilder.newBuilder("tier_a_hydrofluoric_acid", "catalytic_chem_reactor_basic", 250);
tier_a_hydrofluoric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_hydrofluoric_acid.addFluidInput(<liquid:hydrogen> * 250);
tier_a_hydrofluoric_acid.addFluidInput(<liquid:fluorine> * 250);
tier_a_hydrofluoric_acid.addFluidOutput(<liquid:hydrofluoric_acid> * 250);
tier_a_hydrofluoric_acid.build();

val tier_a_lif = RecipeBuilder.newBuilder("tier_a_lif", "catalytic_chem_reactor_basic", 240);
tier_a_lif.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_lif.addFluidInput(<liquid:lithium> * 72);
tier_a_lif.addFluidInput(<liquid:fluorine> * 250);
tier_a_lif.addFluidOutput(<liquid:lif> * 72);
tier_a_lif.build();

val tier_a_beryllium_fluoride = RecipeBuilder.newBuilder("tier_a_beryllium_fluoride", "catalytic_chem_reactor_basic", 240);
tier_a_beryllium_fluoride.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_beryllium_fluoride.addFluidInput(<liquid:lithium> * 72);
tier_a_beryllium_fluoride.addFluidInput(<liquid:fluorine> * 250);
tier_a_beryllium_fluoride.addFluidOutput(<liquid:bef2> * 72);
tier_a_beryllium_fluoride.build();

val tier_a_sulfur_dioxide = RecipeBuilder.newBuilder("tier_a_sulfur_dioxide", "catalytic_chem_reactor_basic", 270);
tier_a_sulfur_dioxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_sulfur_dioxide.addFluidInput(<liquid:sulfur> * 333);
tier_a_sulfur_dioxide.addFluidInput(<liquid:oxygen> * 500);
tier_a_sulfur_dioxide.addFluidOutput(<liquid:sulfur_dioxide> * 500);
tier_a_sulfur_dioxide.build();

val tier_a_sulfur_trioxide = RecipeBuilder.newBuilder("tier_a_sulfur_trioxide", "catalytic_chem_reactor_basic", 270);
tier_a_sulfur_trioxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_sulfur_trioxide.addFluidInput(<liquid:sulfur_dioxide> * 500);
tier_a_sulfur_trioxide.addFluidInput(<liquid:oxygen> * 250);
tier_a_sulfur_trioxide.addFluidOutput(<liquid:sulfur_trioxide> * 500);
tier_a_sulfur_trioxide.build();

val tier_a_sulfuric_acid = RecipeBuilder.newBuilder("tier_a_sulfuric_acid", "catalytic_chem_reactor_basic", 210);
tier_a_sulfuric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_sulfuric_acid.addFluidInput(<liquid:sulfur_trioxide> * 250);
tier_a_sulfuric_acid.addFluidInput(<liquid:oxygen> * 250);
tier_a_sulfuric_acid.addFluidOutput(<liquid:sulfuric_acid> * 250);
tier_a_sulfuric_acid.build();

val tier_a_calcium_sulfate_solution = RecipeBuilder.newBuilder("tier_a_calcium_sulfate_solution", "catalytic_chem_reactor_basic", 180);
tier_a_calcium_sulfate_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_calcium_sulfate_solution.addFluidInput(<liquid:fluorite_water> * 333);
tier_a_calcium_sulfate_solution.addFluidInput(<liquid:sulfuric_acid> * 500);
tier_a_calcium_sulfate_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 1000);
tier_a_calcium_sulfate_solution.addFluidOutput(<liquid:calcium_sulfate_solution> * 333);
tier_a_calcium_sulfate_solution.build();

val tier_a_sodium_hydroxide_solution = RecipeBuilder.newBuilder("tier_a_sodium_hydroxide_solution", "catalytic_chem_reactor_basic", 260);
tier_a_sodium_hydroxide_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_sodium_hydroxide_solution.addFluidInput(<liquid:sodium_fluoride_solution> * 333);
tier_a_sodium_hydroxide_solution.addFluidInput(<liquid:water> * 500);
tier_a_sodium_hydroxide_solution.addFluidOutput(<liquid:sodium_hydroxide_solution> * 333);
tier_a_sodium_hydroxide_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_a_sodium_hydroxide_solution.build();

val tier_a_potassium_hydroxide_solution = RecipeBuilder.newBuilder("tier_a_potassium_hydroxide_solution", "catalytic_chem_reactor_basic", 255);
tier_a_potassium_hydroxide_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_potassium_hydroxide_solution.addFluidInput(<liquid:potassium_fluoride_solution> * 333);
tier_a_potassium_hydroxide_solution.addFluidInput(<liquid:water> * 500);
tier_a_potassium_hydroxide_solution.addFluidOutput(<liquid:potassium_hydroxide_solution> * 333);
tier_a_potassium_hydroxide_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_a_potassium_hydroxide_solution.build();

val tier_a_sodium_fluoride_solution = RecipeBuilder.newBuilder("tier_a_sodium_fluoride_solution", "catalytic_chem_reactor_basic", 630);
tier_a_sodium_fluoride_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_sodium_fluoride_solution.addFluidInput(<liquid:sodium_fluoride_solution> * 333);
tier_a_sodium_fluoride_solution.addFluidInput(<liquid:boric_acid> * 1000);
tier_a_sodium_fluoride_solution.addFluidOutput(<liquid:borax_solution> * 167);
tier_a_sodium_fluoride_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_a_sodium_fluoride_solution.build();

val tier_a_oxygen_difluoride = RecipeBuilder.newBuilder("tier_a_oxygen_difluoride", "catalytic_chem_reactor_basic", 275);
tier_a_oxygen_difluoride.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_oxygen_difluoride.addFluidInput(<liquid:oxygen_difluoride> * 250);
tier_a_oxygen_difluoride.addFluidInput(<liquid:water> * 250);
tier_a_oxygen_difluoride.addFluidOutput(<liquid:oxygen> * 250);
tier_a_oxygen_difluoride.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_a_oxygen_difluoride.build();

val tier_a_fluorine = RecipeBuilder.newBuilder("tier_a_fluorine", "catalytic_chem_reactor_basic", 290);
tier_a_fluorine.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_fluorine.addFluidInput(<liquid:oxygen_difluoride> * 250);
tier_a_fluorine.addFluidInput(<liquid:sulfur_dioxide> * 250);
tier_a_fluorine.addFluidOutput(<liquid:sulfur_trioxide> * 250);
tier_a_fluorine.addFluidOutput(<liquid:fluorine> * 250);
tier_a_fluorine.build();

val tier_a_difluoride_oxygen = RecipeBuilder.newBuilder("tier_a_difluoride_oxygen", "catalytic_chem_reactor_basic", 295);
tier_a_difluoride_oxygen.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_difluoride_oxygen.addFluidInput(<liquid:oxygen> * 250);
tier_a_difluoride_oxygen.addFluidInput(<liquid:fluorine> * 500);
tier_a_difluoride_oxygen.addFluidOutput(<liquid:oxygen_difluoride> * 500);
tier_a_difluoride_oxygen.build();

val tier_a_ethanol = RecipeBuilder.newBuilder("tier_a_ethanol", "catalytic_chem_reactor_basic", 205);
tier_a_ethanol.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_ethanol.addFluidInput(<liquid:sugar> * 36);
tier_a_ethanol.addFluidInput(<liquid:water> * 250);
tier_a_ethanol.addFluidOutput(<liquid:ethanol> * 1000);
tier_a_ethanol.build();

val tier_a_carbon_monoxide = RecipeBuilder.newBuilder("tier_a_carbon_monoxide", "catalytic_chem_reactor_basic", 220);
tier_a_carbon_monoxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_carbon_monoxide.addFluidInput(<liquid:carbon_dioxide> * 250);
tier_a_carbon_monoxide.addFluidInput(<liquid:hydrogen> * 250);
tier_a_carbon_monoxide.addFluidOutput(<liquid:carbon_monoxide> * 250);
tier_a_carbon_monoxide.addFluidOutput(<liquid:water> * 250);
tier_a_carbon_monoxide.build();

val tier_a_methanol = RecipeBuilder.newBuilder("tier_a_methanol", "catalytic_chem_reactor_basic", 210);
tier_a_methanol.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_methanol.addFluidInput(<liquid:carbon_monoxide> * 250);
tier_a_methanol.addFluidInput(<liquid:hydrogen> * 500);
tier_a_methanol.addFluidOutput(<liquid:methanol> * 250);
tier_a_methanol.build();

val tier_a_fluoromethane = RecipeBuilder.newBuilder("tier_a_fluoromethane", "catalytic_chem_reactor_basic", 225);
tier_a_fluoromethane.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_fluoromethane.addFluidInput(<liquid:methanol> * 250);
tier_a_fluoromethane.addFluidInput(<liquid:fluorine> * 250);
tier_a_fluoromethane.addFluidOutput(<liquid:fluoromethane> * 250);
tier_a_fluoromethane.addFluidOutput(<liquid:water> * 250);
tier_a_fluoromethane.build();

val tier_a_ethene = RecipeBuilder.newBuilder("tier_a_ethene", "catalytic_chem_reactor_basic", 225);
tier_a_ethene.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_ethene.addFluidInput(<liquid:fluoromethane> * 500);
tier_a_ethene.addFluidInput(<liquid:naoh> * 333);
tier_a_ethene.addFluidOutput(<liquid:ethene> * 250);
tier_a_ethene.addFluidOutput(<liquid:sodium_fluoride_solution> * 333);
tier_a_ethene.build();

val tier_a_koh = RecipeBuilder.newBuilder("tier_a_koh", "catalytic_chem_reactor_basic", 220);
tier_a_koh.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_koh.addFluidInput(<liquid:fluoromethane> * 500);
tier_a_koh.addFluidInput(<liquid:koh> * 333);
tier_a_koh.addFluidOutput(<liquid:ethene> * 250);
tier_a_koh.addFluidOutput(<liquid:potassium_fluoride_solution> * 333);
tier_a_koh.build();

val tier_a_sulfur_trioxide_less = RecipeBuilder.newBuilder("tier_a_sulfur_trioxide_less", "catalytic_chem_reactor_basic", 200);
tier_a_sulfur_trioxide_less.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_sulfur_trioxide_less.addFluidInput(<liquid:ethene> * 250);
tier_a_sulfur_trioxide_less.addFluidInput(<liquid:sulfuric_acid> * 250);
tier_a_sulfur_trioxide_less.addFluidOutput(<liquid:ethanol> * 250);
tier_a_sulfur_trioxide_less.addFluidOutput(<liquid:sulfur_trioxide> * 250);
tier_a_sulfur_trioxide_less.build();

val tier_a_arsenic = RecipeBuilder.newBuilder("tier_a_arsenic", "catalytic_chem_reactor_basic", 190);
tier_a_arsenic.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_arsenic.addFluidInput(<liquid:boron> * 72);
tier_a_arsenic.addFluidInput(<liquid:arsenic> * 333);
tier_a_arsenic.addFluidOutput(<liquid:bas> * 333);
tier_a_arsenic.build();

val tier_a_alugentum = RecipeBuilder.newBuilder("tier_a_alugentum", "catalytic_chem_reactor_basic", 185);
tier_a_alugentum.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_alugentum.addFluidInput(<liquid:alugentum> * 24);
tier_a_alugentum.addFluidInput(<liquid:oxygen> * 1000);
tier_a_alugentum.addFluidOutput(<liquid:alumina> * 48);
tier_a_alugentum.addFluidOutput(<liquid:silver> * 24);
tier_a_alugentum.build();

val tier_a_witherite_water = RecipeBuilder.newBuilder("tier_a_witherite_water", "catalytic_chem_reactor_basic", 180);
tier_a_witherite_water.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_witherite_water.addFluidInput(<liquid:witherite_water> * 500);
tier_a_witherite_water.addFluidInput(<liquid:nitric_acid> * 1000);
tier_a_witherite_water.addFluidOutput(<liquid:barium_nitrate_solution> * 500);
tier_a_witherite_water.build();

val tier_a_nitric_oxide = RecipeBuilder.newBuilder("tier_a_nitric_oxide", "catalytic_chem_reactor_basic", 235);
tier_a_nitric_oxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_nitric_oxide.addFluidInput(<liquid:nitrogen> * 500);
tier_a_nitric_oxide.addFluidInput(<liquid:oxygen> * 500);
tier_a_nitric_oxide.addFluidOutput(<liquid:nitric_oxide> * 1000);
tier_a_nitric_oxide.build();

val tier_a_nitrogen_dioxide = RecipeBuilder.newBuilder("tier_a_nitrogen_dioxide", "catalytic_chem_reactor_basic", 240);
tier_a_nitrogen_dioxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_nitrogen_dioxide.addFluidInput(<liquid:nitric_oxide> * 1000);
tier_a_nitrogen_dioxide.addFluidInput(<liquid:oxygen> * 500);
tier_a_nitrogen_dioxide.addFluidOutput(<liquid:nitrogen_dioxide> * 1000);
tier_a_nitrogen_dioxide.build();

val tier_a_nitric_acid = RecipeBuilder.newBuilder("tier_a_nitric_acid", "catalytic_chem_reactor_basic", 245);
tier_a_nitric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_nitric_acid.addFluidInput(<liquid:nitrogen_dioxide> * 1000);
tier_a_nitric_acid.addFluidInput(<liquid:water> * 333);
tier_a_nitric_acid.addFluidOutput(<liquid:nitric_acid> * 666);
tier_a_nitric_acid.addFluidOutput(<liquid:nitric_oxide> * 333);
tier_a_nitric_acid.build();

val tier_a_acid_ethanol = RecipeBuilder.newBuilder("tier_a_acid_ethanol", "catalytic_chem_reactor_basic", 215);
tier_a_acid_ethanol.addItemInput(<contenttweaker:catalyst> * 1);
tier_a_acid_ethanol.addFluidInput(<liquid:ethanol> * 1000);
tier_a_acid_ethanol.addFluidInput(<liquid:sulfuric_acid> * 1000);
tier_a_acid_ethanol.addFluidOutput(<liquid:ethene> * 1000);
tier_a_acid_ethanol.build();




//Tier-3 (Advanced), reduces time by 50 seconds 



val tier_b_diborane = RecipeBuilder.newBuilder("tier_b_diborane", "catalytic_chem_reactor_advanced", 250);
tier_b_diborane.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_diborane.addFluidInput(<liquid:boron> * 72);
tier_b_diborane.addFluidInput(<liquid:hydrogen> * 750);
tier_b_diborane.addFluidOutput(<liquid:diborane> * 250);
tier_b_diborane.build();

val tier_b_boric_acid = RecipeBuilder.newBuilder("tier_b_boric_acid", "catalytic_chem_reactor_advanced", 200);
tier_b_boric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_boric_acid.addFluidInput(<liquid:diborane> * 125);
tier_b_boric_acid.addFluidInput(<liquid:water> * 750);
tier_b_boric_acid.addFluidOutput(<liquid:boric_acid> * 250);
tier_b_boric_acid.addFluidOutput(<liquid:hydrogen> * 750);
tier_b_boric_acid.build();

val tier_b_ammonia = RecipeBuilder.newBuilder("tier_b_ammonia", "catalytic_chem_reactor_advanced", 225);
tier_b_ammonia.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_ammonia.addFluidInput(<liquid:nitrogen> * 250);
tier_b_ammonia.addFluidInput(<liquid:hydrogen> * 750);
tier_b_ammonia.addFluidOutput(<liquid:ammonia> * 500);
tier_b_ammonia.build();

val tier_b_boron_nitride_solution = RecipeBuilder.newBuilder("tier_b_boron_nitride_solution", "catalytic_chem_reactor_advanced", 200);
tier_b_boron_nitride_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_boron_nitride_solution.addFluidInput(<liquid:boric_acid> * 500);
tier_b_boron_nitride_solution.addFluidInput(<liquid:ammonia> * 500);
tier_b_boron_nitride_solution.addFluidOutput(<liquid:boron_nitride_solution> * 333);
tier_b_boron_nitride_solution.addFluidOutput(<liquid:water> * 1000);
tier_b_boron_nitride_solution.build();

val tier_b_water = RecipeBuilder.newBuilder("tier_b_water", "catalytic_chem_reactor_advanced", 200);
tier_b_water.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_water.addFluidInput(<liquid:hydrogen> * 500);
tier_b_water.addFluidInput(<liquid:oxygen> * 250);
tier_b_water.addFluidOutput(<liquid:water> * 250);
tier_b_water.build();

val tier_b_heavy_water = RecipeBuilder.newBuilder("tier_b_heavy_water", "catalytic_chem_reactor_advanced", 200);
tier_b_heavy_water.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_heavy_water.addFluidInput(<liquid:deuterium> * 500);
tier_b_heavy_water.addFluidInput(<liquid:oxygen> * 250);
tier_b_heavy_water.addFluidOutput(<liquid:heavy_water> * 250);
tier_b_heavy_water.build();

val tier_b_hydrofluoric_acid = RecipeBuilder.newBuilder("tier_b_hydrofluoric_acid", "catalytic_chem_reactor_advanced", 220);
tier_b_hydrofluoric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_hydrofluoric_acid.addFluidInput(<liquid:hydrogen> * 250);
tier_b_hydrofluoric_acid.addFluidInput(<liquid:fluorine> * 250);
tier_b_hydrofluoric_acid.addFluidOutput(<liquid:hydrofluoric_acid> * 250);
tier_b_hydrofluoric_acid.build();

val tier_b_lif = RecipeBuilder.newBuilder("tier_b_lif", "catalytic_chem_reactor_advanced", 210);
tier_b_lif.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_lif.addFluidInput(<liquid:lithium> * 72);
tier_b_lif.addFluidInput(<liquid:fluorine> * 250);
tier_b_lif.addFluidOutput(<liquid:lif> * 72);
tier_b_lif.build();

val tier_b_beryllium_fluoride = RecipeBuilder.newBuilder("tier_b_beryllium_fluoride", "catalytic_chem_reactor_advanced", 210);
tier_b_beryllium_fluoride.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_beryllium_fluoride.addFluidInput(<liquid:lithium> * 72);
tier_b_beryllium_fluoride.addFluidInput(<liquid:fluorine> * 250);
tier_b_beryllium_fluoride.addFluidOutput(<liquid:bef2> * 72);
tier_b_beryllium_fluoride.build();

val tier_b_sulfur_dioxide = RecipeBuilder.newBuilder("tier_b_sulfur_dioxide", "catalytic_chem_reactor_advanced", 240);
tier_b_sulfur_dioxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_sulfur_dioxide.addFluidInput(<liquid:sulfur> * 333);
tier_b_sulfur_dioxide.addFluidInput(<liquid:oxygen> * 500);
tier_b_sulfur_dioxide.addFluidOutput(<liquid:sulfur_dioxide> * 500);
tier_b_sulfur_dioxide.build();

val tier_b_sulfur_trioxide = RecipeBuilder.newBuilder("tier_b_sulfur_trioxide", "catalytic_chem_reactor_advanced", 240);
tier_b_sulfur_trioxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_sulfur_trioxide.addFluidInput(<liquid:sulfur_dioxide> * 500);
tier_b_sulfur_trioxide.addFluidInput(<liquid:oxygen> * 250);
tier_b_sulfur_trioxide.addFluidOutput(<liquid:sulfur_trioxide> * 500);
tier_b_sulfur_trioxide.build();

val tier_b_sulfuric_acid = RecipeBuilder.newBuilder("tier_b_sulfuric_acid", "catalytic_chem_reactor_advanced", 180);
tier_b_sulfuric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_sulfuric_acid.addFluidInput(<liquid:sulfur_trioxide> * 250);
tier_b_sulfuric_acid.addFluidInput(<liquid:oxygen> * 250);
tier_b_sulfuric_acid.addFluidOutput(<liquid:sulfuric_acid> * 250);
tier_b_sulfuric_acid.build();

val tier_b_calcium_sulfate_solution = RecipeBuilder.newBuilder("tier_b_calcium_sulfate_solution", "catalytic_chem_reactor_advanced", 150);
tier_b_calcium_sulfate_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_calcium_sulfate_solution.addFluidInput(<liquid:fluorite_water> * 333);
tier_b_calcium_sulfate_solution.addFluidInput(<liquid:sulfuric_acid> * 500);
tier_b_calcium_sulfate_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 1000);
tier_b_calcium_sulfate_solution.addFluidOutput(<liquid:calcium_sulfate_solution> * 333);
tier_b_calcium_sulfate_solution.build();

val tier_b_sodium_hydroxide_solution = RecipeBuilder.newBuilder("tier_b_sodium_hydroxide_solution", "catalytic_chem_reactor_advanced", 230);
tier_b_sodium_hydroxide_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_sodium_hydroxide_solution.addFluidInput(<liquid:sodium_fluoride_solution> * 333);
tier_b_sodium_hydroxide_solution.addFluidInput(<liquid:water> * 500);
tier_b_sodium_hydroxide_solution.addFluidOutput(<liquid:sodium_hydroxide_solution> * 333);
tier_b_sodium_hydroxide_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_b_sodium_hydroxide_solution.build();

val tier_b_potassium_hydroxide_solution = RecipeBuilder.newBuilder("tier_b_potassium_hydroxide_solution", "catalytic_chem_reactor_advanced", 225);
tier_b_potassium_hydroxide_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_potassium_hydroxide_solution.addFluidInput(<liquid:potassium_fluoride_solution> * 333);
tier_b_potassium_hydroxide_solution.addFluidInput(<liquid:water> * 500);
tier_b_potassium_hydroxide_solution.addFluidOutput(<liquid:potassium_hydroxide_solution> * 333);
tier_b_potassium_hydroxide_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_b_potassium_hydroxide_solution.build();

val tier_b_sodium_fluoride_solution = RecipeBuilder.newBuilder("tier_b_sodium_fluoride_solution", "catalytic_chem_reactor_advanced", 600);
tier_b_sodium_fluoride_solution.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_sodium_fluoride_solution.addFluidInput(<liquid:sodium_fluoride_solution> * 333);
tier_b_sodium_fluoride_solution.addFluidInput(<liquid:boric_acid> * 1000);
tier_b_sodium_fluoride_solution.addFluidOutput(<liquid:borax_solution> * 167);
tier_b_sodium_fluoride_solution.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_b_sodium_fluoride_solution.build();

val tier_b_oxygen_difluoride = RecipeBuilder.newBuilder("tier_b_oxygen_difluoride", "catalytic_chem_reactor_advanced", 245);
tier_b_oxygen_difluoride.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_oxygen_difluoride.addFluidInput(<liquid:oxygen_difluoride> * 250);
tier_b_oxygen_difluoride.addFluidInput(<liquid:water> * 250);
tier_b_oxygen_difluoride.addFluidOutput(<liquid:oxygen> * 250);
tier_b_oxygen_difluoride.addFluidOutput(<liquid:hydrofluoric_acid> * 500);
tier_b_oxygen_difluoride.build();

val tier_b_fluorine = RecipeBuilder.newBuilder("tier_b_fluorine", "catalytic_chem_reactor_advanced", 260);
tier_b_fluorine.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_fluorine.addFluidInput(<liquid:oxygen_difluoride> * 250);
tier_b_fluorine.addFluidInput(<liquid:sulfur_dioxide> * 250);
tier_b_fluorine.addFluidOutput(<liquid:sulfur_trioxide> * 250);
tier_b_fluorine.addFluidOutput(<liquid:fluorine> * 250);
tier_b_fluorine.build();

val tier_b_difluoride_oxygen = RecipeBuilder.newBuilder("tier_b_difluoride_oxygen", "catalytic_chem_reactor_advanced", 265);
tier_b_difluoride_oxygen.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_difluoride_oxygen.addFluidInput(<liquid:oxygen> * 250);
tier_b_difluoride_oxygen.addFluidInput(<liquid:fluorine> * 500);
tier_b_difluoride_oxygen.addFluidOutput(<liquid:oxygen_difluoride> * 500);
tier_b_difluoride_oxygen.build();

val tier_b_ethanol = RecipeBuilder.newBuilder("tier_b_ethanol", "catalytic_chem_reactor_advanced", 175);
tier_b_ethanol.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_ethanol.addFluidInput(<liquid:sugar> * 36);
tier_b_ethanol.addFluidInput(<liquid:water> * 250);
tier_b_ethanol.addFluidOutput(<liquid:ethanol> * 1000);
tier_b_ethanol.build();

val tier_b_carbon_monoxide = RecipeBuilder.newBuilder("tier_b_carbon_monoxide", "catalytic_chem_reactor_advanced", 190);
tier_b_carbon_monoxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_carbon_monoxide.addFluidInput(<liquid:carbon_dioxide> * 250);
tier_b_carbon_monoxide.addFluidInput(<liquid:hydrogen> * 250);
tier_b_carbon_monoxide.addFluidOutput(<liquid:carbon_monoxide> * 250);
tier_b_carbon_monoxide.addFluidOutput(<liquid:water> * 250);
tier_b_carbon_monoxide.build();

val tier_b_methanol = RecipeBuilder.newBuilder("tier_b_methanol", "catalytic_chem_reactor_advanced", 180);
tier_b_methanol.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_methanol.addFluidInput(<liquid:carbon_monoxide> * 250);
tier_b_methanol.addFluidInput(<liquid:hydrogen> * 500);
tier_b_methanol.addFluidOutput(<liquid:methanol> * 250);
tier_b_methanol.build();

val tier_b_fluoromethane = RecipeBuilder.newBuilder("tier_b_fluoromethane", "catalytic_chem_reactor_advanced", 195);
tier_b_fluoromethane.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_fluoromethane.addFluidInput(<liquid:methanol> * 250);
tier_b_fluoromethane.addFluidInput(<liquid:fluorine> * 250);
tier_b_fluoromethane.addFluidOutput(<liquid:fluoromethane> * 250);
tier_b_fluoromethane.addFluidOutput(<liquid:water> * 250);
tier_b_fluoromethane.build();

val tier_b_ethene = RecipeBuilder.newBuilder("tier_b_ethene", "catalytic_chem_reactor_advanced", 195);
tier_b_ethene.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_ethene.addFluidInput(<liquid:fluoromethane> * 500);
tier_b_ethene.addFluidInput(<liquid:naoh> * 333);
tier_b_ethene.addFluidOutput(<liquid:ethene> * 250);
tier_b_ethene.addFluidOutput(<liquid:sodium_fluoride_solution> * 333);
tier_b_ethene.build();

val tier_b_koh = RecipeBuilder.newBuilder("tier_b_koh", "catalytic_chem_reactor_advanced", 190);
tier_b_koh.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_koh.addFluidInput(<liquid:fluoromethane> * 500);
tier_b_koh.addFluidInput(<liquid:koh> * 333);
tier_b_koh.addFluidOutput(<liquid:ethene> * 250);
tier_b_koh.addFluidOutput(<liquid:potassium_fluoride_solution> * 333);
tier_b_koh.build();

val tier_b_sulfur_trioxide_less = RecipeBuilder.newBuilder("tier_b_sulfur_trioxide_less", "catalytic_chem_reactor_advanced", 170);
tier_b_sulfur_trioxide_less.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_sulfur_trioxide_less.addFluidInput(<liquid:ethene> * 250);
tier_b_sulfur_trioxide_less.addFluidInput(<liquid:sulfuric_acid> * 250);
tier_b_sulfur_trioxide_less.addFluidOutput(<liquid:ethanol> * 250);
tier_b_sulfur_trioxide_less.addFluidOutput(<liquid:sulfur_trioxide> * 250);
tier_b_sulfur_trioxide_less.build();

val tier_b_arsenic = RecipeBuilder.newBuilder("tier_b_arsenic", "catalytic_chem_reactor_advanced", 160);
tier_b_arsenic.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_arsenic.addFluidInput(<liquid:boron> * 72);
tier_b_arsenic.addFluidInput(<liquid:arsenic> * 333);
tier_b_arsenic.addFluidOutput(<liquid:bas> * 333);
tier_b_arsenic.build();

val tier_b_alugentum = RecipeBuilder.newBuilder("tier_b_alugentum", "catalytic_chem_reactor_advanced", 155);
tier_b_alugentum.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_alugentum.addFluidInput(<liquid:alugentum> * 24);
tier_b_alugentum.addFluidInput(<liquid:oxygen> * 1000);
tier_b_alugentum.addFluidOutput(<liquid:alumina> * 48);
tier_b_alugentum.addFluidOutput(<liquid:silver> * 24);
tier_b_alugentum.build();

val tier_b_witherite_water = RecipeBuilder.newBuilder("tier_b_witherite_water", "catalytic_chem_reactor_advanced", 150);
tier_b_witherite_water.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_witherite_water.addFluidInput(<liquid:witherite_water> * 500);
tier_b_witherite_water.addFluidInput(<liquid:nitric_acid> * 1000);
tier_b_witherite_water.addFluidOutput(<liquid:barium_nitrate_solution> * 500);
tier_b_witherite_water.build();

val tier_b_nitric_oxide = RecipeBuilder.newBuilder("tier_b_nitric_oxide", "catalytic_chem_reactor_advanced", 205);
tier_b_nitric_oxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_nitric_oxide.addFluidInput(<liquid:nitrogen> * 500);
tier_b_nitric_oxide.addFluidInput(<liquid:oxygen> * 500);
tier_b_nitric_oxide.addFluidOutput(<liquid:nitric_oxide> * 1000);
tier_b_nitric_oxide.build();

val tier_b_nitrogen_dioxide = RecipeBuilder.newBuilder("tier_b_nitrogen_dioxide", "catalytic_chem_reactor_advanced", 210);
tier_b_nitrogen_dioxide.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_nitrogen_dioxide.addFluidInput(<liquid:nitric_oxide> * 1000);
tier_b_nitrogen_dioxide.addFluidInput(<liquid:oxygen> * 500);
tier_b_nitrogen_dioxide.addFluidOutput(<liquid:nitrogen_dioxide> * 1000);
tier_b_nitrogen_dioxide.build();

val tier_b_nitric_acid = RecipeBuilder.newBuilder("tier_b_nitric_acid", "catalytic_chem_reactor_advanced", 215);
tier_b_nitric_acid.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_nitric_acid.addFluidInput(<liquid:nitrogen_dioxide> * 1000);
tier_b_nitric_acid.addFluidInput(<liquid:water> * 333);
tier_b_nitric_acid.addFluidOutput(<liquid:nitric_acid> * 666);
tier_b_nitric_acid.addFluidOutput(<liquid:nitric_oxide> * 333);
tier_b_nitric_acid.build();

val tier_b_acid_ethanol = RecipeBuilder.newBuilder("tier_b_acid_ethanol", "catalytic_chem_reactor_advanced", 185);
tier_b_acid_ethanol.addItemInput(<contenttweaker:catalyst> * 1);
tier_b_acid_ethanol.addFluidInput(<liquid:ethanol> * 1000);
tier_b_acid_ethanol.addFluidInput(<liquid:sulfuric_acid> * 1000);
tier_b_acid_ethanol.addFluidOutput(<liquid:ethene> * 1000);
tier_b_acid_ethanol.build();