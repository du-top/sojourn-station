/mob/living/carbon/superior_animal/psi_monster/doTargetMessage()
	. = ..()

	if(last_noise <= (world.time) && aggro_noise)
		playsound(src.loc, list(aggro_noise), 120, 1)
		last_noise = world.time + 30 SECONDS
	//We do if src in case someone has a gun to 1 shot them mid-animation and kills them on the spot.
	if(phaser)
		animate(src, alpha = chameleon_skill, time = 2)
		spawn(3) if(src) animate(src, alpha = 55, time = 2)
		spawn(3) if(src) animate(src, alpha = 155, time = 2)
		spawn(3) if(src) animate(src, alpha = 255, time = 2)

/mob/living/carbon/superior_animal/psi_monster/death(var/gibbed,var/message = deathmessage)
	if (stat != DEAD)
		target_mob = null
		playsound(src.loc, list('sound/hallucinations/growl1.ogg', 'sound/hallucinations/growl2.ogg', 'sound/hallucinations/growl3.ogg'), 120, 1)

	for(var/obj/item/I in src)
		drop_from_inventory(I)
		I.throw_at(get_edge_target_turf(src,pick(alldirs)), rand(1,3), round(30/I.w_class))

	if(GLOB.deepmaints_data_bool["deepmaints_ash_drops"])
		new momento_mori(src.loc)

	if(GLOB.deepmaints_data_bool["deepmaints_loot_drops"])
		drop_death_loot(src.loc)

		if(death_present)
			src.visible_message(SPAN_DANGER(death_gasp))
			new death_spawn_gift(src.loc)

	if(psionic_respawn && GLOB.deepmaints_data_bool["allow_respawning"])
		var/my_little_location = get_turf(src)
		addtimer(CALLBACK(my_little_location, /turf/proc/psionic_respawn, my_little_location, respawn_mob_type), rand(fast_respawn,slow_respawn))

	qdel(src)

	//You killed something not of this planet. Congrats...

	if(affects_chaos && GLOB.deepmaints_data_bool["chaos_lowering"])
		GLOB.chaos_level -= 1

	. = ..()

/turf/proc/psionic_respawn(my_little_location, respawn_mob_type)
	if(holy && GLOB.deepmaints_data_bool["holy_water_delay"])
		//5% for a different higher power to step in blocking the defailing of the playground. Killing it for the round.
		//This comes at a cost of sending a playtime rune being sent somewere.
		if(prob(5) && GLOB.deepmaints_data_bool["holy_water_despawning"])
			var/obj/effect/decal/cleanable/crayon/trap/rebound_joy = new /obj/effect/decal/cleanable/crayon/trap(src.loc)
			rebound_joy.caprice_spell()
		else
			addtimer(CALLBACK(src, /turf/proc/psionic_respawn, src, respawn_mob_type), rand(15 MINUTES,20 MINUTES))
			holy = FALSE
		return
	new respawn_mob_type(my_little_location)


/mob/living/carbon/superior_animal/psi_monster/gib(var/anim = icon_gib, var/do_gibs = 1)
	if (!anim)
		anim = 0

	for(var/obj/item/I in src)
		drop_from_inventory(I)
		I.throw_at(get_edge_target_turf(src,pick(alldirs)), rand(1,3), round(30/I.w_class))

	. = ..()
