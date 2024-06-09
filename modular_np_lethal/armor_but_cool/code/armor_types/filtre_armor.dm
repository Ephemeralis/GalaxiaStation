/datum/armor/armor_lethal_filtre
	melee = ARMOR_LEVEL_MID
	bullet = BULLET_ARMOR_III
	laser = ARMOR_LEVEL_MID
	energy = ARMOR_LEVEL_WEAK
	bomb = ARMOR_LEVEL_MID
	fire = ARMOR_LEVEL_MID + 25
	acid = ARMOR_LEVEL_MID
	wound = WOUND_ARMOR_HIGH

/datum/armor/armor_lethal_filtre_super
	melee = ARMOR_LEVEL_MID + 25
	bullet = BULLET_ARMOR_IV
	laser = ARMOR_LEVEL_MID + 25
	energy = ARMOR_LEVEL_WEAK
	bomb = ARMOR_LEVEL_MID
	fire = ARMOR_LEVEL_MID + 25
	acid = ARMOR_LEVEL_MID
	wound = WOUND_ARMOR_HIGH

/datum/armor/armor_lethal_filtre_light
	melee = ARMOR_LEVEL_MID + 25
	bullet = BULLET_ARMOR_II
	laser = ARMOR_LEVEL_MID
	energy = ARMOR_LEVEL_WEAK
	bomb = ARMOR_LEVEL_MID
	fire = ARMOR_LEVEL_MID + 25
	acid = ARMOR_LEVEL_MID
	wound = WOUND_ARMOR_HIGH

/obj/item/clothing/suit/armor/lethal_filtre
	name = "'Firuta' type III high mobility armor kit"
	desc = "A heavy full kit of armor for protecting every part of your body but the head and legs with exceptional plating. \
		The armor's excessive bulk, however, makes the kit slow to move in. A small price to pay for such superior protection."
	icon = 'modular_np_lethal/armor_but_cool/icons/armor.dmi'
	icon_state = "filtre_light"
	worn_icon = 'modular_np_lethal/armor_but_cool/icons/armor_worn.dmi'
	inhand_icon_state = "armor"
	blood_overlay_type = "armor"
	armor_type = /datum/armor/armor_lethal_giga_larp
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	resistance_flags = FIRE_PROOF
	body_parts_covered = CHEST|GROIN|ARMS
	max_integrity = 1000
	limb_integrity = 800
	slowdown = 0.4
	equip_delay_self = 10 SECONDS

/obj/item/clothing/suit/armor/lethal_filtre/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/seclite_attachable, \
		starting_light = new /obj/item/flashlight/seclite(src), \
		is_light_removable = FALSE, \
		light_icon_state = null, \
		light_overlay_icon = null, \
		light_overlay = null, \
		)

/obj/item/clothing/suit/armor/lethal_filtre/worn_overlays(mutable_appearance/standing, isinhands, icon_file)
	. = ..()
	if(!isinhands)
		. += emissive_appearance(icon_file, "[icon_state]-emissive", src, alpha = src.alpha)

/obj/item/clothing/suit/armor/lethal_filtre/examine(mob/user)
	. = ..()
	. += span_notice("In a pinch, it can be <b>repaired</b> with <b>premium robotic repair spray</b>.")

/obj/item/clothing/suit/armor/lethal_filtre/examine_more(mob/user)
	. = ..()

	. += "What do you do when you need to protect a single point against an unknown number of attackers \
		with unknown gear and unknown approach? You simply prepare for everything of course. \
		Armor kits such as these are rarely standardized, being made up of multiple different \
		types of armor combined into a generally cohesive theme of providing full protection from everything."

	return .

/obj/item/clothing/suit/armor/lethal_filtre/heavy
	name = "'Firuta' type IV heavy armor kit"
	desc = "An excessively heavy full kit of armor for protecting every part of your body but the head with exceptional plating. \
		The armor's insane bulk, however, makes the kit extremely slow to move in. A small price to pay for such superior protection."
	icon_state = "filtre_heavy"
	armor_type = /datum/armor/armor_lethal_filtre_super
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	slowdown = 1
	max_integrity = 1000
	limb_integrity = 700

/obj/item/clothing/suit/armor/lethal_filtre/super_light
	name = "'Sukyana' type II extreme mobility armor kit"
	desc = "A high-tech kit of armor for protecting every part of your body but the head with exceptional plating. \
		This type is made for the highest mobility possible, sacrificing petty concepts like 'actually protecting the wearer' \
		in exchange for simply not being hit."
	icon_state = "filtre_meowers"
	armor_type = /datum/armor/armor_lethal_filtre_light
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	slowdown = 0.25
	max_integrity = 1000
	limb_integrity = 700

/obj/item/clothing/head/helmet/lethal_filtre_helmet
	name = "'Firuta' type IV ballistic helmet"
	desc = "A high tech full-head helmet with supreme class V protection for the whole of the second \
		most important part of a marine's body. Vision is provided by an internal camera system, \
		the only signs of which on the outside are the twin pair of visible cameras on the front of the face. \
		There are, of course, more than this, but the visible ones are for the fun factor."
	icon = 'modular_np_lethal/armor_but_cool/icons/armor.dmi'
	icon_state = "filtre_helmet"
	worn_icon = 'modular_np_lethal/armor_but_cool/icons/armor_worn.dmi'
	inhand_icon_state = "helmet"
	armor_type = /datum/armor/armor_lethal_filtre_super
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE|HIDESNOUT
	flags_cover = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF
	max_integrity = 800
	limb_integrity = 800
	dog_fashion = null
	flags_inv = null
	supports_variations_flags = CLOTHING_SNOUTED_VARIATION_NO_NEW_ICON
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/helmet/lethal_filtre_helmet/worn_overlays(mutable_appearance/standing, isinhands, icon_file)
	. = ..()
	if(!isinhands)
		. += emissive_appearance(icon_file, "[icon_state]-emissive", src, alpha = src.alpha)

/obj/item/clothing/head/helmet/lethal_filtre_helmet/examine(mob/user)
	. = ..()
	. += span_notice("In a pinch, it can be <b>repaired</b> with <b>premium robotic repair spray</b>.")

/obj/item/clothing/head/helmet/lethal_filtre_helmet/examine_more(mob/user)
	. = ..()

	. += "What do you do when you need to protect a single point against an unknown number of attackers \
		with unknown gear and unknown approach? You simply prepare for everything of course. \
		Armor kits such as these are rarely standardized, being made up of multiple different \
		types of armor combined into a generally cohesive theme of providing full protection from everything."

	return .

/obj/item/clothing/head/helmet/lethal_filtre_helmet/light
	name = "'Sukyana' type III ballistic helmet"
	desc = "A high tech helmet with a complicated-looking sensors suite stuck to the front. \
		While not as protective as other types of helmets, the sensors suite has a variety of \
		modern HUDs useful for all types of operations."
	icon = 'modular_np_lethal/armor_but_cool/icons/armor.dmi'
	icon_state = "filtre_helmet_meowers"
	worn_icon = 'modular_np_lethal/armor_but_cool/icons/armor_worn.dmi'
	inhand_icon_state = "helmet"
	armor_type = /datum/armor/armor_lethal_filtre
	flags_inv = HIDEEARS|HIDEEYES
	flags_cover = HEADCOVERSEYES|PEPPERPROOF
	clothing_traits = list(
		TRAIT_DIAGNOSTIC_HUD,
		TRAIT_REAGENT_SCANNER,
		TRAIT_MEDICAL_HUD,
	)

/obj/item/clothing/head/helmet/lethal_filtre_helmet/light/examine_more(mob/user)
	. = ..()

	. += "What's better than simply being protected from everything? \
		Knowing where everything is at all times. The most expensive sensors \
		equipment this side of the planet compressed into something that \
		conveniently fits over your eyes!"

	return .

/obj/item/clothing/head/helmet/lethal_filtre_helmet/light/equipped(mob/living/carbon/human/user, slot)
	..()
	if(!(slot & ITEM_SLOT_HEAD))
		return
	for(var/hudtype in list(DATA_HUD_SECURITY_ADVANCED, DATA_HUD_MEDICAL_ADVANCED, DATA_HUD_DIAGNOSTIC_ADVANCED))
		var/datum/atom_hud/atom_hud = GLOB.huds[hudtype]
		atom_hud.show_to(user)

/obj/item/clothing/head/helmet/lethal_filtre_helmet/light/dropped(mob/living/carbon/human/user)
	..()
	if(!istype(user) || user.head != src)
		return
	for(var/hudtype in list(DATA_HUD_SECURITY_ADVANCED, DATA_HUD_MEDICAL_ADVANCED, DATA_HUD_DIAGNOSTIC_ADVANCED))
		var/datum/atom_hud/atom_hud = GLOB.huds[hudtype]
		atom_hud.hide_from(user)

// CUSTOM LOADOUT FILTRE ARMORS

/obj/item/clothing/suit/armor/lethal_filtre/heavy/giggler
	name = "'Armageddon' type IV heavy armor kit"
	desc = "An excessively heavy full kit of armor for protecting every part of your body but the head with exceptional plating. \
		The armor's insane bulk, however, makes the kit extremely slow to move in. A small price to pay for such superior protection. \
		This one appears to have been modified with extra plating and red markings, but remains otherwide identical in performance \
		to the standard filtre's armor."
	icon_state = "filtre_heavy_armageddon"

/obj/item/clothing/head/helmet/lethal_filtre_helmet/giggler
	name = "'Armageddon' type IV ballistic helmet"
	desc = "A high tech full-head helmet with supreme class V protection for the whole of the second \
		most important part of a marine's body. Vision is provided by an internal camera system. \
		This one appears to be modified with a more visible HUD system, as well as a bright-red \
		face shield that someone has painted a smiley face on."
	icon_state = "filtre_helmet_armageddon"

/obj/item/clothing/suit/armor/lethal_filtre/heavy/nineball
	name = "'Novem' type IV heavy armor kit"
	desc = "An excessively heavy full kit of armor for protecting every part of your body but the head with exceptional plating. \
		The armor's insane bulk, however, makes the kit extremely slow to move in. A small price to pay for such superior protection. \
		This one has been mounted with extraneous armor plating and a custom paintjob in certain areas, but it nonetheless functions \
		the exact same as any other suit of armor utilized by a filtre."
	icon_state = "filtre_heavy_novem"

/obj/item/clothing/head/helmet/lethal_filtre_helmet/nineball
	name = "'Novem' type IV ballistic helmet"
	desc = "A high tech full-head helmet with supreme class V protection for the whole of the second \
		most important part of a marine's body. Vision is provided by an internal camera system, \
		which on this helmet has been augmented by a single heads-up display visible on the front \
		of the face shield. It's also got fancy golden stripes, because they look cool."
	icon_state = "filtre_helmet_novem"
