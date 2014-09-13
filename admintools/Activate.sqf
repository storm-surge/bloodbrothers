waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198069058801","76561197996771630","76561198053134991","76561197976955679","76561197965336383","76561197971666642"]) then {
		sleep 1;	
	player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};