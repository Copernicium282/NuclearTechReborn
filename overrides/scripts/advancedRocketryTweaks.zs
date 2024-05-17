import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.jei.JEI;


val Junk = [
    <advancedrocketry:basiclasergun>,
    <advancedrocketry:jackhammer>,
    <advancedrocketry:vitrifiedsand>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}

//Photovoltaic Panel tweaking

recipes.removeByRecipeName("hbm:photo_panel");
recipes.addShaped("UpgradedPhotovoltaicPanel", <hbm:photo_panel>,
[[null, <ore:paneGlass>, null],
[<hbm:plate_polymer>, <ore:siliconWafer>, <hbm:plate_polymer>],
[null, <hbm:plate_advanced_alloy>, null]]);

//Recipe Tweaks

recipes.removeByRecipeName("advancedrocketry:blastbrick");
recipes.addShaped("HeatProofBrick", <advancedrocketry:blastbrick>,
[[<hbm:plate_polymer>, <minecraft:brick_block>, null],
[null, null, null],
[null, null, null]]);

recipes.removeByRecipeName("advancedrocketry:solarpanel");
recipes.addShaped("SolarPanel", <advancedrocketry:solarpanel>,
[[<hbm:photo_panel>, <hbm:photo_panel>, <hbm:photo_panel>],
[null, <libvulpes:structuremachine>, null],
[<hbm:red_cable>, <hbm:red_cable>, <hbm:red_cable>]]);

recipes.removeByRecipeName("advancedrocketry:warpcore");
recipes.addShaped("CostlyWarpCore", <advancedrocketry:warpcore>,
[[<libvulpes:productplate:10>, <hbm:circuit_schrabidium>, <libvulpes:productplate:10>],
[<ore:plateSteel>, <hbm:block_schrabidium>, <ore:plateSteel>],
[<libvulpes:productplate:10>, <hbm:circuit_schrabidium>, <libvulpes:productplate:10>]]);

recipes.removeByRecipeName("advancedrocketry:engine");
recipes.addShaped("rocketmotor", <advancedrocketry:rocketmotor>,
[[null, null, null],
[null, <hbm:mp_thruster_10_solid>, null],
[null, null, null]]);

recipes.removeByRecipeName("advancedrocketry:advengine");
recipes.addShaped("advrocketmotor", <advancedrocketry:advrocketmotor>,
[[null, <hbm:hull_big_titanium>, null],
[<ore:plateTitaniumIridium>, <hbm:mp_thruster_10_solid>, <ore:plateTitaniumIridium>],
[null, <hbm:hull_big_titanium>, null]]);

recipes.removeByRecipeName("advancedrocketry:bipropellantengine");
recipes.addShaped("bipropellantrocketmotor", <advancedrocketry:bipropellantrocketmotor>,
[[null, null, null],
[null, <hbm:mp_thruster_15_hydrogen>, null],
[null, null, null]]);

recipes.removeByRecipeName("advancedrocketry:advbipropellantengine");
recipes.addShaped("advbipropellantrocketmotor", <advancedrocketry:advbipropellantrocketmotor>,
[[null, <hbm:hull_big_titanium>, null],
[<ore:plateTitaniumIridium>, <hbm:mp_thruster_15_hydrogen>, <ore:plateTitaniumIridium>],
[null, <hbm:hull_big_titanium>, null]]);

recipes.removeByRecipeName("advancedrocketry:nuclearengine");
recipes.addShaped("nuclearrocketmotor", <advancedrocketry:nuclearrocketmotor>,
[[null, <hbm:hull_big_titanium>, null],
[<ore:plateTitaniumAluminide>, <hbm:mp_thruster_15_balefire_large>, <ore:plateTitaniumAluminide>],
[null, <ore:gemDilithium>, null]]);

recipes.removeByRecipeName("advancedrocketry:blockfueltank");
recipes.addShaped("fueltank", <advancedrocketry:fueltank>,
[[null, null, null],
[<ore:plateTitaniumIridium>, <hbm:mp_fuselage_10_solid>, <ore:plateTitaniumIridium>],
[<hbm:steel_poles>, <hbm:fluid_duct_mk2>, <hbm:steel_poles>]]);

recipes.removeByRecipeName("advancedrocketry:blockbipropellantfueltank");
recipes.addShaped("bipropellantfueltank", <advancedrocketry:bipropellantfueltank>,
[[null, null, null],
[<ore:plateTitaniumIridium>, <hbm:mp_fuselage_10_15_hydrogen>, <ore:plateTitaniumIridium>],
[<hbm:steel_poles>, <hbm:fluid_duct_mk2>, <hbm:steel_poles>]]);

recipes.removeByRecipeName("advancedrocketry:blocknuclearfueltank");
recipes.addShaped("nuclearfueltank", <advancedrocketry:nuclearfueltank>,
[[null, <ore:gemDilithium>, null],
[<ore:plateTitaniumAluminide>, <hbm:mp_fuselage_15_balefire>, <ore:plateTitaniumAluminide>],
[<hbm:steel_poles>, <hbm:fluid_duct_mk2>, <hbm:steel_poles>]]);

recipes.removeByRecipeName("advancedrocketry:blockoxidizerfueltank");
recipes.addShaped("oxidizerfueltank", <advancedrocketry:oxidizerfueltank>,
[[null, null, null],
[<ore:plateTitaniumIridium>, <hbm:mp_fuselage_15_hydrogen>, <ore:plateTitaniumIridium>],
[<hbm:steel_poles>, <hbm:fluid_duct_mk2>, <hbm:steel_poles>]]);

//Alternative cheaper recipe for fission core

recipes.addShaped("nuclearfissioncore", <advancedrocketry:nuclearcore>,
[[<ore:plateTitanium>, <hbm:fuse>, <ore:plateTitanium>],
[<ore:plateTitanium>, <hbm:reactor_element>, <ore:plateTitanium>],
[<ore:plateTitanium>, <ore:gemDilithium>, <ore:plateTitanium>]]);

recipes.removeByRecipeName("advancedrocketry:satellite");
recipes.addShaped("satelliteupgraded", <advancedrocketry:satellite>,
[[null, null, null],
[null, <hbm:sat_base>, <hbm:sat_chip>],
[null, null, null]]);

recipes.removeByRecipeName("advancedrocketry:satelliteidchip");
recipes.addShaped("satelliteidchipupgraded", <advancedrocketry:satelliteidchip>,
[[null, null, null],
[null, <hbm:sat_chip>, null],
[null, null, null]]);

recipes.removeByRecipeName("advancedrocketry:planetidchip");
recipes.addShaped("planetidchipupgraded", <advancedrocketry:planetidchip>,
[[<ore:chipAdvanced>, <ore:chipAdvanced>, null],
[<advancedrocketry:satelliteidchip>, null, null],
[null, null, null]]);

recipes.removeByRecipeName("advancedrocketry:spacestationchip");
recipes.addShaped("spacestationidchipupgraded", <advancedrocketry:spacestationchip>,
[[<hbm:circuit_bismuth>, <libvulpes:linker>, null],
[null, null, null],
[null, null, null]]);

recipes.removeByRecipeName("advancedrocketry:orescanner");
recipes.removeByRecipeName("advancedrocketry:oremapper");

recipes.removeByRecipeName("advancedrocketry:oxygenvent");
recipes.addShaped("oxygenventupgraded", <advancedrocketry:oxygenvent>,
[[<ore:barsIron>, <ore:fanSteel>, <ore:barsIron>],
[<ore:barsIron>, <ore:blockMotor>, <ore:barsIron>],
[<ore:barsIron>, <advancedrocketry:pressuretank:2>, <ore:barsIron>]]);
