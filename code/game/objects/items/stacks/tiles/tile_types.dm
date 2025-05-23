/* Diffrent types of tiles
 * Contains:
 *		Grass
 *		Wood
 *		Carpet
 *		Steel
 *		Plastic
 *		More Steel
 */

/obj/item/stack/tile
	name = "scrap metal"
	singular_name = "scrap metal"
	icon = 'icons/obj/stack/tile.dmi'
	icon_state = "broken_tile"
	desc = "A useless bit of scrap metal. You could probably salvage this."
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_HARMLESS
	throwforce = WEAPON_FORCE_WEAK
	throw_speed = 3
	throw_range = 7
	max_amount = 60

/obj/item/stack/tile/New()
	..()
	pixel_x = rand(-7, 7)
	pixel_y = rand(-7, 7)

/*
 * Grass
 */
/obj/item/stack/tile/grass
	name = "grass tile"
	singular_name = "grass floor tile"
	desc = "A patch of grass like they often use on golf courses."
	icon_state = "tile_grass"
	flags = 0
	origin_tech = list(TECH_BIO = 1)

/*
 * Wood
 */
/obj/item/stack/tile/wood
	name = "wood floor tile"
	singular_name = "wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile_wood"
	force = WEAPON_FORCE_NORMAL
	throwforce = WEAPON_FORCE_NORMAL
	flags = 0

/obj/item/stack/tile/wood/ashen
	name = "ashen wood floor tile"
	singular_name = "ashen wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile_ashwood"

/obj/item/stack/tile/wood/ashen/red
	name = "red ashen wood floor tile"
	singular_name = "red ashen wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile_ashwood"

/obj/item/stack/tile/wood/ashen/dull
	name = "dull ashen wood floor tile"
	singular_name = "dull ashen wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile_oldwood"

/obj/item/stack/tile/wood/old
	name = "old wood floor tile"
	singular_name = "old wood floor tile"
	desc = "An easy to fit wooden floor tile. Mind the splinters."
	icon_state = "tile_oldwood"

/obj/item/stack/tile/wood/wood_old
	name = "old wood floor tile"
	singular_name = "old wood floor tile"
	desc = "An easy to fit wooden floor tile. Mind the splinters."
	icon_state = "tile_oldwood"

/obj/item/stack/tile/wood/old/veridical
	name = "old veridical wood floor tile"
	singular_name = "old veridical wood floor tile"

/obj/item/stack/tile/wood/cyborg
	name = "wood floor tile synthesizer"
	desc = "A device that makes wood floor tiles."
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/wood
	build_type = /obj/item/stack/tile/wood

/*
 * Carpets
 */
/obj/item/stack/tile/carpet
	name = "red carpet"
	singular_name = "red carpet"
	desc = "A piece of carpet. It is the same size as a normal floor tile!"
	icon_state = "tile_carpet"
	flags = 0

/obj/item/stack/tile/carpet/bcarpet
	name = "black carpet"
	singular_name = "black carpet"
	icon_state = "tile_bcarpet"

/obj/item/stack/tile/carpet/blucarpet
	name = "blue carpet"
	singular_name = "blue carpet"
	icon_state = "tile_blucarpet"

/obj/item/stack/tile/carpet/turcarpet
	name = "turquoise carpet"
	singular_name = "turquoise carpet"
	icon_state = "tile_turcarpet"

/obj/item/stack/tile/carpet/sblucarpet
	name = "silver blue carpet"
	singular_name = "silver blue carpet"
	icon_state = "tile_sblucarpet"

/obj/item/stack/tile/carpet/gaycarpet
	name = "clown carpet"
	singular_name = "clown carpet"
	icon_state = "tile_gaycarpet"

/obj/item/stack/tile/carpet/purcarpet
	name = "purple carpet"
	singular_name = "purple carpet"
	icon_state = "tile_purcarpet"

/obj/item/stack/tile/carpet/oracarpet
	name = "orange carpet"
	singular_name = "orange carpet"
	icon_state = "tile_oracarpet"

/*
 * Flooring parent
 */
/obj/item/stack/tile/floor
	name = "floor tile"
	singular_name = "floor tile"
	desc = "Could work as a pretty decent throwing weapon."
	icon_state = "tile"
	force = WEAPON_FORCE_NORMAL
	throwforce = WEAPON_FORCE_PAINFUL
	matter = list(MATERIAL_STEEL = 1)
	flags = CONDUCT

/obj/item/stack/tile/floor/cyborg
	name = "floor tile synthesizer"
	desc = "A device that makes floor tiles."
	gender = NEUTER
	matter = null
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/floor
	build_type = /obj/item/stack/tile/floor

	var/list/cyborg_floor = list(
		"steel techfloor" = /obj/item/stack/tile/floor/steel/techfloor,
		"gray platform" =  /obj/item/stack/tile/floor/steel/gray_platform,
		"cafe floor tile" = /obj/item/stack/tile/floor/cafe,
		"maint floor tile" = /obj/item/stack/tile/floor/techmaint,
		"perforated maint floor tile" = /obj/item/stack/tile/floor/techmaint/perforated,
		"panel maint floor tile" = /obj/item/stack/tile/floor/techmaint/panels,
		"cargo maint floor tile" = /obj/item/stack/tile/floor/techmaint/cargo,
		"steel techfloor tile with vents" = /obj/item/stack/tile/floor/steel/techfloor_grid,
		"steel brown perforated tile" = /obj/item/stack/tile/floor/steel/brown_perforated,
		"steel gray perforated tile" = /obj/item/stack/tile/floor/steel/gray_perforated,
		"steel cargo tile" = /obj/item/stack/tile/floor/steel/cargo,
		"steel bar flat tile" = /obj/item/stack/tile/floor/steel/bar_flat,
		"steel bar dance tile" = /obj/item/stack/tile/floor/steel/bar_dance,
		"steel bar light tile" = /obj/item/stack/tile/floor/steel/bar_light,
		"white floor tile" = /obj/item/stack/tile/floor/white,
		"white cargo tile" = /obj/item/stack/tile/floor/white/cargo,
		"red carpet" = /obj/item/stack/tile/carpet,
		"black carpet" = /obj/item/stack/tile/carpet/bcarpet,
		"blue carpet" = /obj/item/stack/tile/carpet/blucarpet,
		"turquoise carpet" = /obj/item/stack/tile/carpet/turcarpet,
		"silver blue carpet" = /obj/item/stack/tile/carpet/sblucarpet,
		"purple carpet" = /obj/item/stack/tile/carpet/purcarpet,
		"orange carpet" = /obj/item/stack/tile/carpet/oracarpet
	)

/obj/item/stack/tile/floor/cyborg/afterattack(var/atom/A, var/mob/user, proximity, params)
	if(!proximity)
		return

/obj/item/stack/tile/floor/cyborg/attack_self(var/mob/user)

	var/new_cyborg_floor = input("Choose type of floor", "Tile synthesizer")as null|anything in cyborg_floor
	if(new_cyborg_floor && !isnull(cyborg_floor[new_cyborg_floor]))
		stacktype = cyborg_floor[new_cyborg_floor]
		build_type = cyborg_floor[new_cyborg_floor]
		to_chat(usr, SPAN_NOTICE("You set \the [src] floor" /*to '[decal]'.*/))

// Cafe
/obj/item/stack/tile/floor/cafe
	name = "cafe floor tile"
	singular_name = "cafe floor tile"
	desc = "A chekered pattern, an ancient style for a familiar feeling."
	icon_state = "tile_cafe"
	throwforce = WEAPON_FORCE_NORMAL
	matter = list(MATERIAL_PLASTIC = 1)

// Techmaint
/obj/item/stack/tile/floor/techmaint
	name = "maint floor tile"
	singular_name = "maint floor tile"
	icon_state = "tile_techmaint"
	matter = list(MATERIAL_STEEL = 1)

/obj/item/stack/tile/floor/techmaint/perforated
	name = "perforated maint floor tile"
	singular_name = "perforated maint floor tile"
	icon_state = "tile_techmaint_perforated"

/obj/item/stack/tile/floor/techmaint/panels
	name = "panel maint floor tile"
	singular_name = "panel maint floor tile"
	icon_state = "tile_techmaint_panels"

/obj/item/stack/tile/floor/techmaint/cargo
	name = "cargo maint floor tile"
	singular_name = "cargo maint floor tile"
	icon_state = "tile_techmaint_cargo"

/*
 * Steel
 */

// Cyborg tile stack can copy steel tiles by clicking on them (for easy reconstruction)
/obj/item/stack/tile/floor/steel/AltClick(var/mob/living/user)
	var/obj/item/I = user.get_active_hand()
	if(istype(I, /obj/item/stack/tile/floor/cyborg))
		var/obj/item/stack/tile/floor/cyborg/C = I
		C.stacktype = src.type
		C.build_type = src.type
		to_chat(usr, SPAN_NOTICE("You will now build [C.name]"))
	else
		..()

/obj/item/stack/tile/floor/steel
	name = "steel floor tile"
	singular_name = "steel floor tile"
	icon_state = "tile_steel"
	matter = list(MATERIAL_STEEL = 1)

/obj/item/stack/tile/floor/steel/panels
	name = "steel panel tile"
	singular_name = "steel panel tile"
	icon_state = "tile_steel_panels"

/obj/item/stack/tile/floor/steel/techfloor
	name = "steel techfloor tile"
	singular_name = "steel techfloor tile"
	icon_state = "tile_steel_techfloor"

/obj/item/stack/tile/floor/steel/techfloor_grid
	name = "steel techfloor tile with vents"
	singular_name = "steel techfloor tile with vents"
	icon_state = "tile_steel_techfloor_grid"

/obj/item/stack/tile/floor/steel/brown_perforated
	name = "steel brown perforated tile"
	singular_name = "steel brown perforated tile"
	icon_state = "tile_steel_brownperforated"

/obj/item/stack/tile/floor/steel/gray_perforated
	name = "steel gray perforated tile"
	singular_name = "steel gray perforated tile"
	icon_state = "tile_steel_grayperforated"

/obj/item/stack/tile/floor/steel/cargo
	name = "steel cargo tile"
	singular_name = "steel cargo tile"
	icon_state = "tile_steel_cargo"

/obj/item/stack/tile/floor/steel/brown_platform
	name = "steel brown platform tile"
	singular_name = "steel brown platform tile"
	icon_state = "tile_steel_brownplatform"

/obj/item/stack/tile/floor/steel/gray_platform
	name = "steel gray platform tile"
	singular_name = "steel gray platform tile"
	icon_state = "tile_steel_grayplatform"

/obj/item/stack/tile/floor/steel/danger
	name = "steel danger tile"
	singular_name = "steel danger tile"
	icon_state = "tile_steel_danger"

/obj/item/stack/tile/floor/steel/golden
	name = "steel golden tile"
	singular_name = "steel golden tile"
	icon_state = "tile_steel_golden"

/obj/item/stack/tile/floor/steel/bluecorner
	name = "steel blue corner tile"
	singular_name = "steel blue corner tile"
	icon_state = "tile_steel_bluecorner"

/obj/item/stack/tile/floor/steel/orangecorner
	name = "steel orange corner tile"
	singular_name = "steel orange corner tilee"
	icon_state = "tile_steel_orangecorner"

/obj/item/stack/tile/floor/steel/cyancorner
	name = "steel cyan corner tile"
	singular_name = "steel cyan corner tile"
	icon_state = "tile_steel_cyancorner"

/obj/item/stack/tile/floor/steel/violetcorener
	name = "steel violet corener tile"
	singular_name = "steel violet corener tile"
	icon_state = "tile_steel_violetcorener"

/obj/item/stack/tile/floor/steel/monofloor
	name = "steel monofloor tile"
	singular_name = "steel monofloor tile"
	icon_state = "tile_steel_monofloor"

/obj/item/stack/tile/floor/steel/bar_flat
	name = "steel bar flat tile"
	singular_name = "steel bar flat tile"
	icon_state = "tile_steel_bar_flat"

/obj/item/stack/tile/floor/steel/bar_dance
	name = "steel bar dance tile"
	singular_name = "steel bar dance tile"
	icon_state = "tile_steel_bar_dance"

/obj/item/stack/tile/floor/steel/bar_light
	name = "steel bar light tile"
	singular_name = "steel bar light tile"
	icon_state = "tile_steel_bar_light"

/*
 * Plastic
 */
/obj/item/stack/tile/floor/white
	name = "white floor tile"
	singular_name = "white floor tile"
	desc = "Appears to be made out of a lighter material."
	icon_state = "tile_white"
	throwforce = WEAPON_FORCE_NORMAL
	matter = list(MATERIAL_PLASTIC = 1)

/obj/item/stack/tile/floor/white/panels
	name = "white panel tile"
	singular_name = "white panel tile"
	icon_state = "tile_white_panels"

/obj/item/stack/tile/floor/white/techfloor
	name = "white techfloor tile"
	singular_name = "white techfloor tile"
	icon_state = "tile-white-techfloor"

/obj/item/stack/tile/floor/white/techfloor_grid
	name = "white techfloor tile with vents"
	singular_name = "white techfloor tile with vents"
	icon_state = "tile_white_techfloor_grid"

/obj/item/stack/tile/floor/white/brown_perforated
	name = "white brown perforated tile"
	singular_name = "white brown perforated tile"
	icon_state = "tile_white_brownperforated"

/obj/item/stack/tile/floor/white/gray_perforated
	name = "white gray perforated tile"
	singular_name = "white gray perforated tile"
	icon_state = "tile_white_grayperforated"

/obj/item/stack/tile/floor/white/cargo
	name = "white cargo tile"
	singular_name = "white cargo tile"
	icon_state = "tile_white_cargo"

/obj/item/stack/tile/floor/white/brown_platform
	name = "white brown platform tile"
	singular_name = "white brown platform tile"
	icon_state = "tile_white_brownplatform"

/obj/item/stack/tile/floor/white/gray_platform
	name = "white gray platform tile"
	singular_name = "white gray platform tile"
	icon_state = "tile_white_grayplatform"

/obj/item/stack/tile/floor/white/danger
	name = "white danger tile"
	singular_name = "white danger tile"
	icon_state = "tile_white_danger"

/obj/item/stack/tile/floor/white/golden
	name = "white golden tile"
	singular_name = "white golden tile"
	icon_state = "tile_white_golden"

/obj/item/stack/tile/floor/white/bluecorner
	name = "white blue corner tile"
	singular_name = "white blue corner tile"
	icon_state = "tile_white_bluecorner"

/obj/item/stack/tile/floor/white/orangecorner
	name = "white orange corner tile"
	singular_name = "white orange corner tilee"
	icon_state = "tile_white_orangecorner"

/obj/item/stack/tile/floor/white/cyancorner
	name = "white cyan corner tile"
	singular_name = "white cyan corner tile"
	icon_state = "tile_white_cyancorner"

/obj/item/stack/tile/floor/white/violetcorener
	name = "white violet corener tile"
	singular_name = "white violet corener tile"
	icon_state = "tile_white_violetcorener"

/obj/item/stack/tile/floor/white/monofloor
	name = "white monofloor tile"
	singular_name = "white monofloor tile"
	icon_state = "tile_white_monofloor"

/*
 * Steel
 */
/obj/item/stack/tile/floor/dark
	name = "dark floor tile"
	singular_name = "dark floor tile"
	icon_state = "tile_dark"
	matter = list(MATERIAL_STEEL = 1)

/obj/item/stack/tile/floor/dark/panels
	name = "dark panel tile"
	singular_name = "dark panel tile"
	icon_state = "tile_dark_panels"

/obj/item/stack/tile/floor/dark/techfloor
	name = "dark techfloor tile"
	singular_name = "dark techfloor tile"
	icon_state = "tile_dark_techfloor"

/obj/item/stack/tile/floor/dark/techfloor_grid
	name = "dark techfloor tile with vents"
	singular_name = "dark techfloor tile with vents"
	icon_state = "tile_dark_techfloor_grid"

/obj/item/stack/tile/floor/dark/brown_perforated
	name = "dark brown perforated tile"
	singular_name = "dark brown perforated tile"
	icon_state = "tile_dark_brownperforated"

/obj/item/stack/tile/floor/dark/gray_perforated
	name = "dark gray perforated tile"
	singular_name = "dark gray perforated tile"
	icon_state = "tile_dark_grayperforated"

/obj/item/stack/tile/floor/dark/cargo
	name = "dark cargo tile"
	singular_name = "dark cargo tile"
	icon_state = "tile_dark_cargo"

/obj/item/stack/tile/floor/dark/brown_platform
	name = "dark brown platform tile"
	singular_name = "dark brown platform tile"
	icon_state = "tile_dark_brownplatform"

/obj/item/stack/tile/floor/dark/gray_platform
	name = "dark gray platform tile"
	singular_name = "dark gray platform tile"
	icon_state = "tile_dark_grayplatform"

/obj/item/stack/tile/floor/dark/danger
	name = "dark danger tile"
	singular_name = "dark danger tile"
	icon_state = "tile_dark_danger"

/obj/item/stack/tile/floor/dark/golden
	name = "dark golden tile"
	singular_name = "dark golden tile"
	icon_state = "tile_dark_golden"

/obj/item/stack/tile/floor/dark/bluecorner
	name = "dark blue corner tile"
	singular_name = "dark blue corner tile"
	icon_state = "tile_dark_bluecorner"

/obj/item/stack/tile/floor/dark/orangecorner
	name = "dark orange corner tile"
	singular_name = "dark orange corner tilee"
	icon_state = "tile_dark_orangecorner"

/obj/item/stack/tile/floor/dark/cyancorner
	name = "dark cyan corner tile"
	singular_name = "dark cyan corner tile"
	icon_state = "tile_dark_cyancorner"

/obj/item/stack/tile/floor/dark/violetcorener
	name = "dark violet corener tile"
	singular_name = "dark violet corener tile"
	icon_state = "tile_dark_violetcorener"

/obj/item/stack/tile/floor/dark/monofloor
	name = "dark monofloor tile"
	singular_name = "dark monofloor tile"
	icon_state = "tile_dark_monofloor"


/obj/item/stack/tile/derelict/white_red_edges
	name = "greyson positronic floor tile"
	singular_name = "greyson positronic floor tile"
	icon_state = "tile_derelict1"

/obj/item/stack/tile/derelict/white_small_edges
	name = "greyson positronic floor tile"
	singular_name = "greyson positronic floor tile"
	icon_state = "tile_derelict2"

/obj/item/stack/tile/derelict/red_white_edges
	name = "greyson positronic floor tile"
	singular_name = "greyson positronic floor tile"
	icon_state = "tile_derelict3"

/obj/item/stack/tile/derelict/white_big_edges
	name = "greyson positronic floor tile"
	singular_name = "greyson positronic floor tile"
	icon_state = "tile_derelict4"

//Industeral stuff
/obj/item/stack/tile/concrete_small
	name = "concrete slabs"
	singular_name = "concrete slab"
	icon_state = "tile_concrete_small"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/concrete_bricks
	name = "concrete bricks"
	singular_name = "concrete brick"
	icon_state = "tile_concrete_brick"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/bricks
	name = "bricks"
	singular_name = "brick"
	icon_state = "tile_brick"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/ornate
	name = "painted slates"
	singular_name = "painted slate"
	icon_state = "tile_ornate"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/sierra
	name = "painted slates"
	singular_name = "painted slate"
	icon_state = "tile_sierra"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/ceramic
	name = "ceramic slates"
	singular_name = "ceramic slate"
	icon_state = "tile_ceramic"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/grey_slates_long
	name = "grey long slates"
	singular_name = "grey long slate"
	icon_state = "tile_grey_long"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/blue_slates_long
	name = "blue long slates"
	singular_name = "blue long slate"
	icon_state = "tile_blue_long"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/grey_slates
	name = "grey slates"
	singular_name = "grey slate"
	icon_state = "tile_grey"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/blue_slates
	name = "blue slates"
	singular_name = "blue slate"
	icon_state = "tile_blue"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/navy_slates
	name = "navy slates"
	singular_name = "navy slate"
	icon_state = "tile_navy"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/fancy_slates
	name = "disk slates"
	singular_name = "disk slate"
	icon_state = "tile_slate"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/navy_large_slates
	name = "large navy slates"
	singular_name = "large navy slate"
	icon_state = "tile_navy_large"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/black_large_slates
	name = "large black slates"
	singular_name = "large black slate"
	icon_state = "tile_black_large"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/green_large_slates
	name = "large green slates"
	singular_name = "large green slate"
	icon_state = "tile_green_large"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/*
/obj/item/stack/tile/brown_large_slates
	name = "large brown slates"
	singular_name = "large brown slate"
	icon_state = "tile_slate"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."
*/ // Completely unused, don't even have turfs assigned to them

/obj/item/stack/tile/white_large_slates
	name = "large white slates"
	singular_name = "large white slate"
	icon_state = "tile_white_large"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/checker_large
	name = "large white and black slates"
	singular_name = "large and black slate"
	icon_state = "tile_checker"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

/obj/item/stack/tile/cafe_large
	name = "large white and red slates"
	singular_name = "large and red slate"
	icon_state = "tile_cafe_maint"
	desc = "An old and worn flooring tile. It could probably be fixed with some concrete."

//fixed versons

/obj/item/stack/tile/concrete_small_fixed
	name = "concrete slabs"
	singular_name = "concrete slab"
	icon_state = "tile_concrete_small"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/concrete_bricks_fixed
	name = "concrete bricks"
	singular_name = "concrete brick"
	icon_state = "tile_concrete_brick"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/bricks_fixed
	name = "bricks"
	singular_name = "brick"
	icon_state = "tile_brick"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/ornate_fixed
	name = "painted slates"
	singular_name = "painted slate"
	icon_state = "tile_ornate"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/sierra_fixed
	name = "painted slates"
	singular_name = "painted slate"
	icon_state = "tile_sierra"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/ceramic_fixed
	name = "ceramic slates"
	singular_name = "ceramic slate"
	icon_state = "tile_ceramic"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/grey_slates_long_fixed
	name = "grey long slates"
	singular_name = "grey long slate"
	icon_state = "tile_grey_long"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/blue_slates_long_fixed
	name = "blue long slates"
	singular_name = "blue long slate"
	icon_state = "tile_blue_long"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/grey_slates_fixed
	name = "grey slates"
	singular_name = "grey slate"
	icon_state = "tile_grey"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/blue_slates_fixed
	name = "blue slates"
	singular_name = "blue slate"
	icon_state = "tile_blue"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/navy_slates_fixed
	name = "navy slates"
	singular_name = "navy slate"
	icon_state = "tile_navy"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/fancy_slates_fixed
	name = "disk slates"
	singular_name = "disk slate"
	icon_state = "tile_slate"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/navy_large_slates_fixed
	name = "large navy slates"
	singular_name = "large navy slate"
	icon_state = "tile_navy_large"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/black_large_slates_fixed
	name = "large black slates"
	singular_name = "large black slate"
	icon_state = "tile_black_large"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/green_large_slates_fixed
	name = "large green slates"
	singular_name = "large green slate"
	icon_state = "tile_green_large"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/*
/obj/item/stack/tile/brown_large_slates_fixed
	name = "large brown slates"
	singular_name = "large brown slate"
	icon_state = "tile_slate"
*/ // Completely unused

/obj/item/stack/tile/white_large_slates_fixed
	name = "large white slates"
	singular_name = "large white slate"
	icon_state = "tile_white_large"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/checker_large_fixed
	name = "large white and black slates"
	singular_name = "large and black slate"
	icon_state = "tile_checker"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."

/obj/item/stack/tile/cafe_large_fixed
	name = "large white and red slates"
	singular_name = "large and red slate"
	icon_state = "tile_cafe_maint"
	desc = "A worn, but well maintained flooring tile. For that antique industial look."
