//genin are on a similar power band as gaksters, but they trade a few values around.
//the kudagitsune are support fighters that get weak (tier ii-ish) but feature rich armor that allows them to move quicker than similarly armored gaksters.
/datum/armor/armor_lethal_kudagitsune
	melee = ARMOR_LEVEL_MID
	bullet = BULLET_ARMOR_II
	laser = ARMOR_LEVEL_MID
	energy = ARMOR_LEVEL_WEAK
	bomb = ARMOR_LEVEL_MID
	fire = ARMOR_LEVEL_MID
	acid = ARMOR_LEVEL_WEAK
	wound = WOUND_ARMOR_HIGH

//the baku are frontline combatants that get mid tier gakster armor (tier iii-ish)
/datum/armor/armor_lethal_baku
	melee = ARMOR_LEVEL_MID
	bullet = BULLET_ARMOR_II + 10
	laser = ARMOR_LEVEL_MID
	energy = ARMOR_LEVEL_WEAK
	bomb = ARMOR_LEVEL_MID
	fire = ARMOR_LEVEL_MID
	acid = ARMOR_LEVEL_WEAK
	wound = WOUND_ARMOR_HIGH

//the chunin are filtres with anime powers, they get filtres-level gear
/datum/armor/armor_lethal_chunin
	melee = ARMOR_LEVEL_MID + 20
	bullet = BULLET_ARMOR_IV
	laser = ARMOR_LEVEL_MID + 10
	energy = ARMOR_LEVEL_WEAK
	bomb = ARMOR_LEVEL_MID
	fire = ARMOR_LEVEL_MID + 25
	acid = ARMOR_LEVEL_MID
	wound = WOUND_ARMOR_HIGH

/obj/item/clothing/head/helmet/lethal_filtre_helmet/kitsune
	name = "'Ninko' helmet system"
	desc = "A complex helmet system that sacrifices some armor plating for a suite of sensors and signal amplifiers \
	that serve to augment the wearer's situational awareness, sensory capacity, and tactical effect."
	icon = 'modular_np_lethal/ninja_stuff/icons/armor.dmi'
	icon_state = "genin_helmet_kitsune"
	worn_icon = 'modular_np_lethal/ninja_stuff/icons/armor_worn.dmi'
	armor_type = /datum/armor/armor_lethal_kudagitsune
	max_integrity = 400
	limb_integrity = 400
	clothing_traits = list(
		TRAIT_DIAGNOSTIC_HUD,
		TRAIT_REAGENT_SCANNER,
		TRAIT_MEDICAL_HUD,
	)

/obj/item/clothing/head/helmet/lethal_filtre_helmet/kitsune/equipped(mob/living/carbon/human/user, slot)
	..()
	if(!(slot & ITEM_SLOT_HEAD))
		return
	for(var/hudtype in list(DATA_HUD_SECURITY_ADVANCED, DATA_HUD_MEDICAL_ADVANCED, DATA_HUD_DIAGNOSTIC_ADVANCED))
		var/datum/atom_hud/atom_hud = GLOB.huds[hudtype]
		atom_hud.show_to(user)

/obj/item/clothing/head/helmet/lethal_filtre_helmet/kitsune/dropped(mob/living/carbon/human/user)
	..()
	if(!istype(user) || user.head != src)
		return
	for(var/hudtype in list(DATA_HUD_SECURITY_ADVANCED, DATA_HUD_MEDICAL_ADVANCED, DATA_HUD_DIAGNOSTIC_ADVANCED))
		var/datum/atom_hud/atom_hud = GLOB.huds[hudtype]
		atom_hud.hide_from(user)

/obj/item/clothing/head/helmet/lethal_filtre_helmet/oni
	name = "'Bakemono' helmet system"
	desc = "An armored helmet system that makes no sacrifices in terms of protection. The plating is a laminate blend \
	of ceramic, petrochemical resins, and oriented titanium strands that can stand up to more abuse than sacrificial \
	ceramic plates alone."
	icon = 'modular_np_lethal/ninja_stuff/icons/armor.dmi'
	icon_state = "genin_helmet_oni"
	worn_icon = 'modular_np_lethal/ninja_stuff/icons/armor_worn.dmi'
	armor_type = /datum/armor/armor_lethal_baku
	max_integrity = 600
	limb_integrity = 600

/obj/item/clothing/head/helmet/lethal_filtre_helmet/oni/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text, final_block_chance, damage, attack_type, damage_type)
	. = ..()

	if(istype(hitby, /obj/projectile))
		var/obj/projectile/incoming_projectile = hitby
		incoming_projectile.armour_penetration = 0
		playsound(src, SFX_RICOCHET, BLOCK_SOUND_VOLUME, vary = TRUE)

//stuff that goes on your torso

//stuff that goes on your hands

/obj/item/clothing/gloves/kote
	name = "kote sleeves"
	desc = "A pair of armwarmers has been reinforced with printed chain and and high strength resin plates in \
	imitation of medieval underarmor. The result is less resilient then dedicated armored gauntlets, but these \
	are able to protect your extremities without hampering your manual dexterity."
	icon = 'modular_nova/modules/kahraman_equipment/icons/clothes/clothing.dmi'
	icon_state = "gloves"
	worn_icon = 'modular_nova/modules/kahraman_equipment/icons/clothes/clothing_worn.dmi'
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	worn_icon_state = "gloves"
	clothing_traits = list(TRAIT_QUICK_CARRY)

//stuff that goes on your feet
