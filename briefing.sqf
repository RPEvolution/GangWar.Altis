waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["rpe","Konzept"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zone"];
//player createDiarySubject ["civrules","Zivile Gesetze"];
player createDiarySubject ["perm","Fraktionen"];
player createDiarySubject ["illegalitems","Illegal"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Steuerung"];
player createDiarySubject ["help","Handbuch"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Offizielles Change Log",
				"
				Die offizielle change log findet Ihr im<br/>
				BIS Forum (Suchbegriff Altis Life RPG 3.1.4.7)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Server Change Log",
				"
				Derzeit befindet sich der Server noch in der Beta Version.<br/>
				Von daher wird dieser Bereich noch nicht genutzt.<br/><br/>
				"
		]
	];
	
// Konzept
	player createDiaryRecord["rpe",
		[
			"Allgemein",
				"
				Willkommen bei RPEvolution,<br/><br/>
					
				das Spielprinzip von Altis Life wurde auf diesem Server<br/>
				größtenteils überarbeitet.<br/>
				Die folgenden Änderungen werden hier aufgezählt und<br/> 
				erklärt.<br/>
				Neue Spieler sollten sich das Konzept des Servers<br/>
				durchlesen.<br/>
				Für weitere Fragen können die Admins angesprochen<br/>
				werden.<br/><br/><br/>
					
				- Paycheck kann nur durch Bügerukurnde erhalten werden.<br/>
				Bei Kauf einer Rebellenlizenz, verliert die Bürgerurkunde<br/>
				ihren Wert<br/><br/>
				- Beim Fahrzeugkauf wird das Geld vom Konto direkt<br/> 
				abgebucht.<br/><br/>
				- Fahrzeug- und Waffenlizenzen werden nur über<br/> 
				Gefängnisaufenthalt entfernt<br/><br/>
				- Kavala ist Rebellengebiet, d.h. Morde innerhalb<br/> 
				dieser Stadt werden nicht erfasst, Rebellengebiet!<br/>
				- Zusätzliche Fraktionen wie Söldner, ADAC und<br/> 
				Waffenschmuggler vorhanden. Bewerbungen an<br/>
				entsprechende Vorgesetzte<br/><br/>
				- Server speichert Fahndungsliste, Position des<br/> 
				Spielers, sowie die Preise vom Markt<br/><br/>
				- Mietpreise von Fahrzeugen sind interessanter<br/> 
				gestaltet<br/><br/>
				- Huron kann mit Containern zum farmen genutz<br/> 
				werden<br/><br/>
				- Mietpreise für Garagen und Häuser vorhanden<br/><br/>
				- Crafting von Items<br/><br/>
				- Fahrzeuge können nicht zur explosion gebracht<br/>
				werden<br/><br/>
				- EXP System<br/><br/>
				- Preise fürs tanken von Fahrzeugen<br/><br/>
				"
		]
	];
	
	
	player createDiaryRecord ["serverrules",
		[
			"Exploit", 
				"
				Dies sind anerkannte Exploit, durch die du nicht vom<br/>
				Server gekickt wirst, sondern direkt gebannt wirst und<br/>
				gehst nicht über Los und kriegst kein Gehaltscheck<br/><br/><br/>

				- Ausbrechen aus dem Knast durch eine andere Methode<br/>
				als durch Bezahlung der Rechnung oder durch Flucht mit<br/>
				einem Helikopter.<br/><br/>
				- Selbstmord um das Roleplay zu verlassen. Verlassen des<br/>
				Spiels bei getasert, gefesselt oder verhaftet Zustand.<br/>
				Wird der Aufenthalt im Gefägnis registriert und es wird<br/>
				Selbstmord begangen zum verlassen, wirst du gebannt.<br/><br/>
				- Betrügen mit Gegenständen und / oder Geld. Falls<br/>
				jemand eine übertriebene Summe Geld aufs Konto<br/>
				überweist, dies sofort den Admins melden und diesen<br/>
				Betrag sofort an die Admins senden. Falls ein<br/>
				unrealistischer Wert vorhanden ist, können Fragen<br/>
				entstehen.<br/><br/>
				- Verwendung von klar gecheateten Objekten. Falls ein<br/>
				Hacker oder Cheater Objekte erzeugen die nicht zum Spiel<br/>
				gehören, sind diese nicht zu verwenden. Sofort die Admins<br/>
				benachrichtigen über diesen Vorfall und von den Objekten<br/>
				wegbleiben.<br/><br/>
				- Ausnutzen von Fehlern oder Probleme der Spiele Engine<br/>
				zu seinem Vorteil. Falls Waffen platziert wurden sind,<br/>
				die nicht im Spiel vorhanden sind, liegen lassen. Wenn<br/>
				ein Admin dies sieht, führt das zum Ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zone",
				"
				Das gewollte explodieren von Fahrzeugen, ausrauben oder<br/>
				töten von Personen um und auf diesem Gebiet können<br/>
				zum Ban führen.<br/><br/>
				D.h. das innerhalb eines Radius von 50m zum diesem<br/>
				Gebiet gilt auch als Safe Zone<br/><br/><br/>
					
				- Polizei HQ Pyrgos<br/><br/>
				- Polizeistationen auf Altis<br/><br/>
				- Händler bzw. Verarbeiter auf Altis<br/><br/>
				- ADAC HQ Flughafen<br/><br/>
				- Alle Krankenhäuser<br/><br/><br/>
					
				Falls durch Rollenspiel, sich das Ereignis in eine Safe Zone<br/>
				verschiebt, wird die Regelung nur für die beteiligten<br/>
				Personen aufgehoben Polizei darf innerhalb der Safe Zone<br/>
				kein Rollenspiel starten, außer bei RDM, der oben<br/>
				genannten Regel bzgl. Ereignisse oder in Polizei HQ,<br/>
				sowie Polizeistationen<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Banngründe", 
				"
				Dies Regeln werden hier nur schriftlich dargestellt. Dies<br/>
				ist somit die erste und letzte Verwarnung zu diesem<br/>
				Thema<br/><br/><br/>
				
				- Hacking<br/><br/>
				- Cheating<br/><br/>
				- Exploiting (siehe 'Exploit')<br/><br/>
				- Mehr als 3x gekickt vom Admin.<br/><br/>
				- ArmA 3 bei einem offenen Rollenspiel beenden.<br/>
				Fahndungsliste wird gespeichert<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Polizei Interaktion", 
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>
				
				- Füttert den Troll nicht, d.h. das Trollen von Polizisten<br/>
				kann zum Kick bzw. Ban führen<br/><br/>
				- Das ausspionieren von Polizisten übere ihre Aktionen und<br/>
				Standorte können zum Aufenthalt im Gefängnis führen<br/><br/>
				- Bewaffnete Zivilisten oder Rebellen die ohne Rollenspiel<br/>
				Polizisten innerhalb von Städten oder sonst wo töten,<br/>
				betreiben RDM<br/><br/>
				- Aktiv die Polizei von ihrere Arbeit ab zuhalten, kann<br/>
				zum Gefägnins aufenthalt führen<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boote", 
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>
				
				- Wiederholtes verschieben von Booten ohne eine<br/>
				Erlaubnis vom Besitzer<br/><br/>
				- Rammen bzw. verschieben von Boote um Personen<br/>
				damit zu schaden oder zu töten<br/><br/>
				- Vorsätzliches überfahren von Schwimmern und Taucher<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Flugzeuge", 
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>
				
				- Vorsätzliches rammen mit Hubschraubern. Egal ob andere<br/>
				Helikopter, Fahrzeuge oder Gebäude<br/><br/>
				- Konstant unter 150m in Städten fliegen. Erstens ist es<br/>
				illegal und zum zweiten um keine Gebäude zu rammen<br/><br/>
				- Stehlen von Hubschrauber ohne Warnung an den<br/>
				Besitzer, in der Zeit wo der Besitzer versucht sein<br/>
				Hubschrauber abzuschließen.<br/><br/>
				- Fahrzeuge oder Container abwerfen, um Spieler,<br/>
				Fahrzeuge oder Gebäude zu schaden<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge", 
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>
				
				- Vorsätzliches überfahren von Personen (VRDM). Wird als<br/>
				Mord annerkannt und führt zur Strafverfolgung<br/><br/>
				- Vorsätzlich vor Fahrzeuge laufen, um von dem Fahrzeug<br/>
				verletzt oder getötet zu werden<br/><br/>
				- Durch rammen von Fahzeugen versuchen eine Explosion<br/>
				zu erzielen<br/><br/>
				- Kontinuierliches versuchen das Fahrzeug von anderen<br/>
				Leuten zu beklauen, ohne Rollenspiel Hintergrund<br/><br/>
				- Fahrzeuge zu klauen, um diese zu zerstören oder um<br/>
				Zerstörung zu erzielen<br/><br/>
				- Kaufen einer Mehrzahl von Fahrzeuge, um die Spawner<br/>
				zu besetzen bzw. eine Explosion erzeugen zu wollen<br/><br/>
				- Fahrzeug Beschuss dient nur zum stoppen von<br/>
				Fahrzeugen, nicht zum zerstören des Fahrzeugs<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Komunikations Regeln", 
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>
				
				- Side Chat dient nicht zum Spamen mit Musik oder<br/>
				andere Gespräche. Das reden im Side Chat ist untersagt.<br/>
				Channels im Auge behalten<br/><br/>
				- Gespräche im Side Chat gelten nicht als Rollenspiel.<br/>
				Der Side Chat dient zu Informationszwecke oder zu<br/>
				allgemeinen Belustigung<br/><br/>
				- Allgemeines Spamen in den vorhandenen Chats, kann zu<br/>
				konsequenzen führen.<br/><br/>
				- Die Channels im TS sind für die entsprechnenden<br/>
				Fraktionen einzuhalten.<br/><br/>
				- Der Channel Public | kann von jeder Fraktion benutzt<br/>
				werden. Betreten auf eigener Gefahr<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>
				
				- Morden die nicht auf Rollenspiel basierend sind<br/><br/>
				- Sich als Rebelle zu deklarieren, zählt nicht um ohne<br/>
				Grund Leute zu töten. Auch keine Polizisten<br/><br/>
				- Entsteht eine Schießerei zwischen Polizisten und<br/>
				Zivilisten, das auf einem Rollenspiel basierend ist,<br/>
				ist dies kein RDM.<br/><br/>
				- Wirst der Spieler als außenstehnde Person bei einem<br/>
				Feuergefecht getötet, ist es kein RDM. Falscher Ort zur<br/>
				falschen Zeit<br/><br/>
				- Personen zu töten um sich und andere zu schützen ist<br/> 
				kein RDM. Schutz heißt Verteidigung und nicht angreifen<br/><br/>
				- Auf Personen zu schießen, ohne Ihnen Zeit zu geben,<br/>
				sich auf das enstehende Rollenspiel zu beteiligen, ist<br/>
				RDM. Ruhig Blut<br/><br/><br/>
				
				Diese Fälle werden von den Admins von Fall zu Fall<br/>
				kontrolliert und dem entsprechend ein Urteil gefällt.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Regel", 
				"
				Die New Life regel gilt für alle Personen auf dem Server,<br/>
				keine Ausnahme.<br/><br/><br/>
				
				Da dies ein Rollenspiel, sollte man sein Leben und in Ehre<br/>
				halten. Auch das deiner Mitmenschen<br/><br/><br/>
				
				Aufgeführte Punkte in dieser Liste können zum kick und<br/>
				/ oder zum Ban führen, basierend auf der entscheidung<br/>
				der Admins<br/><br/><br/>

				- Ist man gestorben, darf die Stelle des Todes innerhalb<br/>
				der nächsten 10 Minuten nach dem Respawn nicht betreten<br/>
				werden<br/><br/>
				- Stirbt man bei einem Rollenspiel, ist die Rache an dem<br/>
				Mörder verboten, nicht aber für Mitglieder der eigenen<br/>
				Gruppe<br/><br/>
				- Ist man durch ein RDM gestorben, gilt die New Life<br/>
				Regel<br/><br/>
				- Spawnt man sich manuel neu auf dem Server, gilt dies<br/>
				nicht als New Life Regel<br/><br/>
				- Für vorsätzlicher Selbstmord um das Rollenspiel zu<br/>
				entkommen, gilt keine New Life Regel. Falls diese<br/>
				Situation regelmäßig ensteht, kann es zum Ban führen<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				Original Zitat<br/><br/>
				If an admin has to tell you that you are being a dick, you<br/>
				are doing dickish things.<br/>
				Causing others grief, disrupting roleplay, the list goes on.<br/>
				Just don't be a dick okay?<br/>
				This rule may be invoked at an admin's discretion.<br/><br/><br/>
				
				Wenn ein Admin zum Spieler sagt, das seine Handlungen<br/>
				nicht korrekt sind, überdenkt das Spielverhalten<br/>
				Es ist und bleibt ein Spiel, das Spielern spass bringen<br/>
				soll und nicht Stress oder ähnliches wegen trollen<br/>
				und co<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Crisis Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				1. The Federal Reserve is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or arrested if they persist.
				2. Helicopters flying over the Federal Reserve may be asked to leave and disabled if they refuse.<br/>
				2. If the Federal Reserve is getting robbed, it is encouraged that all available officers move in to stop it.<br/>
				3. Nearby officers should immediately head to the Federal Reserve to assist. Petty crimes can be dropped during a robbery.<br/>
				4. Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				5. Police may not fire blindly into the building.<br/>
				6. The police should evacuate the civilians from the building during a robbery.<br/>
				7. Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
				8. Supervisory officers may hire individuals or contract a group of people to work as security guards for the bank. See 'Contracting' section for more information.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				1. No helicopter can land within city limits without authorization from the highest ranking officer online. (Exceptions being what is listed below.)<br/>
				Kavala: The hospital helipad (037129) or docks (031128).<br/>
				Athira: The sports field (138185) or behind the DMV (140188).<br/>
				Pyrgos: The fields North/East of DMV (170127)<br/>
				Sofia: Opposite the car shop (258214) or the fields Southeast of the garage (257212)<br/>
				Small towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/><br/>
				
				2. Helicopters may not land on roads.<br/>
				3. Police may temporarily forbid landing at  but it cannot remain closed for a long period of time.<br/>
				4. Helicopters cannot fly below 150m over the city without authorization.<br/>
				5. Helicopters cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				1. Gang areas are not considered illegal. Thus a cop may enter without a raid, but may not restrain or stop anyone inside without probable cause/illegal activity. (Talking to the gang NPC is NOT probable cause/illegal activity.)<br/>
				2. Do not enter an illegal area unless it is part of a raid. see Raiding/Camping.<br/>
				3. If you chase someone into an illegal area, call for backup.<br/>
				4. Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
				2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
				3. Patrols do not include illegal areas. See Raiding/Camping.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>
				
				1. A checkpoint must consist of 3 or more officers, utilizing 2 or more vehicles. An ATV does not count as one of the required vehicles, but may still be used.<br/>
				2. A checkpoint can not be setup within 300m of an illegal area. Basically, you cannot set one up on top of an illegal area.<br/>
				3. Checkpoints may only be setup on roads, but it does not have to be on a crossroad.<br/>
				4. Checkpoints do not have to be marked on the map.<br/><br/>


				Proper Checkpoint Procedure:<br/>
				1. Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
				2. Ask the driver and any passengers if they have any weapons.<br/>
				3. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
				4. Ask them where they are headed to and from.<br/>
				5. Ask if they will submit to a search.<br/>
				6. If they allow a search, you may restrain them and search them.<br/>
				7. If they do not submit to a search, you must let them go, unless there is probable cause.<br/>
				8. After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
				9. In case anything illegal is found, the person may be ticketed or arrested depending on the crime.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Vehicles", 
				"
				1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
				2. Vehicles that look abandoned, broken, with no driver, can be impounded.<br/>
				3. Boats should be parked reasonably on shore.<br/>
				4. Any vehicle that hasn't moved in a significant amount of time may be impounded.<br/>
				5. Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
				6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
				7. Police speedboats or Hunter HMGs may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Speeding", 
				"
				The following speeds are to be enforced by the Altis Police Force for the absolute safety of the citizens of Kavala and all travelling beyond the city.<br/><br/>
				
				Inside major cities:<br/>
				Small roads: 50km/h<br/>
				Main roads: 65km/h<br/>
				Outside major cities:<br/>
				Small roads: 80km/h<br/>
				Main roads: 110km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"City Protocol", 
				"
				1. Officers may patrol major cities - Kavala, Athira, Pyrgos and Sofia.<br/>
				2. Officers may stop by the car shop to make sure there are no cars that need to be impounded.<br/>
				3. Officers may not stand around or loiter in the centre of town.<br/>
				4. Officers may enter the town in a large number should a rebellious act occur. After the area is clear, they need to leave the town again.<br/>
				5. Martial law may not be declared at any time.<br/>
				6. The Police HQ buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
				Arresting should be done to criminals who are considered a danger to themselves or others.<br/><br/>

				1. You may not arrest someone if you have given them a ticket and they paid it.<br/>
				2. You must tell the suspect why they are being arrested before you arrest them.<br/>
				3. If a civilian is wanted, you may arrest them. Do not kill them, unless the situation falls under the 'Use of Lethal Force' section.<br/><br/>


				Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/><br/>

				1. Tickets must be a reasonable price.<br/>
				2. Ticket prices should be based off of the crimes committed.<br/>
				3. Refusal to pay a legit ticket is grounds for arrest.<br/>
				4. Giving a civilian and illegitimate ticket, such as $100k for speeding, etc., is not allowed and will result in your removal from the police department.<br/><br/>
				
				A complete list of all crimes and the appropriate punishments should be given to officers during training. If in doubt, or if you have not been trained, ask a higher ranking officer what to do.<br/><br/>
				
				The list is available at crime.sealteamsloth.com<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Weapons", 
				"
				A cop is NEVER allowed to supply civilians with weapons. This will get you banned from the server and removed from being a cop.<br/><br/>

				Legal Weapons for Civilians to carry with a permit:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/><br/>

				Any other weapon (Including Silenced P07 [Considered a Police Weapon]) is illegal.<br/><br/>

				1. Civilians are not allowed to have a weapon out within the town limits.<br/>
				2. Civilians may have a gun out when they are not in the town. However they should submit to a license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				At this time the Taser (Silenced P07) is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

				1. In order to raid an area, the cops must have at least 4 officers involved, one of which must be a Sergeant or above.<br/>
				2. All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go.<br/>
				3. If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
				5. Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
				6. After the area is secure, the officers must leave the area.<br/>
				7. An area cannot be raided again for 20 minutes after a previous raid.<br/>
				8. If the raid is a failure (All officers die), the 20 minute timer still applies to those officers.<br/>
				9. Backup may be called in, but it may not consist of fallen officers (see 'New Life Rule').<br/><br/>

				Camping is defined as the prolong stay of an officer in an area.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
				3. Camping of illegal areas is staying longer than needed after a raid, or if officers do not conduct a raid but continue to watch and take action against civilians entering the area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Superintendent<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Senior Patrol Officer<br/>
				8. Patrol Officer<br/>
				9. Cadet<br/><br/>

				Cops in game who are not enrolled/accepted into the SPD are the lowest tier and have no say in police operations.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the SPD.<br/>
				3. Failure to follow proper weapons discipline and procedure will get you removed from the server and suspended from the SPD.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"
				1. All cops must be on Teamspeak 3 in a designated cop channel. Failure to be on Teamspeak during an admin check will result in your immediate dismissal from the server.<br/>
				2. Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>
				"
		]
	];
	
// Permsystem	
	player createDiaryRecord ["perm",
		[
			"Fraktionen",
				"
				Auf den folgenden Server sind zusätzliche Fraktionen<br/>
				vorhanden<br/><br/><br/>
				
				- ADAC<br/><br/>
				- Sanitäter<br/><br/>
				- Söldner<br/><br/>
				- Waffenschmuggler<br/><br/><br/>
				
				Konzepte von neuen Gruppen, können bei den Admins<br/>
				angesprochen werden<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["perm",
		[
			"ADAC",
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und <br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>

				- ADAC Mitglieder gehören zu sozialen Berufen, d.h. diese<br/>
				Mitglieder sollten mit entsprechenden Respekt behandelt<br/>
				werden<br/><br/>
				- ADAC Mitglieder dürfen nicht von Rebellen oder<br/>
				Zivilisten angegriffen werden<br/><br/>
				- ADAC Mitglieder werden keine Preise an den Spieler<br/>
				ausrichten<br/><br/>
				- ADAC Mitglieder dürfen keine illegalen Geschäfften<br/>
				nachgehen<br/><br/>
				- ADAC Mitglieder dürfen sich nur im Notfall verteidigen<br/>
				(Taser)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["perm",
		[
			"Sanitäter",
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>

				- Sanitäter gehören zu sozialen Berufen, d.h. diese<br/>
				Mitglieder sollten mit entsprechenden Respekt behandelt<br/>
				werden<br/><br/>
				- Sanitäter dürfen nicht von Rebellen oder Zivilisten<br/>
				angegriffen werden<br/><br/>
				- Sanitäter werden keine Preise an den Spieler ausrichten<br/><br/>
				- Sanitäter dürfen keine illegalen Geschäfften nachgehen<br/><br/>
				- Sanitäter dürfen sich nur im Notfall verteidigen (Taser)<br/><br/>
				"
		]
	];	
	
	player createDiaryRecord ["perm",
		[
			"Söldner",
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/>
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>

				- Söldner sind im legalen Bereich nur in der Verteidigung<br/>
				angesiedelt. Ihre dafür vorgesehen Waffe darf nur im<br/>
				legalen Bereich zur Verterdigung genutzt werden<br/><br/>
				- Falls Söldner im illegalen Bereich aktiv sind, gelten die<br/>
				gleiche Rechte wie Rebellen und Zivilisten. Die für den<br/>
				legalen Bereich vorhandene Waffe ist nun illegal<br/><br/>
				"
		]
	];	
	
	player createDiaryRecord ["perm",
		[
			"Waffenschmuggler",
				"
				Aufgeführte Punkte in dieser Liste können zum Kick und<br/> 
				/ oder zum Ban führen, basierend auf der Entscheidung<br/>
				der Admins<br/><br/><br/>

				- Waffenschmuggler sollen ihren Lohn durch verkauf der<br/>
				Ware erzielen, nicht durch andere illegale Aktivitäten<br/><br/>
				- Die innerhalb der Waffenschmuggler erstellten Preise für<br/>
				Waffen gelten für alle Spieler gleich<br/><br/>
				"
		]
	];	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen Regeln",
				"
				Ein Rebelle ist eine Person, die bewaffnet gegen den<br/>
				Staat kämpft. In diesem Falle der Polizei von Altis.<br/>
				Angriffe auf die Polizei müssen in ungefähr gleichen<br/>
				Verhältnis stehen<br/><br/><br/>
				
				- Rebellen müssen zuerst eine Gang eröffnen und einen<br/>
				Grund für den Kampf haben<br/><br/>
				- Widerstand entschuldigt kein RDM (siehe RDM Regeln)<br/><br/>
				- Widerstand gegen den Staat soll mehr sein, als Bank<br/>
				überfälle und Polizisten töten<br/><br/>
				- Widerstände sollen koordiniert statt finden.<br/><br/>
				- Hinter jedem Angriff muss ein sinnvoller Grund stehen<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				- In einer Gang zu sein, ist nicht illegal, nur illegale<br/>
				Aktivitäten<br/><br/>
				- In einen Unterschlupf zu sein ist nichts illgales, nur<br/>
				illegale Aktivitäten<br/><br/>
				- Gangs können Unterschlüpfe halten und kontrollieren.<br/>
				Andere Gangs können diesen Bereich angreifen und<br/>
				einnehmen<br/><br/>
				- Kriege zwischen Gangs müssen durch die Leiter der<br/>
				Gang ausgerufen werden<br/><br/>
				- Gangs sollen keine unbewaffnete Zivilisten töten, auch<br/>
				nicht wenn dieser einer gegnerischen Gang angehört. Auch<br/>
				nicht im ein genommenen Unterschlupf<br/><br/>
				- Gangs sollten keine Geiseln töten. Unbewaffnete<br/>
				Zivilisten zu töten entspricht gleich dem RDM. Verletzen<br/>
				von Zivilsten ist erlaubt, sollte vermieden werden<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahzeuge",
				"
				Zivilisten die mit einer von unten genannten Fahrzeuge im<br/>
				Besitz unterwegs sind müssen mit den Konsequenzen<br/>
				rechnen, das Sie mit einem illgalen Fahrzeug unterwegs<br/>
				sind<br/><br/><br/>

				- Ifrit<br/>
				- Bewaffnete Offroader<br/>
				- Polizei Flugzeuge<br/>
				- Polizei Fahrzeuge<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"
				Zivilisten die mit einer von unten genannten Waffe im<br/>
				Besitz unterwegs sind müssen mit den Konsequenzen<br/>
				rechnen,das Sie illegale Waffen tragen<br/><br/><br/>

				- MX Serie<br/>
				- Katiba Serie<br/>
				- TRG Serie<br/>
				- Mk.20 Serie<br/>
				- Mk.18 ABR<br/>
				- SDAR<br/>
				- Sting<br/>
				- Silenced P07 (Taser)<br/>
				- Flashbang<br/>
				- Vermin<br/>
				- Rauchgranaten<br/>
				- IR Granaten<br/>
				- Drohnen<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				Die folgenden Gegenstände werden als illegal betrachtet:<br/><br/><br/>
				
				- Schildkröten<br/><br/>
				- Kokain in beiden Formen<br/><br/>
				- Heroin in beiden Formen<br/><br/>
				- Marihuana in fertiger Form<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Z: öffnen des Spielermenüs<br/><br/>
				U: Öffnen und schliessen  von Fahrzeugen und Häuser<br/><br/>
				F: Sirene an- und ausschalten<br/><br/>
				T: Kofferraum<br/><br/>
				Links Shift + R: Fesseln<br/><br/>
				Links Shift + G: KO schlagen (Waffe muss getragen sein)<br/><br/>
				Links Shift + G: Ergeben (Waffe muss geholstert sein)<br/><br/>
				Links Windows: Hauptfunktionstaste<br/><br/>
				Links Shift + L: Aktiviert die Lichtsirenen.<br/><br/>
				Links Shift + H: Waffe Holstern<br/><br/><br/>
				
				Links Windows wird verwendet zum aufheben<br/>
				von Objekten, interagieren mit Personen und<br/>
				Fahrzeugen<br/><br/>
				Links Windows kann über ESC -> Konfigurerien -><br/>
				Steuerung -> Induvieduelle Steuerung -> Aktion 10<br/>
				verwenden angepasst werden<br/><br/>
				"
		]
	];
