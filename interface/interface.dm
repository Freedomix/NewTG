//Please use mob or src (not usr) in these procs. This way they can be called in the same fashion as procs.
/client/verb/wiki()
	set name = "Wiki"
	set desc = "����� �� wiki �����."
	set hidden = 1
	if(config.wikiurl)
		if(alert("��� ������� �������� Wiki � ����� ��������.�� �������?",,"��","���")=="���")
			return
		src << link(config.wikiurl)
	else
		src << "<span class='danger'>������ �� ���� �� ������� � ������������ �������.</span>"
	return

/client/verb/forum()
	set name = "�����"
	set desc = "�������� �����."
	set hidden = 1
	if(config.forumurl)
		if(alert("��� ������� �������� ������ � ����� ��������.�� �������?",,"��","���")=="���")
			return
		src << link(config.forumurl)
	else
		src << "<span class='danger'>������ �� ����� �� ������� � ������������ �������.</span>"
	return

/client/verb/rules()
	set name = "�������"
	set desc = "�������� ������� �������."
	set hidden = 1
	if(config.rulesurl)
		if(alert("��� ������� �������� � ��������� � ����� ��������.�� �������?",,"��","���")=="���")
			return
		src << link(config.rulesurl)
	else
		src << "<span class='danger'>������ �� ������� �� ������� � ������������ �������.</span>"
	return

/client/verb/github()
	set name = "Github"
	set desc = "Visit Github"
	set hidden = 1
	if(config.githuburl)
		if(alert("This will open the Github repository in your browser. Are you sure?",,"Yes","No")=="No")
			return
		src << link(config.githuburl)
	else
		src << "<span class='danger'>The Github URL is not set in the server configuration.</span>"
	return

/client/verb/reportissue()
	set name = "������"
	set desc = "�������� � ��������"
	set hidden = 1
	if(config.githuburl)
		if(alert("This will open the Github issue reporter in your browser. Are you sure?",,"Yes","No")=="No")
			return
		src << link("[config.githuburl]/issues/new")
	else
		src << "<span class='danger'>The Github URL is not set in the server configuration.</span>"
	return

/client/verb/hotkeys_help()
	set name = "������� �������"
	set category = "OOC"

	var/adminhotkeys = {"<font color='purple'>
��������� �������:
\tF5 = Aghost (admin-ghost)
\tF6 = player-panel-new
\tF7 = admin-pm
\tF8 = Invisimin
</font>"}

	mob.hotkey_help()

	if(holder)
		src << adminhotkeys


/mob/proc/hotkey_help()
	var/hotkey_mode = {"<font color='purple'>
����� � ���&#255;���� ���������: (������ ���� ��������)
\tTAB = �������� ����� ���&#255;��� ������
\ta = �����
\ts = ����
\td = ������&#255;
\tw = �����
\tq = ��������
\te = �����������
\tr = �������
\tm = me
\tt = say
\to = OOC
\tx = �������-����
\tz = ������������-������-�-�����-(��� y)
\tf = �������-��������&#255;-�����
\tg = �������-��������&#255;-������
\t1 = ��������&#255;-������
\t2 = ��������&#255;-����������
\t3 = ��������&#255;-��������
\t4 = ��������&#255;-�������
</font>"}

	var/other = {"<font color='purple'>
����� �����: (���&#255;��� ������� �� ������ ���� ��������)
\tCtrl+a = �����
\tCtrl+s = ����
\tCtrl+d = ������
\tCtrl+w = �����
\tCtrl+q = ��������
\tCtrl+e = �����������
\tCtrl+r = �������
\tCtrl+x = �������-����
\tCtrl+z = ������������-������-�-����� (��� Ctrl+y)
\tCtrl+f = �������-��������&#255;-�����
\tCtrl+g = �������-��������&#255;-������
\tCtrl+1 = ��������&#255;-������
\tCtrl+2 = ��������&#255;-����������
\tCtrl+3 = ��������&#255;-��������
\tCtrl+4 = ��������&#255;-�������
\tDEL = ������
\tINS = �������-��������&#255;-������
\tHOME = ��������
\tPGUP = ������� ����
\tPGDN = ������������ ������ � �����
\tEND = �������
</font>"}

	src << hotkey_mode
	src << other

/mob/living/silicon/robot/hotkey_help()
	var/hotkey_mode = {"<font color='purple'>
Hotkey-Mode: (hotkey-mode must be on)
\tTAB = toggle hotkey-mode
\ta = �����
\ts = ����
\td = ������
\tw = �����
\tq = ��&#255;��-��������-������
\tt = �������
\tx = �������-������ (����������)
\tz = ������������ ������ � ����� (��� y)
\tf = �������-��������&#255;-�����
\tg = �������-��������&#255;-������
\t1 = ������������-������ 1
\t2 = ������������-������ 2
\t3 = ������������-������ 3
\t4 = �������� ��������&#255;
</font>"}

	var/other = {"<font color='purple'>
����� �����: (���&#255;��� ������� �� ������ ���� ��������)
\tCtrl+a = �����
\tCtrl+s = ����
\tCtrl+d = ������
\tCtrl+w = �����
\tCtrl+q = ��&#255;�� �������� ������
\tCtrl+x = ������� ������ (����������)
\tCtrl+z = ������������ ������ � ����� (��� Ctrl+y)
\tCtrl+f = �������-��������&#255;-�����
\tCtrl+g = �������-��������&#255;-������
\tCtrl+1 = ������������ ������1
\tCtrl+2 = ������������ ������ 2
\tCtrl+3 = ������������ ������ 3
\tCtrl+4 = �������� ��������&#255;
\tDEL = nfobnm
\tINS = �������-��������&#255;
\tPGUP = ������� ������ (����������)
\tPGDN = ������������ ������ � �����
</font>"}

	src << hotkey_mode
	src << other