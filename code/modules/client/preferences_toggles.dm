//toggles
/client/verb/toggle_ghost_ears()
	set name = "��������/��� ��������� ������� ��������"
	set category = "���������"
	set desc = ".���������� ��������� ������� � ���� ��������� ��� ������ ���� ��&#255; ��������"
	prefs.chat_toggles ^= CHAT_GHOSTEARS
	src << "������ �� �������� �� [(prefs.chat_toggles & CHAT_GHOSTEARS) ? "������ ��� ��������� � ����" : "������ ������ ��������� � ���� ���������"]."
	prefs.save_preferences()
	feedback_add_details("admin_verb","TGE") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/toggle_ghost_sight()
	set name = "����������/��� ������ ���� ������� ��������"
	set category = "���������"
	set desc = ".���������� ������ ���� ������� ��� ������ � ���� ��������� ��&#255; ��������"
	prefs.chat_toggles ^= CHAT_GHOSTSIGHT
	src << "������ �� �������� �� [(prefs.chat_toggles & CHAT_GHOSTSIGHT) ? "������ ��� ������ � ����" : "������ ������ ������ � ���� ���������"]."
	prefs.save_preferences()
	feedback_add_details("admin_verb","TGS") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/toggle_ghost_whispers()
	set name = "��������/��� ����� ��������"
	set category = "���������"
	set desc = ".������������ ����� ���, ���������� ���� ����� � ���� ��� ������ � ���� ��������� ��&#255; ��������"
	prefs.chat_toggles ^= CHAT_GHOSTWHISPER
	src << "������ �� �������� �� [(prefs.chat_toggles & CHAT_GHOSTWHISPER) ? "������ ���� ����� " : "������ ����� ������ � ���� ���������"]."
	prefs.save_preferences()
	feedback_add_details("admin_verb","TGW") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/toggle_ghost_radio()
	set name = "��������/��� ����� ��������"
	set category = "���������"
	set desc = ".�������� ��� ��������� ���������� ����� ������ ���������"
	prefs.chat_toggles ^= CHAT_GHOSTRADIO
	src << "������ �� �������� �� [(prefs.chat_toggles & CHAT_GHOSTRADIO) ? "������ �����" : "�� ������ �����"]."
	prefs.save_preferences()
	feedback_add_details("admin_verb","TGR") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc! //social experiment, increase the generation whenever you copypaste this shamelessly GENERATION 1

/client/verb/toggle_ghost_pda()
	set name = "��������/��� ��������� ��� ��������"
	set category = "���������"
	set desc = ".������������ ����� ���, ������ ��� ��� ��������&#255; ��� ��������"
	prefs.chat_toggles ^= CHAT_GHOSTPDA
	src << "������ �� �������� �� [(prefs.chat_toggles & CHAT_GHOSTPDA) ? "������ ��� ��������&#255; ��� � ����" : "������ ��������&#255; ��� ������ � ���� ���������"]."
	prefs.save_preferences()
	feedback_add_details("admin_verb","TGP") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/proc/toggle_hear_radio()
	set name = "��������/��� �����"
	set category = "���������"
	set desc = ".�������/��� ����� �� ��������� �������, ��������"
	if(!holder) return
	prefs.chat_toggles ^= CHAT_RADIO
	prefs.save_preferences()
	usr << "������ ��[(prefs.chat_toggles & CHAT_RADIO) ? "" : " ������ ��"] ������� ���� �� ��������."
	feedback_add_details("admin_verb","THR") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/proc/toggleadminhelpsound()
	set name = "�������/��� ���� ��������� ���������"
	set category = "���������"
	set desc = ".����������� ����� ���, ����� ������� ��� ��� ���� ��������� ���������"
	if(!holder)	return
	prefs.toggles ^= SOUND_ADMINHELP
	prefs.save_preferences()
	usr << "������ ��[(prefs.toggles & SOUND_ADMINHELP) ? "" : " ������ ��"] ������� ���� ��� ��������� ��������� �� ��������������."
	feedback_add_details("admin_verb","AHS") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/proc/deadchat()
	set name = "��������/��� ��� �������"
	set category = "���������"
	set desc =".������������ ��������� ���� �������"
	prefs.chat_toggles ^= CHAT_DEAD
	prefs.save_preferences()
	src << "������ ��[(prefs.chat_toggles & CHAT_DEAD) ? "" : " ������ ��"] ������ ��� �������."
	feedback_add_details("admin_verb","TDV") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/proc/toggleprayers()
	set name = "��������/��� ���"
	set category = "���������"
	set desc = "������������ ��������� ���� �������"
	prefs.chat_toggles ^= CHAT_PRAYER
	prefs.save_preferences()
	src << "������ ��[(prefs.chat_toggles & CHAT_PRAYER) ? "" : " ������ ��"] ������ ��� �������."
	feedback_add_details("admin_verb","TP") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/togglePRs()
	set name = "��������/��� �����������"
	set category = "���������"
	set desc = "���������� ����������&#255; ��� �� ��&#255;������."
	prefs.chat_toggles ^= CHAT_PULLR
	prefs.save_preferences()
	src << "������ ��[(prefs.chat_toggles & CHAT_PULLR) ? "" : " ������ ��"] ������ ����������&#255;."
	feedback_add_details("admin_verb","TPullR") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/togglemidroundantag()
	set name = "����������� ����������� ����"
	set category = "���������"
	set desc = "����������� ����������� ��������&#255; ���� � ���� ������."
	prefs.toggles ^= MIDROUND_ANTAG
	prefs.save_preferences()
	src << "������ ��[(prefs.toggles & MIDROUND_ANTAG) ? "" : " ������ ��"] ������ ����� ������������ � ���� ������."
	feedback_add_details("admin_verb","TMidroundA") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/toggletitlemusic()
	set name = "�������/��� ������ � �����"
	set category = "���������"
	set desc = "����������� ���������� ������ � �����"
	prefs.toggles ^= SOUND_LOBBY
	prefs.save_preferences()
	if(prefs.toggles & SOUND_LOBBY)
		src << "������ �� ������� ������ � �����."
		if(istype(mob, /mob/new_player))
			playtitlemusic()
	else
		src << "�� ������ �� ������� ������ � �����."
		if(istype(mob, /mob/new_player))
			src << sound(null, repeat = 0, wait = 0, volume = 85, channel = 1) // stop the jamsz
	feedback_add_details("admin_verb","TLobby") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/togglemidis()
	set name = "�������/��� ������ ��������������"
	set category = "���������"
	set desc = "������������ ���������� ������ ������������ ��������."
	prefs.toggles ^= SOUND_MIDI
	prefs.save_preferences()
	if(prefs.toggles & SOUND_MIDI)
		src << "������ �� ������� ������ ������������ ��������."
		if(admin_sound)
			src << admin_sound
	else
		src << "�� ������ �� ������� ������ ������������ ��������; ����� �������� ������ ����� ���� ���������."
		if(admin_sound && !(admin_sound.status & SOUND_PAUSED))
			admin_sound.status |= SOUND_PAUSED
			src << admin_sound
			admin_sound.status ^= SOUND_PAUSED
	feedback_add_details("admin_verb","TMidi") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/listen_ooc()
	set name = "��������/��� OOC"
	set category = "���������"
	set desc = "������������ ��������� ���������������."
	prefs.chat_toggles ^= CHAT_OOC
	prefs.save_preferences()
	src << "������ ��[(prefs.chat_toggles & CHAT_OOC) ? "" : " ������ ��"] ������ ��������&#255; � OOC ������."
	feedback_add_details("admin_verb","TOOC") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/Toggle_Soundscape() //All new ambience should be added here so it works with this verb until someone better at things comes up with a fix that isn't awful
	set name = "�������/��� ����� ���������"
	set category = "���������"
	set desc = "����������� ���������� ������ ���������."
	prefs.toggles ^= SOUND_AMBIENCE
	prefs.save_preferences()
	if(prefs.toggles & SOUND_AMBIENCE)
		src << "������ �� ������� ����� ���������."
	else
		src << "�� ������ �� ������� ������ ���������."
		src << sound(null, repeat = 0, wait = 0, volume = 0, channel = 1)
		src << sound(null, repeat = 0, wait = 0, volume = 0, channel = 2)
	feedback_add_details("admin_verb","TAmbi") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

// This needs a toggle because you people are awful and spammed terrible music
/client/verb/toggle_instruments()
	set name = "�������/��� ����������� �����������"
	set category = "���������"
	set desc = "����������� ���������� ����������� ������������, ����� ��� �������"
	prefs.toggles ^= SOUND_INSTRUMENTS
	prefs.save_preferences()
	if(prefs.toggles & SOUND_INSTRUMENTS)
		src << "������ �� ������� ���� ����� �� ����������� ������������."
	else
		src << "�� ������ �� ������� ���� ����� �� ����������� ������������."
	feedback_add_details("admin_verb","TInstru") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

//be special
/client/verb/toggle_be_special(role in be_special_flags)
	set name = "����������� ����������� ��������� ����"
	set category = "���������"
	set desc = "������������ ����������� ��������&#255; ����������� ����� ��� ������&#255;�, ���������� ��������."
	var/role_flag = be_special_flags[role]
	if(!role_flag)	return
	prefs.be_special ^= role_flag
	prefs.save_preferences()
	src << "������ �� [(prefs.be_special & role_flag) ? "������ " : "������ �� ������ "]���� ����������� ��� [role] ��� ������� (����� ��������)."
	feedback_add_details("admin_verb","TBeSpecial") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/verb/toggle_member_publicity()
	set name = "������������ BYOND ������������������"
	set category = "���������"
	set desc = "������������ ����, ����� �� ���� ������� ��� ��� ��������� BYOND (OOC ������/�����)."
	prefs.toggles ^= MEMBER_PUBLIC
	prefs.save_preferences()
	src << "��������� [(prefs.toggles & MEMBER_PUBLIC) ? "�����" : "�� �����"] ������ ��� ��� ��������� BYOND."

var/list/ghost_forms = list("ghost","ghostking","ghostian2","skeleghost","ghost_red","ghost_black", \
							"ghost_blue","ghost_yellow","ghost_green","ghost_pink", \
							"ghost_cyan","ghost_dblue","ghost_dred","ghost_dgreen", \
							"ghost_dcyan","ghost_grey","ghost_dyellow","ghost_dpink")
/client/verb/pick_form()
	set name = "������� ����� ��������"
	set category = "���������"
	set desc = "�������� �������������� ����� ��������."
	if(!is_content_unlocked())	return
	var/new_form = input(src, "Thanks for supporting BYOND - Choose your ghostly form:","Thanks for supporting BYOND",null) as null|anything in ghost_forms
	if(new_form)
		prefs.ghost_form = new_form
		prefs.save_preferences()
		if(istype(mob,/mob/dead/observer))
			mob.icon_state = new_form

/client/verb/toggle_intent_style()
	set name = "����������� ����� ������"
	set category = "���������"
	set desc = "������������ ����&#255; ������ ����� ��������������� �� ���� ��� ������&#255;"
	prefs.toggles ^= INTENT_STYLE
	src << "[(prefs.toggles & INTENT_STYLE) ? "Clicking directly on intents selects them." : "Clicking on intents rotates selection clockwise."]"
	prefs.save_preferences()
	feedback_add_details("admin_verb","ITENTS") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!