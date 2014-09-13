/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["vodka", 255, 125, 1022, 3, 1, 
		[ 
			["diamondc",1], //If you sell 1x A the market system will "buy" 1x B => B price will increase
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["goldr",1],
			["cement",1],
			["glass",1],
			["coalr",1],
			["silverr",1],
			["grapes",1]
		]
	],
	
	["oilp", 3200, 2578, 5957, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["goldr",1],
			["salt_r",1],
			["cement",1],
			["vodka",1],
			["glass",1],
			["silverr",1],
			["coalr",1],
			["grapes",1]
		] 
	],
	
	["coalr", 1550, 1451, 4721, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["vodka",1],
			["goldr",1],
			["glass",1],
			["iron_r",1],
			["silverr",1],
			["grapes",1]
		] 
	],
	
	["iron_r", 2400, 1725, 4398, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["coalr",1],
			["vodka",1],
			["goldr",1],
			["glass",1],
			["silverr",1],
			["grapes",1]
		] 
	],
	
	["diamondc", 4750, 2799, 6232, 3, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["coalr",1],
			["vodka",1],
			["glass",1],
			["goldr",1],
			["silverr",1],
			["grapes",1]
		] 
	],
	
	["goldr", 4500, 2942, 6285, 3, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["diamondc",1],
			["silverr",1],
			["salt_r",1],
			["coalr",1],
			["cement",1],
			["vodka",1],			
			["glass",1],
			["grapes",1]
		] 
	],
	
	["copper_r", 2500, 1986, 3854, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["goldr",1],
			["salt_r",1],
			["cement",1],
			["coalr",1],
			["vodka",1],
			["glass",1],
			["silverr",1],
			["grapes",1]
		] 
	],
	
	["silverr", 3250, 1851, 3825, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["goldr",1],
			["coalr",1],
			["salt_r",1],
			["cement",1],
			["vodka",1],
			["glass",1],
			["grapes",1]
		] 
	],
	
	["salt_r", 1650, 1489, 3112, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["goldr",1],
			["silverr",1],
			["coalr",1],
			["cement",1],
			["vodka",1],
			["glass",1],
			["grapes",1]
		] 
	],
	
	["glass", 1250, 952, 2487, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["silverr",1],
			["copper_r",1],
			["goldr",1],
			["coalr",1],
			["salt_r",1],
			["cement",1],
			["vodka",1],
			["grapes",1]
		] 
	],
	
	["cement", 1950, 1327, 3652, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["silverr",1],
			["coalr",1],
			["goldr",1],
			["salt_r",1],
			["vodka",1],
			["glass",1],
			["grapes",1]
		] 
	],
	
	["grapes", 70, 51, 521, 2, 1, 
		[ 
			["vodka",1]
		] 
	],
	
	///////////////////////////////////
	
	["turtle", 9500, 3500, 18000, 10, 9,
		[ 
			["marijuana",1], 
			["cocainep",1],
			["moonshine",1],
			["froglsd",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 5200, 4159, 6985, 7, 5,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["froglsd",1],
			["moonshine",1],
			["heroinp",1]
		] 
	],
	
	["cocainep", 7500, 5812, 9368, 11, 8,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["froglsd",1],
			["moonshine",1],
			["heroinp",1]
		] 
	],
	
	["froglsd", 2900, 2227, 3299, 11, 8,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["moonshine",1],			
			["heroinp",1]
		] 
	],
	
	["moonshine", 1800, 1578, 2521, 7, 5,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1],
			["froglsd",1],			
			["heroinp",1]
								
		] 
	],
	
	["heroinp", 4500, 3618, 10200, 11, 8, 
		[ 
			["marijuana",1],
			["froglsd",1],
			["cocainep",1],
			["moonshine",1],
			["turtle",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};