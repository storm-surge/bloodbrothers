	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{
			class foodHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "icons\food.paa";
				x = safeZoneX+safeZoneW-0.115; y = safeZoneY+safeZoneH-0.40;
				w = 0.03; h = 0.04;
			};
			
			class waterHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "icons\water.paa";
				x = safeZoneX+safeZoneW-0.12; y = safeZoneY+safeZoneH-0.36;
				w = 0.04; h = 0.04;
			};
			
			class healthHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\health.paa";
				x = safeZoneX+safeZoneW-0.11; y = safeZoneY+safeZoneH-0.305;
				w = 0.02; h = 0.03;
			};
			class fpsIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\fps_icon.jpg";
				x = safeZoneX+safeZoneW-0.11; y = safeZoneY+safeZoneH-0.255;
				w = 0.02; h = 0.03;
			};
			class playersIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\players.jpg";
				x = safeZoneX+safeZoneW-0.11; y = safeZoneY+safeZoneH-0.205;
				w = 0.02; h = 0.03;
			};
			class ausdauerIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\running_man.paa";
				x = safeZoneX+safeZoneW-0.11; y = safeZoneY+safeZoneH-0.155;
				w = 0.02; h = 0.03;
			};
		};
		
		class controls
		{
			class foodtext
			{
				type=0;
				idc=23500;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class healthtext
			{
				type=0;
				idc=23515;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			class fpstext
			{
				type=0;
				idc=23516;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";			
			};
			class playerstext
			{
				type=0;
				idc=23517;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";			
			};
			class ausdauertext
			{
				type=0;
				idc=23518;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";			
			};						
		};   
 	};