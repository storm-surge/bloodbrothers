//////////////////////////////////////////////////////////////////
// Created by: Losi
// Blood Brothers Elite  // bce.teamspeak.me
// pls ask for permission before using
// fn_welcome.sqf
//////////////////////////////////////////////////////////////////
closeDialog 0;
createDialog "welcome_dialog";
_stage=_this select 0;

disableSerialization;
_I=UInamespace getVariable "welcome_dialog";
_title=_I displayCtrl 1100;

ctrlSetText [1000,("Willkommen " + name player)];

switch (_stage) do {


case 1:{
_string="<t align='center'><t size='2'>Willkommen auf Blood Brothers Elite</t></t><br /><br />Schön das du hier her gefunden hast! Der Server läuft auf einer, von uns modifizierten, Version Altis Life 3.1.1. <br />Solltest du fragen oder Probleme haben, kannst du uns auf unserem Teamspeak Server erreichen<br />bce.teamspeak.me<br />Wir wünschen dir viel Spaß!";
_title ctrlSetStructuredText (parseText _string);
};

case 2:{closeDialog 0;[1] call Life_fnc_createHelpDialog;};

case 3:{_string="<t align='center'><t size='2'>In Bearbeitung</t></t>";
_title ctrlSetStructuredText (parseText _string);
};

case 4:{_string="<t align='center'><t size='2'>Regeln</t></t><br /><br /><t size='0.8'>1. Betreibt ein erstzunehmendes Roleplay und habt Spaß dabei!<br />
2. Es werden Roleplay Nicknames gewünscht. Wenn du einen bescheuerten Nickname hast wirst du   gekicked, bis dieser passend ist. (Vorname Nachname)<br />
3. Wenn du stirbst musst du mindestens 10 Minuten warten, bevor du zurückkehren kannst.<br />
4. Behandelt eure Mitspieler fair!<br />
5. In den Safezones sind Kriminelle Handlungen ABSOLUT verboten!<br />
6. Flucht in eine Safezone ist nicht erlaubt. Hierbei entfällt Regel 5.<br />
7. RDM - Du darfst nicht einfach herumlaufen und Leute erschießen.<br />
8. VDM - Es wird niemand, niemals mit dem Fahrzeug überfahren!<br />
9. Kein Hacken, Kein Bug-Using<br />
10.Um ein Regelkonformes spielen zu gewährleisten, lest euch alle Regeln auf der Karte sorgfältig   durch.</t>";_title ctrlSetStructuredText (parseText _string);

};
};