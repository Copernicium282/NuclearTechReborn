# Changelog

## v1.14.0

### Special Mention
+ **New Dev Alert!**
  [Aziimov](https://github.com/Aziivoid) jumped in and massively helped me rework the questlines, quests, and backgrounds, among other contributions, and has officially joined as a Dev. We're now building this pack together to make it better than ever before!

### Mods added
  + Simple Discord RPC (Discord Rich Presence)
  + RFTools
  + RFTools Power
  + RFTools Dimensions

### Mods removed
  - UniDict
  - Entity Culling (Fabric/Forge) replaced by Entity Culling (meldexun)

### Mods updated
  + Universal Tweaks - new bugfixes, tweaks, mod integration fixes
  + Simple Voice Chat 1.12.2-2.6.18 -> 1.12.2-2.6.21
  + NuclearCraft: Overhauled - Gadolinium-Samarium shields, Glowing Ghoul, Wasteland Mapping

### Config changes - AE2
  + Enabled Wireless Interface Terminal
  + New cable facades: Steel Machine Casing, Steel Sheet, Motor Block, Tier 1-5 Circuit Blocks, Neutron Flux/Heat Receivers, Custom Machine Structure Positioning Anchor
  + Removed Advanced Alloy facade and block

### Config changes - HBM
  + New custom machine system: cm_block (Steel/Bronze/Desh/TechSteel Machine Casings), cm_sheet, cm_engine (Motor Blocks), cm_tank, cm_circuit (Tier 1-5), cm_port, cm_flux (Neutron Flux Receiver), cm_heat (Heat Receiver)
  + New Paper Press (custom_machine:100)
  + New Custom Machine Structure Positioning Anchor
  + New Vending Machine, Big-Ass Tank
  + New Radio Autocal, Logic Block Invis
  + New fluids: Flue Gas, Hot Air Blast
  + Added machine gravity system (enable528MachineGravity enabled, enableMachineGravity disabled)
  + Removed: Advanced Alloy Block, Advanced Shredder Blades, Water Geysir, Vapor Geysir
  + Blast Furnace renamed to LEGACY, new Blast Furnace added with reworked recipes
  + New Shredder Blades (Desh only, removed Advanced Alloy blades)
  + Reworked Arc Furnace: tungsten/titanium blade fluid costs (144->216), replaced powder smelting with ore-specific recipes, added gneiss uranium/gold/copper, actinium, plutonium, polonium glass, AE2 material smelting
  + Reworked Crystallizer: new bedrock ore processing chains with intermediate IDs, added radiosolvent/chlorine/water recipes, added aluminum crystal via peroxide, lithium powder from gneiss
  + Reworked Mixer: replaced old fluid outputs with COOLANT, LYE, COALGAS_LEADED, PETROIL_LEADED, SUNFLOWEROIL, FISHOIL, BIOFUEL, BAUXITE_SOLUTION, removed old MUG moderator recipes
  + Reworked Fractions: reordered distillation chains, added coal oil vacuum, naphtha desulfurized, naphtha cracked, reformate chains
  + Reworked Reforming: added petroleum unsaturation, sour gas sulfuric acid, light oil cracked aromatics
  + Reworked Hydrotreating: reordered oil/diesel/cracked oil desulfurization recipes
  + Reworked Cracking: added gas, wood oil, diesel, heating oil vacuum cracking
  + Reworked Solidifier: replaced many recipes (heavy oil tar, wood oil tar, light oil cracked fuel, reform gas fuel, coal creosote tar, balefire solid fuel removed, added WATZ ingot mud, biofuel solid fuel)
  + Reworked Press: lignite briquette removed, added gunmetal casing, saturnite plate, gold/tungsten wire, diamond flat press
  + Reworked Anvil: removed Advanced Alloy plate/wire/torus recipes, added DuraSteel plate for Blast Furnace, reworked firebrick/copper ratios (4/4->32/8), swapped TC Alloy Barrel for BAT9000, replaced welded plate + titanium alloy inputs
  + Reworked Assembly Machine: removed Advanced Alloy plate recipe, added copper plate recipe, added chip and chipBismoid circuit assembly recipes
  + Reworked Chemical Plant: added obsidian recipe (water+lava+air), added aggregate recipe, blueprint pool renamed
  + Reworked Arc Welder: removed Advanced Alloy smelting recipes, added new ore-specific smelting (boron, schrabidium, tantalium, uranium, au198, cobalt, schrabidate, sr90)
  + Radiation resistance: reorganized across all armor sets, added FAU, NCRPA, T51, titanium, EV suit values, new Euphemium/CMB/Starmetal/Asbestos/Steel/DNT/Taurun/AJR/BJ/Hazmat PAA sets
  + Fluid traits: reorganized property ordering for consistency, added Flue Gas heating to AIRBLAST, steam cooling chain (steam->spent steam, hot steam->steam, super hot steam->hot steam)
  + Item pools: removed Advanced Alloy ingots/coils/wire from loot, added cobalt ingots, coin tokens, blueprint folders, new POOL_PILE_GEAR, POOL_PILE_MECHANICAL, POOL_SODA, POOL_SNACKS pools
  + HBM Server: added AUTOCAL_MAX_CLOCK setting (20)

### Config changes - NuclearCraft
  + Replaced nuclearcraft.info with nuclearcraft.ncpf.json config format
  + Added Schrabidate Dilithium fuel (li_infused_schrabidate_quad_rod) to SFR fuel stats
  + Added Solinium fuel pellets (HES/MES/LES) to SFR fuel stats

### Config changes - Other
  + StellarCore: added DirectoryResourcePackIndex, ParallelModelLoaderBlackListPredefined, EnergyCalculatorLegParallelMode
  + LemonSkin: added debug info format, Simple Difficulty integration, Mantle health overlay compatibility
  + JEI: enabled addBookmarksToFront, disabled cheat items, added new world settings for additional dimensions
  + JourneyMap: added server admin access configuration
  + UniDict: removed (IntegrationModule, ModConfigModule, UniDict configs deleted)
  + Removed Biomes O'Plenty biome config files, gameplay.cfg, and misc.cfg
  + Removed Forge Early config and ForgeEndertech biome configs
  + Removed Entity Culling config, model loader config, relauncher config
  + Removed Voice Chat volume configs (voicechat-volumes.properties)
  + Removed Iron Backpacks JEI configs (itemBlacklist, jei, searchColors)

### Script changes
  + advancedRocketryTweaks.zs: Photovoltaic Panel recipe changed plate_advanced_alloy -> plate_gold
  + dilithiumProcessing.zs: SolidFission recipe added FluxDecayFactor parameter (0)
  + hbmTweaks.zs: Removed Advanced Shredder Blades recipe
  + ironJetpacksTweaks.zs: Elite coil changed coil_advanced_alloy -> coil_gold
  + nuclearcraftTweaks.zs: Rock Crusher gated behind Desh (ingot_desh replaces ingotTough), added 9 lines
  + soliniumFuels.zs: All 3 SolidFission recipes updated with new FluxDecayFactor parameter (0), comment updated
  + Tips and loading screen text: rewritten for clarity, removed em dashes, added reactor safety tip

### Quest Changes
  + Removed old quest file structure (Quests/<mod>/<id>.json) - quests now managed through Work/ symlink
  + Updated questline layout files (QuestLines/0.json through 31.json)
  + Industrial Renewal questline (QL26) updated with restructured layout
  + Updated quest count from 219 to 717 quests across 23 questlines

### Starter Kit
  + Added torches (4x) and a boat to starting inventory

### Splash Screen
  + Updated timestamp to Jul 21 2026

### Resources
  + Removed 4 background images (16-19), resized remaining 15

### To be added in next update
  + Start rewrite of full questbook based on real progression experience that I shall get by actually playing the modpack
  + Fix any bugs suggested by players

### Credits
  + Many thanks to **randomplayer, GenJeFT, lasagna11, Reflex and tornadonader** for identifying bugs and other issues in the modpack
