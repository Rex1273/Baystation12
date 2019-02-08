/datum/job/assistant
	title = "Seaman"
	total_positions = 4
	spawn_positions = 4
	department = "Civilian"
	department_flag = CIV
	supervisors = "the Captain, the First Officer and the Second Officer"
	selection_color = "#515151"
	economic_power = 6
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/castelnau/passenger/seaman
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	required_education = EDUCATION_TIER_NONE

/datum/job/stowaway
	title = "Stowaway"
	department = "Civilian"
	department_flag = CIV

	total_positions = 1
	spawn_positions = 1
	supervisors = "yourself"
	selection_color = "#515151"
	ideal_character_age = 30
	minimal_player_age = 7
	create_record = 0
	account_allowed = 0
	outfit_type = /decl/hierarchy/outfit/job/castelnau/stowaway
	allowed_branches = list(/datum/mil_branch/other)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	latejoin_at_spawnpoints = 1
	announced = FALSE

	access = list(access_maint_tunnels, access_emergency_storage)
	minimal_access = list()
