#priority 1
#loader nc_preinit

import mods.nuclearcraft.Registration;
import mods.nuclearcraft.EnergyProcessorBuilder;
import mods.nuclearcraft.ProcessorBuilderHelper.standardSlot;

if (loadedMods has "avaritia") {
EnergyProcessorBuilder("decay_neutron_collector")
	.setRecipeHandlerName("decay_neutron_collector")
	.setGuiWH(175, 165)
	.setPlayerGuiXY(8, 84)
	.setItemInputSlots([standardSlot(34, 24), standardSlot(34, 47)])
	.setItemOutputSlots([standardSlot(112, 18), standardSlot(132, 36), standardSlot(112, 54)])
	.setMachineConfigGuiXY(134, 62)
	.setRedstoneControlGuiXY(153, 62)
	.setConsumesInputs(true)
	.setDefaultProcessPower(0.0)
	.setDefaultProcessTime(5.0)
	.setProgressBarGuiXYWHUV(57, 36, 51, 16, 176, 3)
	.setJeiClickAreaXYWH(57, 36, 51, 16)
	.buildAndRegister();
}