class Main_Functions
{
	tag = "main";
	class Main_Directory
	{
		file = "core";
		class keyHandler {};
		class setupEvents {};
	};
};

class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class playerQuery {};
		class insertClientInfo {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class Vehicle_Functions
{
	tag = "vehicle";
	
	class Master_Directory
	{
		file = "core\vehicle";
		
	};
};

class Player_Functions
{
	tag = "player";
	
	class Master_Directory
	{
		file = "core\player";
	};
};

class Event_Functions
{
	tag = "event";
	
	class Event_Directory
	{
		file = "core\events";
		class onInventoryOpened {};
	};
};

