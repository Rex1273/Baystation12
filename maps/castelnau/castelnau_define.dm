/datum/map/sierra
	name = "Castelnau"
	full_name = "MOTV Castelnau"
	path = "castelnau"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	load_legacy_saves = TRUE

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels = list(1,2,3,6)
	admin_levels = list(4,5)
	empty_levels = list(6)
	accessible_z_levels = list("1"=1,"2"=1,"3"=1,"6"=30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("freemail.castelnau.net",
							 "freemail.net"
							 )

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "MOTV Castelnau"
	station_short = "Castelnau"
	dock_name     = "TBD"
	boss_name     = "Castelnau Sensors"
	boss_short    = "Castelnau Sensors"
	company_name  = "Castelnau Tow. Ltd."
	company_short = "CT"

	map_admin_faxes = list("Interstellar Emergency Frequency")

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/nanotrasen
	use_overmap = 1
	num_exoplanets = 0
	planet_size = list(129,129)

	away_site_budget = 2
	id_hud_icons = 'maps/sierra/icons/assignment_hud.dmi'

/datum/map/sierra/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/sierra/map_info(victim)
	to_chat(victim, "<h2>���������&#255; � �����</h2>")
	to_chat(victim, "�� ���������� �� ����� <b>[station_name]</b>, ��������������� ������������ ������� ������ ������. ����� ��������� ����� ����� � ����������� ������� ������� ��� �������� �������� � ���������� � ����������� �������� ������ �������� � ����� �����������&#255; ���������� ��������� ������� � ����� ���������.")
	to_chat(victim, "������ ����� �������������� ��� ������������, ���&#255;���� ��������� �����, ��� � ��������� ������� ������� ��������.")
	to_chat(victim, "����������&#255; ���������&#255;: ���� � ��� �� ������ ������ �� ������������ � ��������������, �� ��� ����� �������� ������ ������ � ����� ��������� �� 1456.")

/datum/map/sierra/send_welcome()
	var/welcome_text = "<center><img src = ntlogo.png /><br /><font size = 3><b>MSM Prometeus</b> ��������&#255; ��������:</font><hr />"
	welcome_text += "����� ������������ [stationdate2text()] � [stationtime2text()]</center><br /><br />"
	welcome_text += "������&#255; �������: <b>[system_name()]</b><br />"
	welcome_text += "��������&#255; ������� ��&#255; ������: <b>[generate_system_name()]</b><br />"
	welcome_text += "���� �� ��������� ��������� �������: <b>[rand(1,5)]</b><br />"
	welcome_text += "���� � ���������� ������ � ����: <b>[rand(30,90)]</b><br />"
	welcome_text += "���������� �����������&#255; �������� ��������� ������������� ������� ��&#255; �����������&#255;:<br />"
	var/list/space_things = list()
	var/obj/effect/overmap/sierra = map_sectors["1"]
	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/O = map_sectors[zlevel]
		if(O.name == sierra.name)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/O in space_things)
		var/location_desc = " �� ������� ��������."
		if(O.loc != sierra.loc)
			var/bearing = round(90 - Atan2(O.x - sierra.x, O.y - sierra.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", �� ������� [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>���������� ������� �������&#255;:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>�������� �������&#255; �� ����������.<br />"
	welcome_text += "<hr>"

	post_comm_message("MSM Prometeus Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Update available at all communication consoles.")
