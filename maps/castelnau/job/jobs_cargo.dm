/datum/job/qm
	title = "Quartermaster"
	department = "Supply"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Officer and the Second Officer"
	economic_power = 8
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/supply/quartermaster
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_ADEPT,
	                    SKILL_HAULING     = SKILL_BASIC)

	skill_points = 14

	access = list(		access_maint_tunnels, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
						access_cargo_bot, access_qm, access_mailsorting, access_expedition_shuttle, access_guppy, access_hangar,
						access_mining, access_mining_office, access_mining_station, access_commissary)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	required_education = EDUCATION_TIER_BASIC

/datum/job/mining
	title = "Shaft Miner"
	department = "Supply"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Quartermaster"
	selection_color = "#515151"
	economic_power = 7
	ideal_character_age = 25
	alt_titles = list(
		"Drill Technician",
		"Salvager")
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(   SKILL_MECH    = SKILL_BASIC,
	                    SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_EVA     = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/supply/prospector
	allowed_branches = list(/datum/mil_branch/employee, /datum/mil_branch/contractor)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor)

	access = list(access_research, access_mining, access_mining_office, access_mining_station,
						access_expedition_shuttle, access_guppy, access_hangar, access_guppy_helm)

	minimal_access = list()
	required_education = EDUCATION_TIER_NONE
	maximum_education = EDUCATION_TIER_TRADE