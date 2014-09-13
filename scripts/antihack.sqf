private["_array", "_player", "_hackType", "_hackValue"];
 

AHAH = {

    if (isServer) exitWith {};
    _commonPaths = ["used for hacking","scroll\startmain.sqf","Exta_files\scrollMain.sqf",
                        "runme.dll","Missions\runme.dll","Expansion\runme.dll","dll\runme.dll","Scripts\runme.dll",
                        "MedMen.exe","Missions\MedMen.exe","Expansion\MedMen.exe","dll\MedMen.exe","Scripts\MedMen.exe",
                        "SpawnTool.exe","Missions\SpawnTool.exe","Expansion\SpawnTool.exe","dll\SpawnTool.exe","Scripts\SpawnTool.exe",
                        "HVMRuntm.dll","Missions\HVMRuntm.dll","Expansion\HVMRuntm.dll","dll\HVMRuntm.dll","Scripts\HVMRuntm.dll",
                        "D-DayZ.dll","Missions\D-DayZ.dll","Expansion\D-DayZ.dll","dll\D-DayZ.dll","Scripts\D-DayZ.dll","admin_start.sqf",
                        "ss3.dll","Missions\ss3.dll","Expansion\ss3.dll","dll\ss3.dll","Scripts\ss3.dll","epoch.sqf","epoch2.sqf","fixed.exe",
                        "Scripts\darky.sqf","Scripts\explo.sqf","Scripts\explode_all.sqf","Scripts\explode.sqf","@Dayz_Namalsk\menu.sqf","@Dayz_Namalsk\HP.sqf",
                        "Dayz_Namalsk\menu.sqf","Dayz_Namalsk\HP.sqf","youtube.dll","Settings312.ini","gible\tp.sqf","gible\gible.sqf","vg\Run.sqf",
                        "vg\Custommenu.sqf","vg\RunAH.sqf","vg\Startup.sqf","vg\exec.sqf","gible.sqf","scr\Run.sqf","scr\Custommenu.sqf","scr\RunAH.sqf",
                        "\uhx_menu_first_ed\menu\logoblue.paa","Expansion\beta\dll\RayHook.dll","RayHook.dll","scr\Startup.sqf","scr\ahbypass.sqf",
                        "cset.sqf","crawdaunt\crawdaunt.sqf","\hangender\start.sqf","Scripts\ajmenu.sqf","wuat\screen.sqf","TM\menu.sqf","TM\screen.sqf",
                        "Scripts\menu.sqf","crinkly\keymenu.sqf","ASM\startup.sqf","RSTMU\scr\startMenu.sqf","scr\startMenu.sqf","scr\STrial.sqf",
                        "wuat\vet@start.sqf","TM\keybind.sqf","startup.sqf","start.sqf","startupMenu.sqf","xTwisteDx\menu.sqf","wuat\start.sqf","TM\startmenu.sqf",
                        "infiSTAR_Menu\setup\startup.sqf","startMenu.sqf","custom.sqf","WiglegHacks\mainmenu.sqf","bowenisthebest.sqf",
                        "Scripts\Menu_Scripts\empty.sqf","@mymod\Scripts\ajmenu.sqf","i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf",
                        "yolo\w4ssup YoloMenu v2.sqf","Menus\infiSTAR_SEVEN\startup.sqf","Menus\battleHIGH_Menu\startup.sqf",
                        "Missions\Menus\battleHIGH_Menu\startup.sqf","infiSTAR_EIGHT\startup.sqf","infiSTAR_SSH\startup.sqf",
                        "TM\start.sqf","TM\DemonicMenu.sqf","Scripts\screen.sqf","Scripts\start.sqf","i_n_f_i_S_T_A_R___Menu\list.sqf",
                        "battleHIGH_Menu\startup.sqf","infiSTAR_SEVEN\startup.sqf","Scripts\list.sqf","Scripts\mah.sqf","Menu\start.sqf",
                        "Menu\startup.sqf","i_n_f_i_S_T_A_R.sqf","infiSTAR_Confin3d_edit\infiSTAR.sqf","infiSTAR_Confin3d_edit\startup.sqf",
                        "YoloMenu Updated v6.sqf","Scripts\YoloMenu Updated v6.sqf","Scripts\startmenu.sqf","run.sqf","tm\starthack.sqf",
                        "ASM\_for_keybinds\mystuff.sqf","wookie_wuat\startup.sqf","gc_menu\starten.sqf",
                        "sigdumper.dll","sigdumper.exe","yolo\YoloMenu Updated v6.sqf","dll\Project1_[www.unknowncheats.me]_.exe","Scripts\Project1_[www.unknowncheats.me]_.exe",
                        "gc_menu\uitvoeren.sqf","scr_wasteland\menu\initmenu.sqf","exec.sqf","infiSTAR_chewSTAR_Menu\infiSTAR_chewSTAR.sqf",
                        "infiSTAR_chewSTAR_Menu\scrollmenu\addweapon.sqf","Demonic Menu\scr\startMenu.sqf","Demonic Menu\TM\STARTMENU.sqf",
                        "scr\scr\keybinds.sqf","DayZLegendZ Scripts\mah.sqf","Pickled Menu 3.0\Scripts\ajmenu.sqf","invisible.sqf",
                        "@mHlopchik\Menu_Scripts\menu\keybind\funmenu","RustleSTAR_Menu\menu\initmenu.sqf","RustleSTAR_Menu\setup\startup.sqf",
                        "Scripts\mpghmenu.sqf","DevCon.pbo","DayZLegendZ Scripts\startMenu.sqf","DayZLegendZ Scripts\mah.sqf","EASYTM\start.sqf",
                        "TotalInjector.exe","Rusterl.exe","drhack.dll","drhack.exe","DayZ-Injector cracked by vovanre.exe","dayz-injector.sqf",
                        "DayZ-Injector.dll","HackMenu.exe","d3d199.dll","Scintilla.dll","DayZ-Injector.dll","DayZ-Injector v0.4.exe","CFF-Hook.sqf",
                        "CFF-Hook.dll","skriptexecuter2.exe","PEWPEWPEWPEW.dll","Injector.exe","@SPX\Spawn Weapon.sqf","@SPX\3b.sqf","MK\Scripts\startup.sqf",
                        "Obama Drone 0.5.2.1.exe","NewDayZ.dll","dll\MyHack.dll","Radar_NewR.exe","YoloHack.dll","BESecureJect.exe","YoloMenu.sqf",
                        "hidden.exe","ssl3.dll","DayZNavigator.exe","Spawner.exe","EmptyDll.dll","yolo\startup.sqf","script loader Warrock.exe","infiSTAR.sqf",
                        "VX DAYZ.exe","CE_Engine-v5.exe","kenhack\alltome.sqf","kenhack\SM\AH6X_DZ.sqf","kenhack\veshi.sqf","skriptexecuter2.ini","lcc.exe",
                        "scripts\new.sqf","new.sqf","Dayz Hack v 1.0.exe","dayz cheat\lcc.exe","Scripts\@Hak_script\1.GLAVNOYE\000.sqf","cheater.sqf",
                        "@Hak_script\1.GLAVNOYE\000.sqf","scripts\2dmap.sqf","2dmap.sqf","scripts\addweapon.sqf","addweapon.sqf","scripts\ammo 2.sqf",
                        "ammo 2.sqf","DayZ-Injector v.0.2.2.exe","DayZ AimJunkies.exe","CheatDayZUniversal.exe","DayZ Private AIM,MAP,WH v1.2.exe",
                        "AimJunkies.exe","FABISDayZLauncher.exe","gluemenu.sqf","DayZ Item spawner.exe","Dayz AIM ESP Shield.exe","ChernoNuke.sqf",
                        "Scripts\Menu_Scripts\ChernoNuke.sqf","Menu_Scripts\ChernoNuke.sqf","Nuke.sqf","Scripts\Menu_Scripts\NWAFNuke.sqf",
                        "NWAFNuke.sqf","Scripts\Menu_Scripts\newsbanner.sqf","newsbanner.sqf","Scripts\Menu_Scripts\ElektroNuke.sqf",
                        "ElektroNuke.sqf","Scripts\Nuke.sqf","Scripts\different_AK\AKS-74 Kobra.sqf","Scripts\ESP\esp_TEST.sqf",
                        "ESP\esp_TEST.sqf","esp_TEST.sqf","esp.sqf","Scripts\GodMode.sqf","GodMode.sqf","Scripts\God mode 1.sqf",
                        "God mode 1.sqf","MapHack.sqf","infiSTAR_chewSTAR_Menu\all_misc\nukes\nuke.sqf","@Hak_script\1.Teleport.sqf",
                        "TheBatmanHack v2.6.exe","X-ray.exe","Project1.exe","Dayz injector-by vovan.exe","explode_all.sqf","explode.sqf",
                        "Ubu5Ukg3.sqf","customizethis.sqf","Z__i_n_f_i_S_T_A_R__Z\Run.sqf","Missions\infiSTAR_SEVEN\startup.sqf",
                        "Missions\infiSTAR_SSH\startup.sqf","renamethis.sqf","round2\runthis.sqf","safe scripts\gm.sqf","scr\exec.sqf",
                        "Scripts\exec.sqf","scrollz\tp.sqf","Settings36.ini","ShadowyFaze\exec.sqf","infiSTAR_BLACK\Startup.sqf",
                        "Settings230.ini","infiSTAR_NEW\Startup.sqf","Settings##.ini","DayZ_Settings.txt","Optix_DayZ_Auto.txt","ldr.cnf",
                        "Aspire Menu v.0.5\ALL TEH SCRIPTS!\esp.sqf","Aspire Menu v.0.5\ALL TEH SCRIPTS!\heal.sqf","SpawnTool.exe",
                        "\LoganNZL\LoganNZL@start.sqf","LoganNZL@start.sqf","nightsuck.sqf","Project1_[www.unknowncheats.me]_.exe",
                        "Missions\Project1_[www.unknowncheats.me]_.exe","Expansion\Project1_[www.unknowncheats.me]_.exel",
                        "Douggem_Beats_Infistar.dll","Douggem_Beats_Infistar_2.2_[www.www.unknowncheats.me]_.dll",
                        "Douggem_Beats_Infistar_2.2.dll","Douggem_beats_infistar_2.1_[www.www.unknowncheats.me]_.dll",
                        "Douggem_beats_infistar_2.1.dll","Douggem_Beats_Infistar_[www.www.unknowncheats.me]_.dll",
                        "jestersMENU\jester@start.sqf"
    ]; {
        _contents = format["", loadFile _x];
        if (_contents != "") then {
 
                hackFlag = [player, "hack menu", _x];
                publicVariableServer "hackFlag";
                sleep 5;
                for "_i"
                from 0 to 99 do {
                    (findDisplay _i) closeDisplay 0;
                };
        };
    }
    forEach _commonPaths;
    diag_log "Altis AH: Starting loops!";
    [] spawn {
        private["_sleepVariableCheck", "_badPublicVariables"];
        _sleepVariableCheck = 300;
        _badPublicVariables = ["adminlite","adminlitez","antihacklite","bp","inSub","scroll_m_init_star","markerCount","zombies","startmenu_star",
                "Admin_Lite_Menu","admingod","adminESPicons","fnc_MapIcons_infiSTAR","BIS_MPF_remoteExecutionServer4","adminadd","shnext","infiSTAR_fill_Weapons",
                "adminZedshld","adminAntiAggro","admin_vehicleboost","admin_low_terrain","admin_debug","admincrate","exstr","nlist","PV_AdminMainCode",
                "PVDZ_Hangender","fn_filter","vehiList","Remexec_Bitch","zeus_star","ZombieShield","igodokxtt","tmmenu","AntihackScrollwheel","survcam",
                "lalf","toggle","iammox","telep","dayzlogin3","dayzlogin4","changeBITCHinstantly","antiAggro_zeds","BigFuckinBullets","abcdefGEH","adminicons",
                "fn_esp","aW5maVNUQVI_re_1","passcheck","isInSub","qodmotmizngoasdommy","ozpswhyx","xdistance","wiglegsuckscock","diz_is_real__i_n_f_i_S_T_A_R",
                "pic","veh","unitList","list_wrecked","addgun","ESP","BIS_fnc_3dCredits_n","dayzforce_save","ViLayer","blackhawk_sex","activeITEMlist",
                "adgnafgnasfnadfgnafgn","Metallica_infiSTAR_hax_toggled","activeITEMlistanzahl","xyzaa","iBeFlying","rem","DAYZ_CA1_Lollipops","HMDIR",
                "HDIR","YOLO","carg0d","init_Fncvwr_menu_star","altstate","black1ist","ARGT_JUMP","ARGT_KEYDOWN","ARGT_JUMP_w","ARGT_JUMP_a","bpmenu",
                "p","fffffffffff","markPos","pos","TentS","VL","MV","monky","qopfkqpofqk","monkytp","pbx","nametagThread","spawnmenu","sceptile15",
                "mk2","i","j","v","fuckmegrandma","mehatingjews","TTT5OptionNR","zombieDistanceScreen","cargodz","R3m0te_RATSifni","wepmenu","admin_d0",
                "omgwtfbbq","namePlayer","thingtoattachto","HaxSmokeOn","testIndex","g0d","spawnvehicles_star","kill_all_star","sCode","dklilawedve",
                "selecteditem","moptions","delaymenu","gluemenu","g0dmode","zeus","zeusmode","cargod","infiSTAR_fillHax","nuke","itemmenu","sandshrew",
                "spawnweapons1","abcd","skinmenu","playericons","changebackpack","keymenu","godall","theKeyControl","infiSTAR_FILLPLAYER","whitelist",
                "custom_clothing","img","surrmenu","footSpeedIndex","ctrl_onKeyDown","plrshldblcklst","DEV_ConsoleOpen","executeglobal","cursoresp",
                "teepee","spwnwpn","musekeys","dontAddToTheArray","morphtoanimals","aesp","LOKI_GUI_Key_Color","Monky_initMenu","tMenu","recon",
                "playerDistanceScreen","ihatelife","debugConsoleIndex","MY_KEYDOWN_FNC","pathtoscrdir","Bowen_RANDSTR","ProDayz","idonteven","walrein820",
                "TAG_onKeyDown","changestats","derp123","heel","rangelol","unitsmenu","xZombieBait","plrshldblckls","ARGT_JUMP_s","ARGT_JUMP_d",
                "shnmenu","xtags","pm","lmzsjgnas","vm","bowen","bowonkys","glueallnigga","hotkeymenu","Monky_hax_toggled","espfnc","playeresp",
                "atext","boost","nd","vspeed","Ug8YtyGyvguGF","inv","rspwn","pList","loldami","T","bowonky","aimbott","Admin_Layout","markeresp",
                "helpmenu","godlol","rustlinginit","qofjqpofq","invall","initarr","reinit","byebyezombies","admin_toggled","fn_ProcessDiaryLink","ALexc",
                "Monky_funcs_inited","FUK_da_target","damihakeplz","damikeyz_veryhawt","mapopt","hangender","slag","jizz","kkk","ebay_har","sceptile279",
                "tell_me_more_infiSTAR","airborne_spawn_vehicle_infiSTAR","sxy_list_stored","advert_SSH","antiantiantiantih4x","Flare8","Flare7",
                "bl4ck1ist","keybinds","actualunit","mark_player","unitList_vec","yo2","actualunit_vec","typeVec","mark","r_menu","hfghfg","gible1",
                "yo3","q","yo4","k","cTargetPos","cpbLoops","cpLoopsDelay","Flare","Flare1","Flare2","Flare3","Flare4","Flare5","Flare6","kanghaskhan","palkia",
                "eExec_commmand","cockasdashdioh","fsdandposanpsdaon","antiloop","anti","spawn_explosion_target_ebay","whatisthis4","ratingloop_star",
                "PVAH_admin_rq","PVAH_writelog_rq","sandslash","muk","pidgeotto","charmeleon","pidgey","lapras","isAdmin",
                "raichu","infiSTAR_chewSTAR_dayz_1","infi_STAR_output","infi_STAR_code_stored","keybindings","keypress","menu_toggle_on","dayz_godmode",
                "vars","MENUTITLE","wierdo","fnc_allunits","runHack","Dwarden","poalmgoasmzxuhnotx","ealxogmniaxhj","firstrun","ohhpz","fn_genStrFront",
                "kickable","stop","possible","friendlies","hacks","main","mapscanrad","maphalf","DelaySelected","SelectDelay","GlobalSleep",
                "jopamenu","ggggg","tlm","Listw","toggle_keyEH","infammoON","pu","chute","dayzforce_savex","PVDZ_AdminMenuCode","PVDZ_SUPER_AdminList",
                "PVDZ_hackerLog","BP_OnPlayerLogin","material","mapEnabled","markerThread","addedPlayers","playershield","spawnitems1","sceptile27",
                "ESPEnabled","wpnbox","fnc_temp","MMYmenu_stored","VMmenu_stored","LVMmenu_stored","BIS_MPF_ServerPersistentCallsArray","PV_CHECK",
                "patharray","time","ZobieDistanceStat","infiSTARBOTxxx","keyspressed","fT","tpTarget","gible129","HumanityVal","yanma","absol",
                "aggron","magazines_spawn","weapons_spawn","backpack_spawn","backpackitem_spawn","keybindings_exec","keypress_exec","MajorHageAssFuckinfBulletsDude",
                "Wannahaveexplosivesforbullets","TheTargetedFuckingPlayerDude","haHaFuckAntiHakcsManIbypasDatShit","aintNoAntiHackCatchMyVars","objMYPlayer",
                "Awwwinvisibilty","vehiclebro","wtfyisthisshithere","terrainchangintime","Stats","menu","ssdfsdhsdfh","onisinfiniteammobra","youwantgodmodebro",
                "yothefuckingplayerishere","Namey","sendmsg12","jkh","DELETE_THIS","move_forward","leftAndRight","forwardAndBackward","upAndDown","distanceFromGround",
                "hoverPos","hovering","bulletcamon","cheatlist","espOn","removegrass","timeday","infammo","norekoil","nocollide","esp2ez","fastwalk","entupautowalk",
                "BensWalker","dropnear","executer","killme","magnetmenu","loadmain","magnet","A11","dbClicked","loadMenu","refreshPlayers","ALREADYRAN","players",
                "sendMessage","newMessage","W34p0ns","amm0","Att4chm3nt","F0od_Dr1nk","M3d1c4l","T0ol_it3ms","B4ckp4cks","It3m5","Cl0th1ng","walkloc","nwaf","cherno",
                "cherno_resident","cherno_resident_2","dubky","oaks","swaf","swmb","balota","getX","PlayerShowDistance","M_e_n_u_2","colorme"
        ];
        diag_log "Altis AH: Detection of hack variables started!";
        while {
            true
        }
        do {
            {
                if !(isNil _x) exitWith {
                    diag_log "Altis AH: Found a hack variable!";
 
                    hackFlag = [player, "hacked variable", _x];
                    publicVariableServer "hackFlag";
                    sleep 5;
                    for "_i"
                    from 0 to 99 do {
                        (findDisplay _i) closeDisplay 0;
                    };
                };
            }
            forEach _badPublicVariables;
 
            sleep _sleepVariableCheck;
        };
    };
    [] spawn {
        private["_keyDownHandlerCount", "_keyUpHandlerCount", "_ctrlDrawHandlerCount"];
        diag_log "Altis AH: Hack menu check started!";
        while {
            true
        }
        do {
            (findDisplay 46) displayRemoveAllEventHandlers "KeyUp";
            ((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers "Draw";
            if (!(isNull findDisplay 3030) || !(isNull findDisplay 155)) then {
 
                    diag_log "Altis AH: Found a hack menu!";
 
                    hackFlag = [player, "hack menu", _x];
                    publicVariableServer "hackFlag";
                    sleep 5;
                    for "_i"
                    from 0 to 99 do {
                        (findDisplay _i) closeDisplay 0;
                    };
            };
            sleep 330;
        };
    };
    [] spawn {
        private["_sleepGodModeCheck", "_recoilSettings", "_zombieCheck", "_damageHandler", "_unconsciousFunction"];
        _sleepGodModeCheck = 360;
        _recoilSettings = unitRecoilCoefficient player;
        diag_log "Altis AH: Godmode check started!";
        while {
            true
        }
        do {
            if (unitRecoilCoefficient player != _recoilSettings) exitWith {
                    diag_log "Altis AH: Detected recoil hack!";
                    hackFlag = [player, "no recoil", "null"];
                    publicVariableServer "hackFlag";
                    sleep 5;
                    for "_i"
                    from 0 to 99 do {
                        (findDisplay _i) closeDisplay 0;
                    };
            };
            sleep _sleepGodModeCheck;
        };
    };
};
 

"hackFlag"
addPublicVariableEventHandler {
    _array = _this select 1;
    _player = _array select 0;
    _hackType = _array select 1;
    _hackValue = format["", _array select 2];
    diag_log format["***ANTI-HACK***: %1 (%2) was detected for cheating: %3 with the value '%4'", name _player, getPlayerUID _player, _hackType, _hackValue];
	[[format["***ANTI-HACK***: %1 (%2) was detected for cheating: %3 with the value '%4'", name _player, getPlayerUID _player, _hackType, _hackValue],"TON_fnc_logIt",false,false]] spawn BIS_fnc_MP;
	player setDamage 1;
};

"clientStarted"
addPublicVariableEventHandler {
    _client = _this select 1;
    (owner _client) publicVariableClient "AHAH";
};
 