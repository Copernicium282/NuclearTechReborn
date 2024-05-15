import crafttweaker.item.IItemStack;

//Tiered Upgrades for Storage Drawers
recipes.removeByRecipeName("storagedrawers:upgrade_storage_iron");
recipes.addShaped("UpgradeStorageIron", <storagedrawers:upgrade_storage:1>,
[[<storagedrawers:upgrade_storage:0>, <ore:stickWood>, <storagedrawers:upgrade_storage:0>],
[<minecraft:iron_ingot>, <storagedrawers:upgrade_template>, <minecraft:iron_ingot>],
[<storagedrawers:upgrade_storage:0>, <ore:stickWood>, <storagedrawers:upgrade_storage:0>]]);

recipes.removeByRecipeName("storagedrawers:upgrade_storage_gold");
recipes.addShaped("UpgradeStorageGold", <storagedrawers:upgrade_storage:2>,
[[<storagedrawers:upgrade_storage:1>, <ore:stickWood>, <storagedrawers:upgrade_storage:1>],
[<minecraft:gold_ingot>, <storagedrawers:upgrade_template>, <minecraft:gold_ingot>],
[<storagedrawers:upgrade_storage:1>, <ore:stickWood>, <storagedrawers:upgrade_storage:1>]]);

recipes.removeByRecipeName("storagedrawers:upgrade_storage_diamond");
recipes.addShaped("UpgradeStorageDiamond", <storagedrawers:upgrade_storage:3>,
[[<storagedrawers:upgrade_storage:2>, <ore:stickWood>, <storagedrawers:upgrade_storage:2>],
[<minecraft:diamond>, <storagedrawers:upgrade_template>, <minecraft:diamond>],
[<storagedrawers:upgrade_storage:2>, <ore:stickWood>, <storagedrawers:upgrade_storage:2>]]);

recipes.removeByRecipeName("storagedrawers:upgrade_storage_emerald");
recipes.addShaped("UpgradeStorageEmerald", <storagedrawers:upgrade_storage:4>,
[[<storagedrawers:upgrade_storage:3>, <ore:stickWood>, <storagedrawers:upgrade_storage:3>],
[<minecraft:emerald>, <storagedrawers:upgrade_template>, <minecraft:emerald>],
[<storagedrawers:upgrade_storage:3>, <ore:stickWood>, <storagedrawers:upgrade_storage:3>]]);