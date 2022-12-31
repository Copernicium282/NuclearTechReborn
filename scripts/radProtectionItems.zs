#loader contenttweaker
 
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;

var item = VanillaFactory.createItemFood("fnzp_tablet", 0);
item.register();
item = VanillaFactory.createItemFood("xanax", 0);
item.register();
item = VanillaFactory.createItemFood("entepills", 0);
item.register();
item = VanillaFactory.createItemFood("pill_iodine", 0);
item.register();
item = VanillaFactory.createItemFood("radaway_strong", 0);
item.register();
item = VanillaFactory.createItemFood("radaway_flush", 0);
item.register();

//Some of the content present in this script is taken from HBM, thanks to bobcat for letting me use the items from his mod.