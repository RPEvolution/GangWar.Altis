[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
		
		createDialog "Inventory";
	};