import com.hbm.inventory.RecipesCommon.ComparableStack
import com.hbm.inventory.RecipesCommon.OreDictStack
import com.hbm.inventory.RecipesCommon.AStack

import com.hbm.inventory.recipes.AssemblyMachineRecipes
import com.hbm.inventory.recipes.anvil.AnvilRecipes
import com.hbm.inventory.recipes.anvil.AnvilRecipes.AnvilConstructionRecipe
import com.hbm.inventory.recipes.anvil.AnvilRecipes.AnvilOutput
import com.hbm.inventory.recipes.anvil.AnvilRecipes.OverlayType
import com.hbm.inventory.recipes.loader.GenericRecipe
import com.hbm.items.ModItems
import net.minecraft.item.ItemStack

// =============================================================================
// SECTION 1: HBM Anvil Recipes
// =============================================================================
try {
    log.info('[HBM Recipes] Registering Anvil recipes...')

    // Remove existing/duplicate recipes first
    def ncPart = item('nuclearcraft:part').item
    int removed = 0
    AnvilRecipes.constructionRecipes.removeIf { r ->
        if (r.overlay != OverlayType.SMITHING) return false
        boolean found = false
        for (out in r.output) {
            def s = out.stack
            if (s != null && s.item == ncPart) {
                if (s.getItemDamage() == 0 || s.getItemDamage() == 8 || s.getItemDamage() == 1) {
                    found = true
                }
            }
        }
        return found
    }
    if (removed > 0) log.info("[HBM Recipes] Removed $removed existing Anvil recipes to prevent duplicates.")

    // hbm:plate_cast:30 → nuclearcraft:part:0 ×4
    AnvilRecipes.constructionRecipes.add(
        new AnvilConstructionRecipe(
            new ComparableStack(ModItems.plate_cast, 1, 30) as AStack,
            new AnvilOutput(new ItemStack(item('nuclearcraft:part', 0).item, 4, 0))
        ).setTier(2).setOverlay(OverlayType.SMITHING)
    )

    // hbm:motor → nuclearcraft:part:8 ×1
    AnvilRecipes.constructionRecipes.add(
        new AnvilConstructionRecipe(
            new ComparableStack(ModItems.motor) as AStack,
            new AnvilOutput(new ItemStack(item('nuclearcraft:part', 8).item, 1, 8))
        ).setTier(2).setOverlay(OverlayType.SMITHING)
    )

    // hbm:coil_copper → nuclearcraft:part:1 ×1
    AnvilRecipes.constructionRecipes.add(
        new AnvilConstructionRecipe(
            new ComparableStack(ModItems.coil_copper) as AStack,
            new AnvilOutput(new ItemStack(item('nuclearcraft:part', 1).item, 1, 1))
        ).setTier(2).setOverlay(OverlayType.SMITHING)
    )

    // 0. Combination Oven: hbm:brick_light ×9, minecraft:stonebrick ×8
    AnvilRecipes.constructionRecipes.add(
        new AnvilConstructionRecipe(
            [
                new ComparableStack(item('hbm:brick_light').item, 9),
                new ComparableStack(item('minecraft:stonebrick').item, 8, 0),
            ] as AStack[],
            new AnvilOutput(new ItemStack(item('hbm:furnace_combination').item, 1, 0))
        ).setTier(1).setOverlay(OverlayType.SMITHING)
    )

    log.info('[HBM Recipes] Anvil: 4 recipes registered.')
} catch (Exception e) {
    log.error('[HBM Recipes] Failed to register Anvil recipes: ' + e.message)
    e.printStackTrace()
}


// =============================================================================
// SECTION 3: HBM Assembly Machine Recipes
// =============================================================================
try {
    log.info('[HBM Recipes] Registering Assembly Machine recipes...')

    // Remove existing/duplicate recipes first
    def recipesToRemove = [
        'custom.bsccoWire', 'custom.goldPlatedTungstenWire', 'custom.bsccoDust',
        'custom.plasticScintillator', 'custom.basicProcessor', 'custom.advancedProcessor',
        'custom.eliteProcessor', 'custom.tungstenFilament', 'custom.neodymiumMagnet',
        'custom.qmdPotassiumIodineTablet', 'custom.billetHes', 'custom.billetMes',
        'custom.billetLes', 'custom.pelletFuelHes', 'custom.pelletFuelMes',
        'custom.pelletFuelLes', 'custom.liInfusedSchrabidateQuadRod', 'custom.catalyst'
    ]
    for (name in recipesToRemove) {
        AssemblyMachineRecipes.INSTANCE.removeRecipeByName(name)
    }

    // 1. BSCCO Wire: output=qmd:part meta=4 ×4
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.bsccoWire')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('qmd:chemical_dust').item, 3, 1),
                new OreDictStack('ingotSilver', 6)
            )
            .outputItems(new ItemStack(item('qmd:part').item, 4, 4))
    )

    // 2. Gold-Plated Tungsten Wire: output=qmd:part meta=6 ×6
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.goldPlatedTungstenWire')
            .setup(200, 100)
            .inputItems(
                new OreDictStack('ingotTungsten', 4),
                new ComparableStack(item('minecraft:gold_ingot').item, 2)
            )
            .outputItems(new ItemStack(item('qmd:part').item, 6, 6))
    )

    // 3. BSCCO Dust: output=qmd:chemical_dust meta=1 ×3
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.bsccoDust')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('nuclearcraft:fission_dust').item, 2),
                new OreDictStack('dustStrontium', 2),
                new ComparableStack(item('qmd:dust').item, 2, 13),
                new ComparableStack(item('qmd:chemical_dust').item, 3, 4)
            )
            .outputItems(new ItemStack(item('qmd:chemical_dust').item, 1, 0))
    )

    // 4. Plastic Scintillator: output=qmd:part ×3 (meta=0 from ["qmd:part",3])
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.plasticScintillator')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('nuclearcraft:part').item, 2, 6),
                new ComparableStack(ModItems.powder_lapis, 1)
            )
            .outputItems(new ItemStack(item('qmd:part').item, 3, 0))
    )

    // 5. Basic Processor: output=qmd:semiconductor ×4 (meta=0 from ["qmd:semiconductor",4])
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.basicProcessor')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('qmd:semiconductor').item, 1, 1),
                new ComparableStack(item('minecraft:redstone').item, 4),
                new ComparableStack(item('minecraft:gold_ingot').item, 1),
                new OreDictStack('ingotSilver', 1)
            )
            .outputItems(new ItemStack(item('qmd:semiconductor').item, 4, 0))
    )

    // 6. Advanced Processor: output=qmd:semiconductor ×5 (meta=0 from ["qmd:semiconductor",5])
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.advancedProcessor')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('qmd:semiconductor').item, 1, 4),
                new ComparableStack(item('minecraft:redstone').item, 4),
                new ComparableStack(item('qmd:chemical_dust').item, 1, 5),
                new ComparableStack(item('qmd:semiconductor').item, 1, 0)
            )
            .outputItems(new ItemStack(item('qmd:semiconductor').item, 5, 0))
    )

    // 7. Elite Processor: output=qmd:semiconductor ×6 (meta=0 from ["qmd:semiconductor",6])
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.eliteProcessor')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('qmd:semiconductor').item, 1, 5),
                new ComparableStack(item('qmd:part').item, 4, 4),
                new ComparableStack(item('qmd:chemical_dust').item, 1, 5),
                new OreDictStack('ingotPlatinum', 1)
            )
            .outputItems(new ItemStack(item('qmd:semiconductor').item, 6, 0))
    )

    // 8. Tungsten Filament (Assembly Machine only): output=qmd:source ×1
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.tungstenFilament')
            .setup(200, 100)
            .inputItems(
                new OreDictStack('ingotTungsten', 2)
            )
            .outputItems(new ItemStack(item('qmd:source').item, 1, 0))
    )

    // 9. Neodymium Magnet: output=qmd:part ×8 (meta=0 from ["qmd:part",8])
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.neodymiumMagnet')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('nuclearcraft:alloy').item, 2, 6),
                new ComparableStack(item('qmd:ingot2').item, 1, 1)
            )
            .outputItems(new ItemStack(item('qmd:part').item, 8, 0))
    )

    // 10. Potassium Iodine Tablet: output ×4
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.qmdPotassiumIodineTablet')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('qmd:dust').item, 1, 12),
                new OreDictStack('dustIodine', 1),
                new ComparableStack(item('minecraft:sugar').item, 4),
                new ComparableStack(item('nuclearcraft:part').item, 1, 6)
            )
            .outputItems(new ItemStack(item('qmd:potassium_iodine_tablet').item, 4, 0))
    )

    // 11. Billet HES
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.billetHes')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(ModItems.billet_solinium, 4),
                new OreDictStack('dustGraphite', 4),
                new OreDictStack('dustBeryllium', 2),
                new OreDictStack('dustRadium', 2)
            )
            .outputItems(new ItemStack(item('contenttweaker:billet_hes').item, 1, 0))
    )

    // 12. Billet MES
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.billetMes')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(ModItems.billet_solinium, 2),
                new OreDictStack('dustGraphite', 4),
                new OreDictStack('dustBeryllium', 2),
                new OreDictStack('dustRadium', 2)
            )
            .outputItems(new ItemStack(item('contenttweaker:billet_mes').item, 1, 0))
    )

    // 13. Billet LES
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.billetLes')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(ModItems.billet_solinium, 1),
                new OreDictStack('dustGraphite', 4),
                new OreDictStack('dustBeryllium', 2),
                new OreDictStack('dustRadium', 2)
            )
            .outputItems(new ItemStack(item('contenttweaker:billet_les').item, 1, 0))
    )

    // 14. Pellet Fuel HES
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.pelletFuelHes')
            .setup(200, 100)
            .inputItems(
                new OreDictStack('ingotCobalt', 1),
                new OreDictStack('ingotZircaloy', 1),
                new OreDictStack('ingotLead', 1),
                new ComparableStack(item('contenttweaker:billet_hes').item, 1)
            )
            .outputItems(new ItemStack(item('contenttweaker:pellet_fuel_hes').item, 1, 0))
    )

    // 15. Pellet Fuel MES
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.pelletFuelMes')
            .setup(200, 100)
            .inputItems(
                new OreDictStack('ingotCobalt', 1),
                new OreDictStack('ingotZircaloy', 1),
                new OreDictStack('ingotLead', 1),
                new ComparableStack(item('contenttweaker:billet_mes').item, 1)
            )
            .outputItems(new ItemStack(item('contenttweaker:pellet_fuel_mes').item, 1, 0))
    )

    // 16. Pellet Fuel LES
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.pelletFuelLes')
            .setup(200, 100)
            .inputItems(
                new OreDictStack('ingotCobalt', 1),
                new OreDictStack('ingotZircaloy', 1),
                new OreDictStack('ingotLead', 1),
                new ComparableStack(item('contenttweaker:billet_les').item, 1)
            )
            .outputItems(new ItemStack(item('contenttweaker:pellet_fuel_les').item, 1, 0))
    )

    // 17. Li-Infused Schrabidate Quad Rod
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.liInfusedSchrabidateQuadRod')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(ModItems.rod_quad_empty, 1),
                new ComparableStack(ModItems.ingot_schrabidate, 4),
                new ComparableStack(item('nuclearcraft:dust').item, 4, 6)
            )
            .outputItems(new ItemStack(item('contenttweaker:li_infused_schrabidate_quad_rod').item, 1, 0))
    )

    // 18. Catalyst
    AssemblyMachineRecipes.INSTANCE.register(
        new GenericRecipe('custom.catalyst')
            .setup(200, 100)
            .inputItems(
                new ComparableStack(item('qmd:dust').item, 1, 5),
                new ComparableStack(item('minecraft:redstone').item, 1),
                new ComparableStack(ModItems.plate_titanium, 1)
            )
            .outputItems(new ItemStack(item('contenttweaker:catalyst').item, 1, 0))
    )

    log.info('[HBM Recipes] Assembly Machine: 18 recipes registered.')
} catch (Exception e) {
    log.error('[HBM Recipes] Failed to register Assembly Machine recipes: ' + e.message)
    e.printStackTrace()
}

log.info('[HBM Recipes] All recipe registration complete.')
