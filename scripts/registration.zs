#loader contenttweaker
 
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
 
//fluids
 
var fluidNames = ["contaminated_water","polonium","lithiumsix","lithiumsvn","boronten","boronelvn","spicygold","uranium_hexafluoride_low","uranium_hexafluoride_medium","uranium_hexafluoride_high","soldering_alloy"] as string[];
var colorsNamed = ["33290F","7C9C98","ECECEC","CBCBCB","9A9A9A","757575","FFEC42","E2E2D0","E2E2D0","E2E2D0","3D3D3D"] as string[];
 
for i,name in fluidNames{
	var zsFluid = VanillaFactory.createFluid(name,Color.fromHex(colorsNamed[i]));
	zsFluid.setDensity(500);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(40);
	zsFluid.register();
}

//Modular Machinery

val modular_machinery = ["modular_blend","catalyst"] as string[];
for i,item in modular_machinery{
	var temp = VanillaFactory.createItem(item);
	temp.register();
}

//Solinium Fuels

val solinium_fuels = ["billet_hes","billet_mes","billet_les","pellet_fuel_hes","pellet_fuel_mes","pellet_fuel_les","pellet_depleted_fuel_hes","pellet_depleted_fuel_mes","pellet_depleted_fuel_les"] as string[];
for i,item in solinium_fuels{
	var temp = VanillaFactory.createItem(item);
	temp.register();
}

//Dilithium Processing

val dilithium_processing = ["li_infused_schrabidate_quad_rod","rod_dilithium_pure"] as string[];
for i,item in dilithium_processing{
	var temp = VanillaFactory.createItem(item);
	temp.register();
}

//Circuits Gregification

val gregification = ["gallium_dust","vacuum_tube","gallium_arsenide_dust","coated_circuit_board","basic_circuit_board","basic_resistor","glass_lens_blank","glass_lens_red","redstonic_circuit_board","advanced_circuit_board","soldering_alloy","diode"] as string[];
for i,item in gregification{
	var temp = VanillaFactory.createItem(item);
	temp.register();
}
//Research and Misc

val research = ["speed_upgrade_research","energy_upgrade_research","enderium_gem"] as string[];
for i,item in research{
	var temp = VanillaFactory.createItem(item);
	temp.register();
}

//TinyDusts

val tinydusts = ["powder_molybdenum_tiny","powder_pr147_tiny","powder_eu155_tiny"] as string[];
for i,item in tinydusts{
	var temp = VanillaFactory.createItem(item);
	temp.register();
}