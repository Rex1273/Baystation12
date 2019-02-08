/datum/job/captain
	title = "Captain"
	department = "Command"
	supervisors = "the God"
	department_flag = COM
	head_position = 1
	minimal_player_age = 21
	economic_power = 20
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/command/captain
	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)


	skill_points = 25

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)
	required_education = EDUCATION_TIER_BASIC

/datum/job/hop
	title = "First Officer"
	supervisors = "the Captain"
	department = "Command"
	department_flag = COM
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	minimal_player_age = 21
	economic_power = 12
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/command/hop
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	skill_points = 20

	access = list(		access_security, access_brig, access_armory, access_forensics_lockers, access_heads,
			            access_medical, access_morgue, access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_change_ids, access_ai_upload, access_teleporter, access_eva, access_bridge,
			            access_all_personal_lockers, access_chapel_office, access_tech_storage, access_atmospherics, access_bar, access_janitor, access_crematorium, access_robotics,
			            access_kitchen, access_cargo, access_construction, access_chemistry, access_cargo_bot, access_hydroponics, access_library, access_virology,
			            access_cmo, access_qm, access_network, access_surgery, access_mailsorting, access_heads_vault, access_ce,
			            access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_sec_doors, access_psychiatrist,
			            access_medical_equip, access_gun, access_expedition_shuttle, access_guppy,
			            access_seneng, access_senmed, access_hangar, access_guppy_helm, access_expedition_shuttle_helm, access_explorer, access_el,
						access_tox, access_tox_storage, access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology, access_xenoarch,
						access_petrov, access_petrov_helm)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)
	required_education = EDUCATION_TIER_BACHELOR

/datum/job/adjutant
	title = "Second Officer"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain and the First Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 18
	economic_power = 7
	ideal_character_age = 24
	alt_titles = list(
		"",
		"Soldier")
	outfit_type = /decl/hierarchy/outfit/job/castelnau/crew/command/adjutant
	allowed_branches = list(/datum/mil_branch/ship_personnel)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	skill_points = 20


	access = list(	access_security, access_medical, access_engine, access_maint_tunnels, access_emergency_storage,
					access_heads, access_bridge, access_janitor, access_kitchen, access_cargo, access_RC_announce, access_keycard_auth,
					access_guppy, access_guppy_helm, access_external_airlocks, access_expedition_shuttle,
					access_eva, access_hangar, access_explorer, access_expedition_shuttle_helm)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)
	required_education = EDUCATION_TIER_BASIC
