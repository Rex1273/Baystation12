/datum/job/janitor
	title = "Janitor"
	department = "Service"
	department_flag = SRV

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Officer and the Second Officer"
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/service/janitor
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civil)

	access = list(access_maint_tunnels, access_emergency_storage, access_janitor)

	minimal_access = list()
	required_education = EDUCATION_TIER_NONE

/datum/job/chef
	title = "Chef"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, the First Officer and the Second Officer"
	alt_titles = list(
		"Cook",
		"Culinary Specialist"
		)
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/service/cook
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civil)
	min_skill = list(	SKILL_COOKING   = SKILL_ADEPT,
						SKILL_BOTANY    = SKILL_BASIC,
						SKILL_CHEMISTRY = SKILL_BASIC)

	access = list(access_maint_tunnels, access_hydroponics, access_kitchen, access_commissary)

	minimal_access = list()
	required_education = EDUCATION_TIER_NONE

/datum/job/bartender
	department = "Service"
	department_flag = SRV
	supervisors = "the Captain, the First Officer and the Second Officer"
	ideal_character_age = 30
	selection_color = "#515151"
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/service/bartender
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civil)

	access = list(access_hydroponics, access_bar, access_commissary)

	minimal_access = list()
	min_skill = list(	SKILL_COOKING   = SKILL_BASIC,
						SKILL_BOTANY    = SKILL_BASIC,
						SKILL_CHEMISTRY = SKILL_BASIC)
	required_education = EDUCATION_TIER_NONE
