/*
	File: fn_welcomeNotification.sqf
	by BB-MaTriX
	Description:
	Called upon first spawn selection and welcomes our player.
*/
private["_display","_rules"];
createDialog "life_server_rules";
disableSerialization;
_display = findDisplay 2300;
_rules = _display displayCtrl 2302;
_news = _display displayCtrl 2303;

_rules ctrlSetStructuredText parseText format["<img size='2.5' image='icons\logo.jpg'/><br/><br/><t size='1.1'>Willkommen %1</t><br/><br/><t size='0.8px'>Wenn du auf diesem Server spielen möchtest, musst du die Server-Regeln akzeptieren. Diese kannst du unter www.clan-bb.de nachlesen.</t><br/><br/><t size='0.8px'>Auf unserem Teamspeak3-Server (ts.clan.bb.de) erreichst du zu fast jeder Zeit Personal, dass dir bei Problemen weiterhelfen wird.</t><br/><br/>br/><br/>br/><br/><t size='1.2'>Patchnotes:</t>",name player];




_news ctrlSetStructuredText parseText format["<br/><t size='1.1' color='#0099FF'>  Patchnotes%1</t><br/><br/><t size='0.8px'>   - Briefing(Taste M) überarbeitet. by -> (BIG thx to <t color='#b40202'>Familia Storm</t>) </t><br/><br/><br/><t size='0.7px'>   Best regards</t>",":"];


	