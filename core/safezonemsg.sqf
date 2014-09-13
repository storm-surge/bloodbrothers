private["_actSafezone"];
disableSerialization;

113 cutrsc ["Prothud","PLAIN"];
_i=uINamespace getVariable "prothud";
_1= _i displayCtrl 1100;
_actSafezone = [];

while {true} do{
_ob = (nearestObjects[getPos player,["Sign_Pointer_Yellow_F"],186]) select 0;
if(isNil "_ob")then{	
	_msg="";
	_1 ctrlsetStructuredText parseText _msg;
player setVariable["inSafezone",false];	
	}else{
if(isNull _ob)then{		
	_msg="";
	_1 ctrlsetStructuredText parseText _msg;
	player setVariable["inSafezone",false];	
	}else{
_distance = _ob getVariable "Sdistance";	
if ( player distance _ob > _distance )then {
		_msg="";
		_1 ctrlsetStructuredText parseText _msg;
		player setVariable["inSafezone",false];	
	}else{
		
			_msg="<t shadow='2'><t size='4.5'><t align='center'><t color='#a80b0c'>Safezone</t></t></t></t><br />"+"<t shadow='2'><t size='0.8'><t align='center'>www.clan-bb.de - ts.clan-bb.de</t></t></t>";
			_1 ctrlsetStructuredText parseText _msg;
			//_actSafezone = _x;
			player setVariable["inSafezone",true];
};
};
	};
sleep 1.5;
	};