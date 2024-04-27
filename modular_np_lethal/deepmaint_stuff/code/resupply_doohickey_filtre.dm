/obj/machinery/vending/wallmed/epic_loot/evil
	name = "\improper SuperSupply Premium ™"
	desc = "Wall-mounted dispenser filled with bullets and medical supplies."
	flags_1 = NO_DEBRIS_AFTER_DECONSTRUCTION
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	product_categories = list(
		list(
			"name" = "Medical",
			"icon" = "suitcase-medical",
			"products" = list(
				/obj/item/healthanalyzer/simple = INFINITY,
				/obj/item/stack/medical/bandage = INFINITY,
				/obj/item/stack/medical/gauze = INFINITY,
				/obj/item/stack/medical/gauze/sterilized = INFINITY,
				/obj/item/stack/medical/bruise_pack = INFINITY,
				/obj/item/stack/medical/suture/coagulant = INFINITY,
				/obj/item/stack/medical/suture/bloody = INFINITY,
				/obj/item/stack/medical/suture/medicated = INFINITY,
				/obj/item/stack/medical/ointment/red_sun = INFINITY,
				/obj/item/stack/medical/mesh/bloody = INFINITY,
				/obj/item/stack/medical/mesh/advanced = INFINITY,
				/obj/item/reagent_containers/pill/patch/lethal_synth_repair = INFINITY,
				/obj/item/stack/medical/wound_recovery = INFINITY,
				/obj/item/stack/medical/wound_recovery/rapid_coagulant = INFINITY,
				/obj/item/stack/medical/wound_recovery/robofoam = INFINITY,
				/obj/item/stack/medical/wound_recovery/robofoam_super = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/morpital = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/lipital = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/lepoturi = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/pentibinin = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/coagulants = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/calopine = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/glucose = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/glucose/synth_charger = INFINITY,
				/obj/item/storage/medkit/frontier/stocked = INFINITY,
				/obj/item/storage/medkit/combat_surgeon/stocked = INFINITY,
				/obj/item/tank/internals/plasmaman/belt/full = INFINITY,
				/obj/item/tank/internals/nitrogen/belt/full = INFINITY,
			),
		),
		list(
			"name" = "Ammunition",
			"icon" = "person-rifle",
			"products" = list(
				/obj/item/flashlight/flare = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c980/prefilled/smoke = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c980/prefilled/shrap = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c980/prefilled/gas = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c980/prefilled/fire = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled/buckshot = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled/express = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled/magnum = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled/breacher = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c35_sol/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c35_sol/prefilled/ripper = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c27_54cesarzowa/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c585_trappiste/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c585_trappiste/prefilled/hollowpoint = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c40_sol/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c40_sol/prefilled/frag = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c40_sol/prefilled/incendiary = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c310_strilka/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c310_strilka/prefilled/ap = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c60_strela/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c12chinmoku/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c12chinmoku/prefilled/special = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c12chinmoku/prefilled/tracer = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c8marsian/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c8marsian/prefilled/piercing = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c8marsian/prefilled/shockwave = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s6gauge/prefilled = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s6gauge/prefilled/slug = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s6gauge/prefilled/longshot = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s6gauge/prefilled/flash = INFINITY,
			),
		),
	)
	contraband = list()
	default_price = 0
	extra_price = 0
	onstation = FALSE

MAPPING_DIRECTIONAL_HELPERS(/obj/machinery/vending/wallmed/epic_loot/evil, 32)

/obj/machinery/vending/evil_clothing/super_evil
	name = "Super Evil ClothesMate"
	product_categories = list(
		list(
			"name" = "Clothing",
			"icon" = "shirt",
			"products" = list(
				/obj/item/clothing/head/soft/sec = INFINITY,
				/obj/item/clothing/head/helmet/lethal_filtre_helmet = INFINITY,
				/obj/item/clothing/suit/armor/lethal_filtre = INFINITY,
				/obj/item/clothing/suit/armor/lethal_filtre/heavy = INFINITY,
				/obj/item/clothing/mask/gas/sechailer/half_mask = INFINITY,
				/obj/item/clothing/mask/gas/alt = INFINITY,
				/obj/item/clothing/mask/paper = INFINITY,
				/obj/item/clothing/mask/gas/syndicate/ds = INFINITY,
				/obj/item/clothing/mask/gas/respirator = INFINITY,
				/obj/item/clothing/gloves/frontier_colonist = INFINITY,
				/obj/item/clothing/gloves/tackler/combat = INFINITY,
				/obj/item/clothing/gloves/latex/nitrile = INFINITY,
				/obj/item/clothing/shoes/jackboots/frontier_colonist = INFINITY,
				/obj/item/clothing/glasses/night = INFINITY,
				/obj/item/clothing/glasses/thermal = INFINITY,
				/obj/item/clothing/glasses/sunglasses/big = INFINITY,
				/obj/item/clothing/glasses/nightmare_vision = INFINITY,
				/obj/item/clothing/under/syndicate/combat = INFINITY,
				/obj/item/clothing/neck/ranger_poncho = INFINITY,
				/obj/item/clothing/neck/robe_cape = INFINITY,
				/obj/item/clothing/neck/long_cape = INFINITY,
				/obj/item/clothing/neck/wide_cape = INFINITY,
			),
		),
		list(
			"name" = "Gear",
			"icon" = "gear",
			"products" = list(
				/obj/item/storage/pouch/medical/loaded = INFINITY,
				/obj/item/storage/pouch/ammo = INFINITY,
				/obj/item/storage/epic_loot_org_pouch = INFINITY,
				/obj/item/storage/epic_loot_medpen_case = INFINITY,
				/obj/item/storage/belt/military/nri/captain = INFINITY,
				/obj/item/storage/belt/military/cin_surplus/marine = INFINITY,
				/obj/item/storage/backpack/industrial/frontier_colonist = INFINITY,
				/obj/item/storage/backpack/industrial/frontier_colonist/messenger = INFINITY,
				/obj/item/storage/backpack/industrial/frontier_colonist/satchel = INFINITY,
				/obj/item/shield/ballistic = INFINITY,
			),
		),
		list(
			"name" = "Weapons",
			"icon" = "hammer",
			"products" = list(
				/obj/item/flashlight/flare = INFINITY,
				/obj/item/knife/combat = INFINITY,
				/obj/item/trench_tool = INFINITY,
				/obj/item/suppressor = INFINITY,
				/obj/item/grenade/syndieminibomb/concussion/impact = INFINITY,
				/obj/item/grenade/frag/impact = INFINITY,
				/obj/item/grenade/smokebomb = INFINITY,
				/obj/item/grenade/stingbang = INFINITY,
				/obj/item/gun/energy/modular_laser_rifle = INFINITY,
				/obj/item/gun/energy/modular_laser_rifle/carbine = INFINITY,
				/obj/item/gun/ballistic/automatic/nomi_shotgun = INFINITY,
				/obj/item/ammo_box/magazine/c12nomi/starts_empty = INFINITY,
				/obj/item/gun/ballistic/shotgun/ramu = INFINITY,
				/obj/item/gun/ballistic/automatic/pistol/weevil = INFINITY,
				/obj/item/gun/ballistic/automatic/seiba_smg = INFINITY,
				/obj/item/ammo_box/magazine/miecz/spawns_empty = INFINITY,
				/obj/item/gun/ballistic/rifle/chokyu = INFINITY,
				/obj/item/ammo_box/magazine/c8marsian/starts_empty = INFINITY,
				/obj/item/gun/ballistic/automatic/suppressed_rifle = INFINITY,
				/obj/item/gun/ballistic/automatic/suppressed_rifle/grenade_launcher = INFINITY,
				/obj/item/gun/ballistic/automatic/suppressed_rifle/marksman = INFINITY,
				/obj/item/ammo_box/magazine/c12chinmoku/starts_empty = INFINITY,
				/obj/item/ammo_box/magazine/c12chinmoku/standard/starts_empty = INFINITY,
				/obj/item/gun/ballistic/automatic/sol_grenade_launcher/evil = INFINITY,
				/obj/item/ammo_box/magazine/c980_grenade/starts_empty = INFINITY,
				/obj/item/ammo_box/magazine/c980_grenade/drum/starts_empty = INFINITY,
			),
		),
	)
