import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

//Fuel Reprocessor now valid for QMD recipes, all other recipes completely shifted to SILEX

//htra-highly toxic radioactive wastes
val htra1 = [<hbm:powder_sr90_tiny>,<hbm:powder_cs137_tiny>] as IItemStack[];
val htra2 = [<contenttweaker:powder_molybdenum_tiny>,<hbm:powder_cs137_tiny>] as IItemStack[];
val htra3 = [<contenttweaker:powder_pr147_tiny>,<hbm:powder_sr90_tiny>] as IItemStack[];
val htra4 = [<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_pr147_tiny>] as IItemStack[];
val htra5 = [<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_eu155_tiny>] as IItemStack[];
val htra6 = [<contenttweaker:powder_ru106_tiny>,<contenttweaker:powder_pr147_tiny>] as IItemStack[];
val htra7 = [<contenttweaker:powder_ru106_tiny>,<contenttweaker:powder_eu155_tiny>] as IItemStack[];

//Oxide and Nitride
/*htra1

SPACE to continue

*/
val depleted1 = ["TBUOX","TBUN","LEUOX233","LEUN233"] as string[];
val depfuelarray1 = [[<nuclearcraft:depleted_fuel_thorium:1>,<nuclearcraft:uranium:2>,<nuclearcraft:uranium:12> * 5,<nuclearcraft:neptunium:2>,<nuclearcraft:neptunium:7>],
    [<nuclearcraft:depleted_fuel_thorium:2>,<nuclearcraft:uranium:3>,<nuclearcraft:uranium:13> * 5,<nuclearcraft:neptunium:3>,<nuclearcraft:neptunium:8>],
    [<nuclearcraft:depleted_fuel_uranium:1>,<nuclearcraft:americium:12>,<nuclearcraft:uranium:12> * 5,<nuclearcraft:plutonium:12>,<nuclearcraft:plutonium:17>],
    [<nuclearcraft:depleted_fuel_uranium:2>,<nuclearcraft:americium:13>,<nuclearcraft:uranium:13> * 5,<nuclearcraft:plutonium:13>,<nuclearcraft:plutonium:18>]] as IItemStack[][];

for i,fuel in depleted1{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 240).addItemInput(depfuelarray1[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_pentacene>).setChance(0).addEnergyPerTickInput(32).addItemOutput(depfuelarray1[i][1]).addItemOutput(depfuelarray1[i][2]).addItemOutput(depfuelarray1[i][3]).addItemOutput(depfuelarray1[i][4]).addItemOutput(htra1[0] * 3).addItemOutput(htra1[1] * 2).build();
}

val depleted2 = ["HEUOX233","HEUN233"] as string[];
val depfuelarray2 = [[<nuclearcraft:depleted_fuel_uranium:5>,<nuclearcraft:uranium:7>,<nuclearcraft:uranium:12> * 2,<nuclearcraft:plutonium:17> * 3,<nuclearcraft:americium:12>],
    [<nuclearcraft:depleted_fuel_uranium:6>,<nuclearcraft:uranium:8>,<nuclearcraft:uranium:13> * 2,<nuclearcraft:plutonium:18> * 3,<nuclearcraft:americium:13>]] as IItemStack[][];

for i,fuel in depleted2{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray2[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray2[i][1]).addItemOutput(depfuelarray2[i][2]).addItemOutput(depfuelarray2[i][3]).addItemOutput(depfuelarray2[i][4]).addItemOutput(htra1[0] * 4).addItemOutput(htra1[1] * 3).build();
}

/*htra2

SPACE to continue

*/
val depleted3 = ["LEUOX235","LEUN235","LENOX236","LENN236"] as string[];
val depfuelarray3 = [[<nuclearcraft:depleted_fuel_uranium:9>,<nuclearcraft:uranium:12> * 4,<nuclearcraft:plutonium:7>,<nuclearcraft:plutonium:17> * 2,<nuclearcraft:americium:12>],
    [<nuclearcraft:depleted_fuel_uranium:10>,<nuclearcraft:uranium:13> * 4,<nuclearcraft:plutonium:8>,<nuclearcraft:plutonium:18> * 2,<nuclearcraft:americium:13>],
    [<nuclearcraft:depleted_fuel_neptunium:1>,<nuclearcraft:uranium:12> * 4,<nuclearcraft:neptunium:7>,<nuclearcraft:plutonium:17> * 2,<nuclearcraft:plutonium:12>],
    [<nuclearcraft:depleted_fuel_neptunium:2>,<nuclearcraft:uranium:13> * 4,<nuclearcraft:neptunium:8>,<nuclearcraft:plutonium:18> * 2,<nuclearcraft:plutonium:13>]] as IItemStack[][];

for i,fuel in depleted3{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray3[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(32).addItemOutput(depfuelarray3[i][1]).addItemOutput(depfuelarray3[i][2]).addItemOutput(depfuelarray3[i][3]).addItemOutput(depfuelarray3[i][4]).addItemOutput(htra2[0] * 3).addItemOutput(htra2[1] * 2).build();
}

val depleted4 = ["HEUOX235","HEUN235"] as string[];
val depfuelarray4 = [[<nuclearcraft:depleted_fuel_uranium:13>,<nuclearcraft:uranium:12> * 3,<nuclearcraft:neptunium:2>,<nuclearcraft:plutonium:17> * 2,<nuclearcraft:americium:12>],
    [<nuclearcraft:depleted_fuel_uranium:14>,<nuclearcraft:uranium:13> * 3,<nuclearcraft:neptunium:3>,<nuclearcraft:plutonium:18> * 2,<nuclearcraft:americium:13>]] as IItemStack[][];

for i,fuel in depleted4{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray4[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray4[i][1]).addItemOutput(depfuelarray4[i][2]).addItemOutput(depfuelarray4[i][3]).addItemOutput(depfuelarray4[i][4]).addItemOutput(htra2[0] * 4).addItemOutput(htra2[1] * 3).build();
}

val depleted5 = ["HENOX236","HENN236"] as string[];
val depfuelarray5 = [[<nuclearcraft:depleted_fuel_neptunium:5>,<nuclearcraft:uranium:12> * 4,<nuclearcraft:plutonium:2>,<nuclearcraft:plutonium:12>,<nuclearcraft:plutonium:17>],
    [<nuclearcraft:depleted_fuel_neptunium:6>,<nuclearcraft:uranium:13> * 4,<nuclearcraft:plutonium:3>,<nuclearcraft:plutonium:13>,<nuclearcraft:plutonium:18>]] as IItemStack[][];

for i,fuel in depleted5{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray5[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray5[i][1]).addItemOutput(depfuelarray5[i][2]).addItemOutput(depfuelarray5[i][3]).addItemOutput(depfuelarray5[i][4]).addItemOutput(htra2[0] * 4).addItemOutput(htra2[1] * 3).build();
}

/*htra3

SPACE to continue

*/
val depleted6 = ["LEPOX239","LEPN239","LEPOX241","LEPN241"] as string[];
val depfuelarray6 = [[<nuclearcraft:depleted_fuel_plutonium:1>,<nuclearcraft:plutonium:17> * 5,<nuclearcraft:americium:7>,<nuclearcraft:americium:12>,<nuclearcraft:curium:12>],
    [<nuclearcraft:depleted_fuel_plutonium:2>,<nuclearcraft:plutonium:18> * 5,<nuclearcraft:americium:8>,<nuclearcraft:americium:13>,<nuclearcraft:curium:13>],
    [<nuclearcraft:depleted_fuel_plutonium:9>,<nuclearcraft:plutonium:17> * 5,<nuclearcraft:americium:12>,<nuclearcraft:curium:12>,<nuclearcraft:berkelium:2>],
    [<nuclearcraft:depleted_fuel_plutonium:10>,<nuclearcraft:plutonium:18> * 5,<nuclearcraft:americium:13>,<nuclearcraft:curium:13>,<nuclearcraft:berkelium:3>]] as IItemStack[][];

for i,fuel in depleted6{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray6[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(32).addItemOutput(depfuelarray6[i][1]).addItemOutput(depfuelarray6[i][2]).addItemOutput(depfuelarray6[i][3]).addItemOutput(depfuelarray6[i][4]).addItemOutput(htra3[0] * 3).addItemOutput(htra3[1] * 2).build();
}

val depleted7 = ["HEPOX239","HEPN239","HEPOX241","HEPN241","MOX239","MNI239","MOX241","MNI241"] as string[];
val depfuelarray7 = [[<nuclearcraft:depleted_fuel_plutonium:5>,<nuclearcraft:plutonium:12>,<nuclearcraft:americium:7>,<nuclearcraft:americium:12> * 4,<nuclearcraft:curium:2>],
    [<nuclearcraft:depleted_fuel_plutonium:6>,<nuclearcraft:plutonium:13>,<nuclearcraft:americium:8>,<nuclearcraft:americium:13> * 4,<nuclearcraft:curium:3>],
    [<nuclearcraft:depleted_fuel_plutonium:13>,<nuclearcraft:americium:2>,<nuclearcraft:americium:7>,<nuclearcraft:americium:12> * 3,<nuclearcraft:curium:12> * 2],
    [<nuclearcraft:depleted_fuel_plutonium:14>,<nuclearcraft:americium:3>,<nuclearcraft:americium:8>,<nuclearcraft:americium:13> * 3,<nuclearcraft:curium:13> * 2],
    [<nuclearcraft:depleted_fuel_mixed:1>,<nuclearcraft:uranium:12> * 4,<nuclearcraft:plutonium:12>,<nuclearcraft:plutonium:17> * 2,<nuclearcraft:americium:12>],
    [<nuclearcraft:depleted_fuel_mixed:2>,<nuclearcraft:uranium:13> * 4,<nuclearcraft:plutonium:13>,<nuclearcraft:plutonium:18> * 2,<nuclearcraft:americium:13>],
    [<nuclearcraft:depleted_fuel_mixed:5>,<nuclearcraft:uranium:12> * 3,<nuclearcraft:plutonium:12>,<nuclearcraft:plutonium:17> * 3,<nuclearcraft:americium:12>],
    [<nuclearcraft:depleted_fuel_mixed:6>,<nuclearcraft:uranium:13> * 3,<nuclearcraft:plutonium:13>,<nuclearcraft:plutonium:18> * 3,<nuclearcraft:americium:13>]] as IItemStack[][];

for i,fuel in depleted7{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray7[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray7[i][1]).addItemOutput(depfuelarray7[i][2]).addItemOutput(depfuelarray7[i][3]).addItemOutput(depfuelarray7[i][4]).addItemOutput(htra3[0] * 4).addItemOutput(htra3[1] * 3).build();
}

/*htra4

SPACE to continue

*/
val depleted8 = ["LEAOX242","LEAN242","LECMOX243","LECMN243"] as string[];
val depfuelarray8 = [[<nuclearcraft:depleted_fuel_americium:1>,<nuclearcraft:americium:12> * 3,<nuclearcraft:curium:7>,<nuclearcraft:curium:12> * 3,<nuclearcraft:berkelium:7>],
    [<nuclearcraft:depleted_fuel_americium:2>,<nuclearcraft:americium:13> * 3,<nuclearcraft:curium:8>,<nuclearcraft:curium:13> * 3,<nuclearcraft:berkelium:8>],
    [<nuclearcraft:depleted_fuel_curium:1>,<nuclearcraft:curium:12> * 4,<nuclearcraft:curium:17>,<nuclearcraft:berkelium:2> * 2,<nuclearcraft:berkelium:7>],
    [<nuclearcraft:depleted_fuel_curium:2>,<nuclearcraft:curium:13> * 4,<nuclearcraft:curium:18>,<nuclearcraft:berkelium:3> * 2,<nuclearcraft:berkelium:8>]] as IItemStack[][];

for i,fuel in depleted8{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray8[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray8[i][1]).addItemOutput(depfuelarray8[i][2]).addItemOutput(depfuelarray8[i][3]).addItemOutput(depfuelarray8[i][4]).addItemOutput(htra4[0] * 4).addItemOutput(htra4[1] * 3).build();
}

val depleted9 = ["HEAOX242","HEAN242","HECMOX243","HECMN243"] as string[];
val depfuelarray9 = [[<nuclearcraft:depleted_fuel_americium:5>,<nuclearcraft:americium:12> * 3,<nuclearcraft:curium:2>,<nuclearcraft:curium:12> * 2,<nuclearcraft:berkelium:2>],
    [<nuclearcraft:depleted_fuel_americium:6>,<nuclearcraft:americium:13> * 3,<nuclearcraft:curium:3>,<nuclearcraft:curium:13> * 2,<nuclearcraft:berkelium:3>],
    [<nuclearcraft:depleted_fuel_curium:5>,<nuclearcraft:curium:7>,<nuclearcraft:curium:12> * 3,<nuclearcraft:berkelium:2> * 2,<nuclearcraft:berkelium:7>],
    [<nuclearcraft:depleted_fuel_curium:6>,<nuclearcraft:curium:8>,<nuclearcraft:curium:13> * 3,<nuclearcraft:berkelium:3> * 2,<nuclearcraft:berkelium:8>]] as IItemStack[][];

for i,fuel in depleted9{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray9[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(depfuelarray9[i][1]).addItemOutput(depfuelarray9[i][2]).addItemOutput(depfuelarray9[i][3]).addItemOutput(depfuelarray9[i][4]).addItemOutput(htra4[0] * 5).addItemOutput(htra4[1] * 4).build();
}

/*htra5

SPACE to continue

*/
val depleted10 = ["LECMOX245","LECMN245","LECMOX247","LECMN247"] as string[];
val depfuelarray10 = [[<nuclearcraft:depleted_fuel_curium:9>,<nuclearcraft:curium:12> * 4,<nuclearcraft:curium:17>,<nuclearcraft:berkelium:2> * 2,<nuclearcraft:californium:2>],
    [<nuclearcraft:depleted_fuel_curium:10>,<nuclearcraft:curium:13> * 4,<nuclearcraft:curium:18>,<nuclearcraft:berkelium:3> * 2,<nuclearcraft:californium:3>],
    [<nuclearcraft:depleted_fuel_curium:17>,<nuclearcraft:curium:12> * 5,<nuclearcraft:berkelium:2>,<nuclearcraft:berkelium:7>,<nuclearcraft:californium:2>],
    [<nuclearcraft:depleted_fuel_curium:18>,<nuclearcraft:curium:13> * 5,<nuclearcraft:berkelium:3>,<nuclearcraft:berkelium:8>,<nuclearcraft:californium:3>]] as IItemStack[][];

for i,fuel in depleted10{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray10[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray10[i][1]).addItemOutput(depfuelarray10[i][2]).addItemOutput(depfuelarray10[i][3]).addItemOutput(depfuelarray10[i][4]).addItemOutput(htra5[0] * 4).addItemOutput(htra5[1] * 3).build();
}

val depleted11 = ["HECMOX245","HECMN245","HECMOX247","HECMN247"] as string[];
val depfuelarray11 = [[<nuclearcraft:depleted_fuel_curium:13>,<nuclearcraft:curium:12> * 3,<nuclearcraft:curium:17>,<nuclearcraft:berkelium:2> * 2,<nuclearcraft:californium:2>],
    [<nuclearcraft:depleted_fuel_curium:14>,<nuclearcraft:curium:13> * 3,<nuclearcraft:curium:18>,<nuclearcraft:berkelium:3> * 2,<nuclearcraft:californium:3>],
    [<nuclearcraft:depleted_fuel_curium:21>,<nuclearcraft:berkelium:2> * 4,<nuclearcraft:berkelium:7>,<nuclearcraft:californium:2>,<nuclearcraft:californium:12>],
    [<nuclearcraft:depleted_fuel_curium:22>,<nuclearcraft:berkelium:3> * 4,<nuclearcraft:berkelium:8>,<nuclearcraft:californium:3>,<nuclearcraft:californium:13>]] as IItemStack[][];

for i,fuel in depleted11{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray11[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(depfuelarray11[i][1]).addItemOutput(depfuelarray11[i][2]).addItemOutput(depfuelarray11[i][3]).addItemOutput(depfuelarray11[i][4]).addItemOutput(htra5[0] * 5).addItemOutput(htra5[1] * 4).build();
}

/*htra6

SPACE to continue

*/
val depleted12 = ["LEBOX248","LEBN248","LECFOX249","LECFN249"] as string[];
val depfuelarray12 = [[<nuclearcraft:depleted_fuel_berkelium:1>,<nuclearcraft:berkelium:2> * 5,<nuclearcraft:berkelium:7>,<nuclearcraft:californium:2>,<nuclearcraft:californium:12>],
    [<nuclearcraft:depleted_fuel_berkelium:2>,<nuclearcraft:berkelium:3> * 5,<nuclearcraft:berkelium:8>,<nuclearcraft:californium:3>,<nuclearcraft:californium:13>],
    [<nuclearcraft:depleted_fuel_californium:1>,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2],
    [<nuclearcraft:depleted_fuel_californium:2>,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2]] as IItemStack[][];

for i,fuel in depleted12{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray12[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray12[i][1]).addItemOutput(depfuelarray12[i][2]).addItemOutput(depfuelarray12[i][3]).addItemOutput(depfuelarray12[i][4]).addItemOutput(htra6[0] * 4).addItemOutput(htra6[1] * 3).build();
}

val depleted13 = ["HEBOX248","HEBN248","HECFOX249","HECFN249"] as string[];
val depfuelarray13 = [[<nuclearcraft:depleted_fuel_berkelium:5>,<nuclearcraft:berkelium:7>,<nuclearcraft:californium:2>,<nuclearcraft:californium:12> * 2,<nuclearcraft:californium:17> * 3],
    [<nuclearcraft:depleted_fuel_berkelium:6>,<nuclearcraft:berkelium:8>,<nuclearcraft:californium:3>,<nuclearcraft:californium:13> * 2,<nuclearcraft:californium:18> * 3],
    [<nuclearcraft:depleted_fuel_californium:5>,<nuclearcraft:californium:7>,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2],
    [<nuclearcraft:depleted_fuel_californium:6>,<nuclearcraft:californium:8>,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2]] as IItemStack[][];

for i,fuel in depleted13{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray13[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(depfuelarray13[i][1]).addItemOutput(depfuelarray13[i][2]).addItemOutput(depfuelarray13[i][3]).addItemOutput(depfuelarray13[i][4]).addItemOutput(htra6[0] * 5).addItemOutput(htra6[1] * 4).build();
}

/*htra7

SPACE to continue

*/
val depleted14 = ["LECFOX251","LECFN251"] as string[];
val depfuelarray14 = [[<nuclearcraft:depleted_fuel_californium:9>,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2],
    [<nuclearcraft:depleted_fuel_californium:10>,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2]] as IItemStack[][];

for i,fuel in depleted14{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray14[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray14[i][1]).addItemOutput(depfuelarray14[i][2]).addItemOutput(depfuelarray14[i][3]).addItemOutput(depfuelarray14[i][4]).addItemOutput(htra7[0] * 4).addItemOutput(htra7[1] * 3).build();
}

val depleted15 = ["HECFOX251","HECFN251"] as string[];
val depfuelarray15 = [[<nuclearcraft:depleted_fuel_californium:13>,<nuclearcraft:californium:17> * 3,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2],
    [<nuclearcraft:depleted_fuel_californium:14>,<nuclearcraft:californium:18> * 3,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2]] as IItemStack[][];

for i,fuel in depleted15{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray15[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(depfuelarray15[i][1]).addItemOutput(depfuelarray15[i][2]).addItemOutput(depfuelarray15[i][3]).addItemOutput(depfuelarray15[i][4]).addItemOutput(htra7[0] * 5).addItemOutput(htra7[1] * 4).build();
}


//Zirconium Alloyed;
/*htra1

SPACE to continue

*/
val za_depleted1 = ["TBUZA","LEUZA233"] as string[];
val za_depfuelarray1 = [[<nuclearcraft:depleted_fuel_thorium:3>,<nuclearcraft:uranium:4>,<nuclearcraft:uranium:14> * 5,<nuclearcraft:neptunium:4>,<nuclearcraft:neptunium:9>],
    [<nuclearcraft:depleted_fuel_uranium:3>,<nuclearcraft:americium:14>,<nuclearcraft:uranium:14> * 5,<nuclearcraft:plutonium:14>,<nuclearcraft:plutonium:19>]] as IItemStack[][];

for i,za_fuel in za_depleted1{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 240).addItemInput(za_depfuelarray1[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_pentacene>).setChance(0).addEnergyPerTickInput(32).addItemOutput(za_depfuelarray1[i][1]).addItemOutput(za_depfuelarray1[i][2]).addItemOutput(za_depfuelarray1[i][3]).addItemOutput(za_depfuelarray1[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra1[0] * 3).addItemOutput(htra1[1] * 2).build();
}

val za_depleted2 = ["HEUZA233"] as string[];
val za_depfuelarray2 = [[<nuclearcraft:depleted_fuel_uranium:7>,<nuclearcraft:uranium:9>,<nuclearcraft:uranium:14> * 2,<nuclearcraft:plutonium:19> * 3,<nuclearcraft:americium:14>]] as IItemStack[][];

for i,za_fuel in za_depleted2{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray2[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray2[i][1]).addItemOutput(za_depfuelarray2[i][2]).addItemOutput(za_depfuelarray2[i][3]).addItemOutput(za_depfuelarray2[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra1[0] * 4).addItemOutput(htra1[1] * 3).build();
}

/*htra2

SPACE to continue

*/
val za_depleted3 = ["LEUZA235","LENZA236"] as string[];
val za_depfuelarray3 = [[<nuclearcraft:depleted_fuel_uranium:11>,<nuclearcraft:uranium:14> * 4,<nuclearcraft:plutonium:9>,<nuclearcraft:plutonium:19> * 2,<nuclearcraft:americium:14>],
    [<nuclearcraft:depleted_fuel_neptunium:3>,<nuclearcraft:uranium:14> * 4,<nuclearcraft:neptunium:9>,<nuclearcraft:plutonium:19> * 2,<nuclearcraft:plutonium:14>]] as IItemStack[][];

for i,za_fuel in za_depleted3{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray3[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(32).addItemOutput(za_depfuelarray3[i][1]).addItemOutput(za_depfuelarray3[i][2]).addItemOutput(za_depfuelarray3[i][3]).addItemOutput(za_depfuelarray3[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra2[0] * 3).addItemOutput(htra2[1] * 2).build();
}

val za_depleted4 = ["HEUZA235"] as string[];
val za_depfuelarray4 = [[<nuclearcraft:depleted_fuel_uranium:15>,<nuclearcraft:uranium:14> * 3,<nuclearcraft:neptunium:4>,<nuclearcraft:plutonium:19> * 2,<nuclearcraft:americium:14>]] as IItemStack[][];

for i,fuel in za_depleted4{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(za_depfuelarray4[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray4[i][1]).addItemOutput(za_depfuelarray4[i][2]).addItemOutput(za_depfuelarray4[i][3]).addItemOutput(za_depfuelarray4[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra2[0] * 4).addItemOutput(htra2[1] * 3).build();
}

val za_depleted5 = ["HENZA236"] as string[];
val za_depfuelarray5 = [[<nuclearcraft:depleted_fuel_neptunium:7>,<nuclearcraft:uranium:14> * 4,<nuclearcraft:plutonium:4>,<nuclearcraft:plutonium:14>,<nuclearcraft:plutonium:19>]] as IItemStack[][];

for i,fuel in za_depleted5{
    mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(za_depfuelarray5[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray5[i][1]).addItemOutput(za_depfuelarray5[i][2]).addItemOutput(za_depfuelarray5[i][3]).addItemOutput(za_depfuelarray5[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra2[0] * 4).addItemOutput(htra2[1] * 3).build();
}

/*htra3

SPACE to continue

*/
val za_depleted6 = ["LEPZA239","LEPZA241"] as string[];
val za_depfuelarray6 = [[<nuclearcraft:depleted_fuel_plutonium:3>,<nuclearcraft:plutonium:19> * 5,<nuclearcraft:americium:9>,<nuclearcraft:americium:14>,<nuclearcraft:curium:14>],
    [<nuclearcraft:depleted_fuel_plutonium:11>,<nuclearcraft:plutonium:19> * 5,<nuclearcraft:americium:14>,<nuclearcraft:curium:14>,<nuclearcraft:berkelium:4>]] as IItemStack[][];

for i,za_fuel in za_depleted6{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray6[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(32).addItemOutput(za_depfuelarray6[i][1]).addItemOutput(za_depfuelarray6[i][2]).addItemOutput(za_depfuelarray6[i][3]).addItemOutput(za_depfuelarray6[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra3[0] * 3).addItemOutput(htra3[1] * 2).build();
}

val za_depleted7 = ["HEPZA239","HEPZA241","MZA239","MZA241"] as string[];
val za_depfuelarray7 = [[<nuclearcraft:depleted_fuel_plutonium:7>,<nuclearcraft:plutonium:14>,<nuclearcraft:americium:9>,<nuclearcraft:americium:14> * 4,<nuclearcraft:curium:4>],
    [<nuclearcraft:depleted_fuel_plutonium:15>,<nuclearcraft:americium:4>,<nuclearcraft:americium:9>,<nuclearcraft:americium:14> * 3,<nuclearcraft:curium:14> * 2],
    [<nuclearcraft:depleted_fuel_mixed:3>,<nuclearcraft:uranium:14> * 4,<nuclearcraft:plutonium:14>,<nuclearcraft:plutonium:19> * 2,<nuclearcraft:americium:14>],
    [<nuclearcraft:depleted_fuel_mixed:7>,<nuclearcraft:uranium:14> * 3,<nuclearcraft:plutonium:14>,<nuclearcraft:plutonium:19> * 3,<nuclearcraft:americium:14>]] as IItemStack[][];

for i,za_fuel in za_depleted7{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray7[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray7[i][1]).addItemOutput(za_depfuelarray7[i][2]).addItemOutput(za_depfuelarray7[i][3]).addItemOutput(za_depfuelarray7[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra3[0] * 4).addItemOutput(htra3[1] * 3).build();
}

/*htra4

SPACE to continue

*/
val za_depleted8 = ["LEAZA242","LECMZA243"] as string[];
val za_depfuelarray8 = [[<nuclearcraft:depleted_fuel_americium:3>,<nuclearcraft:americium:14> * 3,<nuclearcraft:curium:9>,<nuclearcraft:curium:14> * 3,<nuclearcraft:berkelium:9>],
    [<nuclearcraft:depleted_fuel_curium:3>,<nuclearcraft:curium:14> * 4,<nuclearcraft:curium:19>,<nuclearcraft:berkelium:4> * 2,<nuclearcraft:berkelium:9>]] as IItemStack[][];

for i,za_fuel in za_depleted8{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray8[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray8[i][1]).addItemOutput(za_depfuelarray8[i][2]).addItemOutput(za_depfuelarray8[i][3]).addItemOutput(za_depfuelarray8[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra4[0] * 4).addItemOutput(htra4[1] * 3).build();
}

val za_depleted9 = ["HEAZA242","HECMZA243"] as string[];
val za_depfuelarray9 = [[<nuclearcraft:depleted_fuel_americium:7>,<nuclearcraft:americium:14> * 3,<nuclearcraft:curium:4>,<nuclearcraft:curium:14> * 2,<nuclearcraft:berkelium:4>],
    [<nuclearcraft:depleted_fuel_curium:7>,<nuclearcraft:curium:9>,<nuclearcraft:curium:14> * 3,<nuclearcraft:berkelium:4> * 2,<nuclearcraft:berkelium:9>]] as IItemStack[][];

for i,za_fuel in za_depleted9{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray9[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(za_depfuelarray9[i][1]).addItemOutput(za_depfuelarray9[i][2]).addItemOutput(za_depfuelarray9[i][3]).addItemOutput(za_depfuelarray9[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra4[0] * 5).addItemOutput(htra4[1] * 4).build();
}

/*htra5

SPACE to continue

*/
val za_depleted10 = ["LECMZA245","LECMZA247"] as string[];
val za_depfuelarray10 = [[<nuclearcraft:depleted_fuel_curium:11>,<nuclearcraft:curium:14> * 4,<nuclearcraft:curium:19>,<nuclearcraft:berkelium:4> * 2,<nuclearcraft:californium:4>],
    [<nuclearcraft:depleted_fuel_curium:19>,<nuclearcraft:curium:14> * 5,<nuclearcraft:berkelium:4>,<nuclearcraft:berkelium:9>,<nuclearcraft:californium:4>]] as IItemStack[][];

for i,za_fuel in za_depleted10{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray10[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray10[i][1]).addItemOutput(za_depfuelarray10[i][2]).addItemOutput(za_depfuelarray10[i][3]).addItemOutput(za_depfuelarray10[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra5[0] * 4).addItemOutput(htra5[1] * 3).build();
}

val za_depleted11 = ["HECMZA245","HECMZA247"] as string[];
val za_depfuelarray11 = [[<nuclearcraft:depleted_fuel_curium:15>,<nuclearcraft:curium:14> * 3,<nuclearcraft:curium:19>,<nuclearcraft:berkelium:4> * 2,<nuclearcraft:californium:4>],
    [<nuclearcraft:depleted_fuel_curium:23>,<nuclearcraft:berkelium:4> * 4,<nuclearcraft:berkelium:9>,<nuclearcraft:californium:4>,<nuclearcraft:californium:14>]] as IItemStack[][];

for i,za_fuel in za_depleted11{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray11[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(za_depfuelarray11[i][1]).addItemOutput(za_depfuelarray11[i][2]).addItemOutput(za_depfuelarray11[i][3]).addItemOutput(za_depfuelarray11[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra5[0] * 5).addItemOutput(htra5[1] * 4).build();
}

/*htra6

SPACE to continue

*/
val za_depleted12 = ["LEBZA248","LECFZA249"] as string[];
val za_depfuelarray12 = [[<nuclearcraft:depleted_fuel_berkelium:3>,<nuclearcraft:berkelium:4> * 5,<nuclearcraft:berkelium:9>,<nuclearcraft:californium:4>,<nuclearcraft:californium:14>],
    [<nuclearcraft:depleted_fuel_californium:3>,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2]] as IItemStack[][];

for i,za_fuel in za_depleted12{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray12[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray12[i][1]).addItemOutput(za_depfuelarray12[i][2]).addItemOutput(za_depfuelarray12[i][3]).addItemOutput(za_depfuelarray12[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra6[0] * 4).addItemOutput(htra6[1] * 3).build();
}

val za_depleted13 = ["HEBZA248","HECFZA249"] as string[];
val za_depfuelarray13 = [[<nuclearcraft:depleted_fuel_berkelium:7>,<nuclearcraft:berkelium:9>,<nuclearcraft:californium:4>,<nuclearcraft:californium:14> * 2,<nuclearcraft:californium:19> * 3],
    [<nuclearcraft:depleted_fuel_californium:7>,<nuclearcraft:californium:9>,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2]] as IItemStack[][];

for i,za_fuel in za_depleted13{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray13[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(za_depfuelarray13[i][1]).addItemOutput(za_depfuelarray13[i][2]).addItemOutput(za_depfuelarray13[i][3]).addItemOutput(za_depfuelarray13[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra6[0] * 5).addItemOutput(htra6[1] * 4).build();
}

/*htra7

SPACE to continue

*/
val za_depleted14 = ["LECFZA251"] as string[];
val za_depfuelarray14 = [[<nuclearcraft:depleted_fuel_californium:11>,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2]] as IItemStack[][];

for i,za_fuel in za_depleted14{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray14[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(za_depfuelarray14[i][1]).addItemOutput(za_depfuelarray14[i][2]).addItemOutput(za_depfuelarray14[i][3]).addItemOutput(za_depfuelarray14[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra7[0] * 4).addItemOutput(htra7[1] * 3).build();
}

val za_depleted15 = ["HECFZA2451"] as string[];
val za_depfuelarray15 = [[<nuclearcraft:depleted_fuel_californium:15>,<nuclearcraft:californium:19> * 3,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2]] as IItemStack[][];

for i,za_fuel in za_depleted15{
    mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280).addItemInput(za_depfuelarray15[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(64).addItemOutput(za_depfuelarray15[i][1]).addItemOutput(za_depfuelarray15[i][2]).addItemOutput(za_depfuelarray15[i][3]).addItemOutput(za_depfuelarray15[i][4]).addItemOutput(<nuclearcraft:dust:10> * 2).addItemOutput(htra7[0] * 5).addItemOutput(htra7[1] * 4).build();
}