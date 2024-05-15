// val depleted9 = ["LEBOX248","LEBN248","LECMOX249","LECMN249"] as string[];
// val depfuelarray9 = [[<nuclearcraft:depleted_fuel_berkelium:1>,<nuclearcraft:berkelium:2> * 5,<nuclearcraft:berkelium:7>,<nuclearcraft:californium:2>,<nuclearcraft:californium:12>],
//     [<nuclearcraft:depleted_fuel_berkelium:2>,<nuclearcraft:berkelium:3> * 5,<nuclearcraft:berkelium:8>,<nuclearcraft:californium:3>,<nuclearcraft:californium:13>],
//     [<nuclearcraft:depleted_fuel_californium:1>,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2],
//     [<nuclearcraft:depleted_fuel_californium:2>,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2]] as IItemStack[][];

// for i,fuel in depleted9{
//     mods.modularmachinery.RecipeBuilder.newBuilder(fuel, "silex", 280).addItemInput(depfuelarray9[i][0] * 9).addFluidInput(<liquid:acid> * 1000).addItemInput(<hbm:laser_crystal_co2>).setChance(0).addEnergyPerTickInput(43).addItemOutput(depfuelarray9[i][1]).addItemOutput(depfuelarray9[i][2]).addItemOutput(depfuelarray9[i][3]).addItemOutput(depfuelarray9[i][4]).addItemOutput(htra4[0] * 4).addItemOutput(htra4[1] * 3).build();
// }

// val za_depleted9 = ["LEBZA248","LECMZA249"] as string[];
// val za_depfuelarray9 = [[<nuclearcraft:depleted_fuel_berkelium:3>,<nuclearcraft:berkelium:4> * 5,<nuclearcraft:berkelium:9>,<nuclearcraft:californium:4>,<nuclearcraft:californium:14>],
//     [<nuclearcraft:depleted_fuel_californium:3>,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2]] as IItemStack[][];

// for i,za_fuel in za_depleted9{
//     mods.modularmachinery.RecipeBuilder.newBuilder(za_fuel, "silex", 280)
//     .addItemInput(za_depfuelarray9[i][0] * 9)
//     .addFluidInput(<liquid:acid> * 1000)
//     .addItemInput(<hbm:laser_crystal_co2>)
//     .setChance(0)
//     .addEnergyPerTickInput(43)
//     .addItemOutput(za_depfuelarray9[i][1])
//     .addItemOutput(za_depfuelarray9[i][2])
//     .addItemOutput(za_depfuelarray9[i][3])
//     .addItemOutput(za_depfuelarray9[i][4])
//     .addItemOutput(<nuclearcraft:dust:10> * 2)
//     .addItemOutput(htra4[0] * 4)
//     .addItemOutput(htra4[1] * 3)
//     .build();
// }

// what is the point of this??
/*
<nuclearcraft:depleted_fuel_berkelium:1>,<nuclearcraft:berkelium:2> * 5,<nuclearcraft:berkelium:7>,<nuclearcraft:californium:2>,<nuclearcraft:californium:12>

<nuclearcraft:depleted_fuel_berkelium:2>,<nuclearcraft:berkelium:3> * 5,<nuclearcraft:berkelium:8>,<nuclearcraft:californium:3>,<nuclearcraft:californium:13>

<nuclearcraft:depleted_fuel_berkelium:3>,<nuclearcraft:berkelium:4> * 5,<nuclearcraft:berkelium:9>,<nuclearcraft:californium:4>,<nuclearcraft:californium:14>

<nuclearcraft:depleted_fuel_californium:1>,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2,<nuclearcraft:californium:17> * 2

<nuclearcraft:depleted_fuel_californium:2>,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2,<nuclearcraft:californium:18> * 2

<nuclearcraft:depleted_fuel_californium:3>,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2,<nuclearcraft:californium:19> * 2
*/