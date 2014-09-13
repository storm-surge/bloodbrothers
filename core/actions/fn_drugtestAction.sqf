/*
	File: fn_drugtestAction.sqf
	Author: Mario
	
	Description:
	Test for Drugusage.
*/

private["_unit","_dText","_weed","_cocaine","_alkohol"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Testing...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Test fehlgeschlagen!"};

if(_unit getVariable["drug_weed",false]) then { _weed = "Positiv"; } else { _weed = "Negativ"; };
if(_unit getVariable["drug_cocaine",false]) then { _cocaine = "Positiv"; } else { _cocaine = "Negativ"; };
if(_unit getVariable["drug_alkohol",false]) then { _alkohol = "Positiv"; } else { _alkohol = "Negativ"; };

hint parseText format["<t color='#FF0000'><t size='2'>%1</t></t><br/>
<t color='#FFD700'>Weed: </t>%2<br/>
<t color='#FFD700'>Cocaine: </t>%3<br/>
<t color='#FFD700'>Weed: </t>%4<br/>
<br/><t color='#FF0000'>%5</t>"
,name _unit,_weed,_cocaine,_alkohol];