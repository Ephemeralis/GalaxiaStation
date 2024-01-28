/datum/mod_theme/entombed
	name = "fused"
	desc = "Circumstances have rendered this protective suit into someone's second skin. Literally."
	extended_desc = "Some great aspect of someone's past has permanently bound them to this device, for better or worse."

	default_skin = "civilian"
	armor_type = /datum/armor/mod_entombed
	resistance_flags = FIRE_PROOF | ACID_PROOF | INDESTRUCTIBLE // It is better to die for the Emperor than live for yourself.
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	siemens_coefficient = 0
	complexity_max = DEFAULT_MAX_COMPLEXITY - 5
	charge_drain = DEFAULT_CHARGE_DRAIN
	slowdown_inactive = 2.5 // very slow because the quirk infers you rely on this to move/exist
	slowdown_active = 0.95
	inbuilt_modules = list(
		/obj/item/mod/module/joint_torsion/entombed,
		/obj/item/mod/module/storage
	)
	allowed_suit_storage = list(
		/obj/item/tank/internals,
		/obj/item/flashlight,
	)

/datum/armor/mod_entombed
	melee = ARMOR_LEVEL_WEAK
	bullet = ARMOR_LEVEL_WEAK
	laser = ARMOR_LEVEL_WEAK
	energy = ARMOR_LEVEL_WEAK
	bomb = ARMOR_LEVEL_WEAK
	bio = ARMOR_LEVEL_WEAK
	fire = ARMOR_LEVEL_WEAK
	acid = ARMOR_LEVEL_WEAK
	wound = WOUND_ARMOR_WEAK

/obj/item/mod/module/joint_torsion/entombed
	name = "internal joint torsion adaptation"
	desc = "Your adaptation to life in this MODsuit shell allows you to ambulate in such a way that your movements recharge the suit's internal batteries slightly, but only while under the effect of gravity."
	removable = FALSE
	complexity = 0
	power_per_step = DEFAULT_CHARGE_DRAIN * 0.4

/obj/item/mod/module/plasma_stabilizer/entombed
	name = "colony-stabilized interior seal"
	desc = "Your colony has fully integrated the internal segments of your suit's plate into your skeleton, forming a hermetic seal between you and the outside world from which none of your atmosphere can escape. This is enough to allow your head to view the world with your helmet retracted."
	complexity = 0
	idle_power_cost = 0
	removable = FALSE

/obj/item/mod/control/pre_equipped/entombed
	theme = /datum/mod_theme/entombed
	applied_cell = /obj/item/stock_parts/cell/high

/obj/item/mod/control/pre_equipped/entombed/Initialize(mapload, new_theme, new_skin, new_core)
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, QUIRK_TRAIT)
