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

var temp = VanillaFactory.createItem("modular_blend");
temp.register();
temp = VanillaFactory.createItem("catalyst");
temp.register();

//Solinium Fuels

temp = VanillaFactory.createItem("billet_hes");
temp.register();
temp = VanillaFactory.createItem("billet_mes");
temp.register();
temp = VanillaFactory.createItem("billet_les");
temp.register();
temp = VanillaFactory.createItem("pellet_fuel_hes");
temp.register();
temp = VanillaFactory.createItem("pellet_fuel_mes");
temp.register();
temp = VanillaFactory.createItem("pellet_fuel_les");
temp.register();
temp = VanillaFactory.createItem("pellet_depleted_fuel_hes");
temp.register();
temp = VanillaFactory.createItem("pellet_depleted_fuel_mes");
temp.register();
temp = VanillaFactory.createItem("pellet_depleted_fuel_les");
temp.register();

//Dilithium Processing

temp = VanillaFactory.createItem("li_infused_schrabidate_quad_rod");
temp.register();
temp = VanillaFactory.createItem("rod_dilithium_pure");
temp.register();

//Circuits Gregification

temp = VanillaFactory.createItem("gallium_dust");
temp.register();
temp = VanillaFactory.createItem("vacuum_tube");
temp.register();
temp = VanillaFactory.createItem("gallium_arsenide_dust");
temp.register();
temp = VanillaFactory.createItem("coated_circuit_board");
temp.register();
temp = VanillaFactory.createItem("basic_circuit_board");
temp.register();
temp = VanillaFactory.createItem("basic_resistor");
temp.register();
temp = VanillaFactory.createItem("glass_lens_blank");
temp.register();
temp = VanillaFactory.createItem("glass_lens_red");
temp.register();
temp = VanillaFactory.createItem("redstonic_circuit_board");
temp.register();
temp = VanillaFactory.createItem("advanced_circuit_board");
temp.register();
temp = VanillaFactory.createItem("soldering_alloy");
temp.register();
temp = VanillaFactory.createItem("diode");
temp.register();