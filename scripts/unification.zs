// Material Unification — converts duplicate items from other mods to HBM equivalents
// All recipes are 1:1 shapeless crafting conversions
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;

// ============================================================
// Steel
// ============================================================

// Industrial Renewal
recipes.addShapeless("unify_steel_ir_ingot", <hbm:ingot_steel>, [<industrialrenewal:ingot_steel>]);

// libvulpes
recipes.addShapeless("unify_steel_lv_ingot", <hbm:ingot_steel>, [<libvulpes:productingot:5>]);
recipes.addShapeless("unify_steel_lv_dust", <hbm:ingot_steel>, [<libvulpes:productdust:5>]);
recipes.addShapeless("unify_steel_lv_plate", <hbm:plate_steel>, [<libvulpes:productplate:5>]);
recipes.addShapeless("unify_steel_lv_gear", <hbm:plate_steel>, [<libvulpes:productgear:7>]);
recipes.addShapeless("unify_steel_lv_sheet", <hbm:plate_steel>, [<libvulpes:productsheet:7>]);
recipes.addShapeless("unify_steel_lv_rod", <hbm:plate_steel>, [<libvulpes:productrod:7>]);

// Advanced Rocketry
recipes.addShapeless("unify_steel_ar_ingot", <hbm:ingot_steel>, [<advancedrocketry:productingot:1>]);
recipes.addShapeless("unify_steel_ar_dust", <hbm:ingot_steel>, [<advancedrocketry:productdust:1>]);
recipes.addShapeless("unify_steel_ar_plate", <hbm:plate_steel>, [<advancedrocketry:productplate:1>]);

// ============================================================
// Copper
// ============================================================

// Advanced Rocketry
recipes.addShapeless("unify_copper_ar_ingot", <hbm:ingot_copper>, [<advancedrocketry:productingot:0>]);
recipes.addShapeless("unify_copper_ar_dust", <hbm:ingot_copper>, [<advancedrocketry:productdust:0>]);
recipes.addShapeless("unify_copper_ar_plate", <hbm:plate_copper>, [<advancedrocketry:productplate:0>]);

// ============================================================
// Aluminum
// ============================================================

// libvulpes
recipes.addShapeless("unify_aluminium_lv_ingot", <hbm:ingot_aluminium>, [<libvulpes:productingot:4>]);
recipes.addShapeless("unify_aluminium_lv_dust", <hbm:ingot_aluminium>, [<libvulpes:productdust:4>]);
recipes.addShapeless("unify_aluminium_lv_plate", <hbm:plate_aluminium>, [<libvulpes:productplate:4>]);
recipes.addShapeless("unify_aluminium_lv_rod", <hbm:plate_aluminium>, [<libvulpes:productrod:4>]);
recipes.addShapeless("unify_aluminium_lv_sheet", <hbm:plate_aluminium>, [<libvulpes:productsheet:4>]);

// ============================================================
// Titanium
// ============================================================

// libvulpes
recipes.addShapeless("unify_titanium_lv_ingot", <hbm:ingot_titanium>, [<libvulpes:productingot:9>]);
recipes.addShapeless("unify_titanium_lv_dust", <hbm:ingot_titanium>, [<libvulpes:productdust:9>]);
recipes.addShapeless("unify_titanium_lv_plate", <hbm:plate_titanium>, [<libvulpes:productplate:9>]);
recipes.addShapeless("unify_titanium_lv_sheet", <hbm:plate_titanium>, [<libvulpes:productsheet:9>]);

// ============================================================
// NuclearCraft ingots -> HBM
// ============================================================

recipes.addShapeless("unify_silicon_nc", <hbm:ingot_silicon>, [<nuclearcraft:ingot:3>]);
recipes.addShapeless("unify_titanium_nc", <hbm:ingot_titanium>, [<nuclearcraft:ingot:4>]);
recipes.addShapeless("unify_cobalt_nc", <hbm:ingot_cobalt>, [<nuclearcraft:ingot:8>]);
recipes.addShapeless("unify_copper_nc", <hbm:ingot_copper>, [<nuclearcraft:ingot:10>]);
recipes.addShapeless("unify_zirconium_nc", <hbm:ingot_zirconium>, [<nuclearcraft:ingot:15>]);
recipes.addShapeless("unify_beryllium_nc", <hbm:ingot_beryllium>, [<nuclearcraft:ingot2:0>]);
recipes.addShapeless("unify_tungsten_nc", <hbm:ingot_tungsten>, [<nuclearcraft:ingot2:5>]);
recipes.addShapeless("unify_lead_nc", <hbm:ingot_lead>, [<nuclearcraft:ingot2:6>]);
recipes.addShapeless("unify_uranium_nc", <hbm:ingot_uranium>, [<nuclearcraft:ingot2:8>]);
recipes.addShapeless("unify_plutonium_nc", <hbm:ingot_plutonium>, [<nuclearcraft:ingot2:9>]);
recipes.addShapeless("unify_boron_nc", <hbm:ingot_boron>, [<nuclearcraft:ingot2:10>]);
recipes.addShapeless("unify_cadmium_nc", <hbm:ingot_cadmium>, [<nuclearcraft:ingot2:13>]);
recipes.addShapeless("unify_caesium_nc", <hbm:ingot_caesium>, [<nuclearcraft:ingot2:14>]);

// ============================================================
// NuclearCraft dusts -> HBM ingots
// ============================================================

recipes.addShapeless("unify_silicon_nc_dust", <hbm:ingot_silicon>, [<nuclearcraft:dust:3>]);
recipes.addShapeless("unify_titanium_nc_dust", <hbm:ingot_titanium>, [<nuclearcraft:dust:4>]);
recipes.addShapeless("unify_cobalt_nc_dust", <hbm:ingot_cobalt>, [<nuclearcraft:dust:8>]);
recipes.addShapeless("unify_copper_nc_dust", <hbm:ingot_copper>, [<nuclearcraft:dust:10>]);
recipes.addShapeless("unify_zirconium_nc_dust", <hbm:ingot_zirconium>, [<nuclearcraft:dust:15>]);
recipes.addShapeless("unify_beryllium_nc_dust", <hbm:ingot_beryllium>, [<nuclearcraft:dust2:0>]);
recipes.addShapeless("unify_tungsten_nc_dust", <hbm:ingot_tungsten>, [<nuclearcraft:dust2:5>]);
recipes.addShapeless("unify_lead_nc_dust", <hbm:ingot_lead>, [<nuclearcraft:dust2:6>]);
recipes.addShapeless("unify_uranium_nc_dust", <hbm:ingot_uranium>, [<nuclearcraft:dust2:8>]);
recipes.addShapeless("unify_plutonium_nc_dust", <hbm:ingot_plutonium>, [<nuclearcraft:dust2:9>]);
recipes.addShapeless("unify_boron_nc_dust", <hbm:ingot_boron>, [<nuclearcraft:dust2:10>]);
recipes.addShapeless("unify_cadmium_nc_dust", <hbm:ingot_cadmium>, [<nuclearcraft:dust2:13>]);
recipes.addShapeless("unify_caesium_nc_dust", <hbm:ingot_caesium>, [<nuclearcraft:dust2:14>]);

// ============================================================
// QMD dusts -> HBM ingots
// ============================================================

recipes.addShapeless("unify_cadmium_qmd", <hbm:ingot_cadmium>, [<qmd:dust2:3>]);
recipes.addShapeless("unify_lead_qmd", <hbm:ingot_lead>, [<qmd:dust2:6>]);
