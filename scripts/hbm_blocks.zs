#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.item.IIngredient;

var upgrades = ["machine_upgrade_template","upgrade_speed_a","upgrade_speed_b"] as string[];

for i,upgrade in upgrades {
	var upgrade = VanillaFactory.createBlock(upgrade, <blockmaterial:iron>);
	upgrade.setLightOpacity(255);
	upgrade.setBlockHardness(2);
	upgrade.setBlockResistance(10);
	upgrade.setToolClass("pickaxe");
	upgrade.setToolLevel(2);
	upgrade.register(); 
}