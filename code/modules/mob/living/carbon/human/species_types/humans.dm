/datum/species/human
	name = "Human"
	id = "human"
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,HAS_FLESH,HAS_BONE)
	mutant_bodyparts = list("wings" = "None")
	use_skintones = 1
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = GROSS | RAW
	liked_food = JUNKFOOD | FRIED
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	payday_modifier = 1
	selectable = TRUE

/datum/species/human/on_species_gain(mob/living/carbon/human/C)
	. = ..()
	C.update_body(0)

	// TFN EDIT BEGIN - Memories should be components
	if(C.mind)
		C.mind.refresh_memory()
	// TFN EDIT END


/datum/species/human/on_species_loss(mob/living/carbon/human/C, datum/species/new_species, pref_load)
	. = ..()

/datum/species/human/check_roundstart_eligible()
	return TRUE

/datum/species/human/felinid/check_roundstart_eligible()
	return FALSE
