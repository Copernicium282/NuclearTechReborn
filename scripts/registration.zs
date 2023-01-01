#loader contenttweaker
 
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
 
//fluids
 
var fluidNames = ["deuterium_enriched_water","mixtureofgas","carbonicacid","polonium","lithiumsix","lithiumsvn","boronten","boronelvn","spicygold","contaminated_water","uranium_hexafluoride","uranium_hexafluoride_low","uranium_hexafluoride_medium","uranium_hexafluoride_high","hydrogen_peroxide"] as string[];
var colorsNamed = ["5871F5","4671F5","4671F5","7C9C98","ECECEC","CBCBCB","9A9A9A","757575","FFEC42","514326","E2E2D0","E2E2D0","E2E2D0","E2E2D0","FFFFFF"] as string[];
 
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

//Uranium Processing

temp = VanillaFactory.createItem("powder_yellowcake");
temp.register();

//SILEX Laser Crystals

temp = VanillaFactory.createItem("laser_crystal_cmb");
temp.register();
temp = VanillaFactory.createItem("laser_crystal_co2");
temp.register();
temp = VanillaFactory.createItem("laser_crystal_bismuth");
temp.register();
temp = VanillaFactory.createItem("laser_crystal_dnt");
temp.register();

//Redstone Fuels

temp = VanillaFactory.createItem("billet_her");
temp.register();
temp = VanillaFactory.createItem("billet_mer");
temp.register();
temp = VanillaFactory.createItem("billet_ler");
temp.register();
temp = VanillaFactory.createItem("pellet_fuel_her");
temp.register();
temp = VanillaFactory.createItem("pellet_fuel_mer");
temp.register();
temp = VanillaFactory.createItem("pellet_fuel_ler");
temp.register();
temp = VanillaFactory.createItem("pellet_depleted_fuel_her");
temp.register();
temp = VanillaFactory.createItem("pellet_depleted_fuel_mer");
temp.register();
temp = VanillaFactory.createItem("pellet_depleted_fuel_ler");
temp.register();

//Dilithium Processing

temp = VanillaFactory.createItem("li_infused_schrabidate_quad_rod");
temp.register();
temp = VanillaFactory.createItem("rod_dilithium_pure");
temp.register();

//Circuits Gregification

temp = VanillaFactory.createItem("gallium_dust");
temp.register();
temp = VanillaFactory.createItem("gallium_arsenide_dust");
temp.register();
temp = VanillaFactory.createItem("coated_circuit_board");
temp.register();
temp = VanillaFactory.createItem("basic_circuit_board");
temp.register();
temp = VanillaFactory.createItem("basic_resistor");
temp.register();