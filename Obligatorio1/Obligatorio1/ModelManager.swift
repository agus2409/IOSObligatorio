//
//  ModelManager.swift
//  Obligatorio1
//
//  Created by SP 23 on 3/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

//id teams 1: uruguay, 2: rusia, 3: españa, 4: portugal


import Foundation

var teams = Array<team>()
var players = Array<player>()
var matches = Array<match>()
var stadiums = Array<stadium>()
var highlights = Array<highlight>()
var highlightTypes = Array<highlightType>()

func initializeData() {
    
    let isoDate = "2016-03-14T10:44:00+0000"
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
    
    let date = dateFormatter.date(from: isoDate)!
    
    
    let isoDate2 = "2018-09-14T10:44:00+0000"
    let date2 = dateFormatter.date(from: isoDate2)!
    
    //let date = Date()
    
    stadiums.append(stadium(id: 1, name: "Samara Arena", city: "Samara", image: "samara.gif"))
    stadiums.append(stadium(id: 2, name: "Fisht Stadium", city: "Sochi", image: "fisht.gif"))
	
	
    teams.append(team(id: 1, name: "Uruguay", abbreviated: "URU", group: "A", emblem: "uru.gif"))
    teams.append(team(id: 2, name: "Russia", abbreviated: "RUS", group: "A", emblem: "rus.gif"))
    teams.append(team(id: 3, name: "Spain", abbreviated: "ESP", group: "B", emblem: "spa.gif"))
    teams.append(team(id: 4, name: "Portugal", abbreviated: "POR", group: "B", emblem: "por.gif"))
    
    players.append(player(id: 1, name: "Martín Campaña"			, currentTeam: "Independiente", dateOfBirth: date, position: "POR", teamId: 1)) 	//29.05.1989
    players.append(player(id: 2, name: "Fernando Muslera"		, currentTeam: "Galatasaray", dateOfBirth: date, position: "POR", teamId: 1))		//16.06.1986
    players.append(player(id: 3, name: "Martín Silva"       	, currentTeam: "Vasco da Gama", dateOfBirth: date, position: "POR", teamId: 1))	//25.03.1983
    players.append(player(id: 4, name: "Martín Cáceres"			, currentTeam: "Lazio", dateOfBirth: date, position: "LI,LD", teamId: 1))				//07.04.1987
    players.append(player(id: 5, name: "Sebastián Coates"		, currentTeam: "Sporting CP", dateOfBirth: date, position: "DFC", teamId: 1))					//07.10.1990
    players.append(player(id: 6, name: "José Giménez"			, currentTeam: "Atlético", dateOfBirth: date, position: "DFC", teamId: 1))					//20.01.1995
    players.append(player(id: 7, name: "Diego Godín"			, currentTeam: "Atlético", dateOfBirth: date, position: "DFC", teamId: 1))					//16.02.1986
    players.append(player(id: 8, name: "Mauricio Lemos"			, currentTeam: "Sassuolo", dateOfBirth: date, position: "LI", teamId: 1))					//28.12.1995
    players.append(player(id: 9, name: "Maxi Pereira"			, currentTeam: "Oporto", dateOfBirth: date, position: "LD", teamId: 1))					//08.06.1984
    players.append(player(id: 10, name: "Federico Ricca"    	, currentTeam: "Málaga", dateOfBirth: date, position: "DEF", teamId: 1))					//01.12.1994
    players.append(player(id: 11, name: "Gastón Silva"      	, currentTeam: "Independiente", dateOfBirth: date, position: "LI" , teamId: 1))					//05.03.1994
    players.append(player(id: 12, name: "Guillermo Varela"  	, currentTeam: "CA Peñarol", dateOfBirth: date, position: "LD" , teamId: 1))					//24.03.1993
    players.append(player(id: 13, name: "Rodrigo Bentancur"     , currentTeam: "Juventus", dateOfBirth: date, position: "MCD", teamId: 1))					//05.06.1997
    players.append(player(id: 14, name: "Giorgian de Arrascaeta", currentTeam: "Cruzeiro EC", dateOfBirth: date, position: "DEL", teamId: 1))					//01.06.1994
    players.append(player(id: 15, name: "Nicolás Lodeiro"		, currentTeam: "Seattle Sounders", dateOfBirth: date, position: "MCO", teamId: 1))					//21.03.1989
    players.append(player(id: 16, name: "Nahitan Nández"		, currentTeam: "Boca Juniors", dateOfBirth: date, position: "MD", teamId: 1))					//28.12.1995
    players.append(player(id: 17, name: "Gastón Ramírez"		, currentTeam: "Sampdoria", dateOfBirth: date, position: "MCO", teamId: 1))					//02.12.1990
    players.append(player(id: 18, name: "Cristian Rodríguez"	, currentTeam: "CA Peñarol", dateOfBirth: date, position: "MI", teamId: 1))					//30.09.1985
    players.append(player(id: 19, name: "Carlos Sánchez"		, currentTeam: "CF Monterrey", dateOfBirth: date, position: "MC", teamId: 1))					//02.12.1984
    players.append(player(id: 20, name: "Lucas Torreira"		, currentTeam: "Sampdoria", dateOfBirth: date, position: "MCD", teamId: 1))					//11.02.1996
    players.append(player(id: 21, name: "Federico Valverde"		, currentTeam: "Deportivo", dateOfBirth: date, position: "MCD", teamId: 1))					//22.07.1998
    players.append(player(id: 22, name: "Matías Vecino"			, currentTeam: "Inter", dateOfBirth: date, position: "MC", teamId: 1))					//24.08.1991
    players.append(player(id: 23, name: "Edinson Cavani"		, currentTeam: "París Saint-Germain", dateOfBirth: date, position: "DEL", teamId: 1))					//14.02.1987
    players.append(player(id: 24, name: "Maximiliano Gómez"		, currentTeam: "Celta", dateOfBirth: date, position: "DEL", teamId: 1))					//14.08.1996
    players.append(player(id: 25, name: "Gastón Pereiro"		, currentTeam: "PSV", dateOfBirth: date, position: "MCO", teamId: 1))					//11.06.1995
    players.append(player(id: 26, name: "Christian Stuani"		, currentTeam: "Girona", dateOfBirth: date, position: "DEL", teamId: 1))					//12.10.1986
    players.append(player(id: 27, name: "Luis Suárez"			, currentTeam: "Barcelona", dateOfBirth: date, position: "DEL", teamId: 1))					//24.01.1987
    players.append(player(id: 28, name: "Jonathan Urreta"		, currentTeam: "CF Monterrey", dateOfBirth: date, position: "DEL", teamId: 1))					//19.03.1990
    players.append(player(id: 29, name: "Óscar Tabárez"			, currentTeam: "", dateOfBirth: date, position: "DT", teamId: 1))					//03.03.1947
			
			
	players.append(player(id: 30, name: "Igor Akinfeev"			, currentTeam: "CSKA Moscú", dateOfBirth: date, position: "POR", teamId: 2)) 		//08.04.1986
    players.append(player(id: 31, name: "Vladimir Gabulov"		, currentTeam: "Club Brugge KV", dateOfBirth: date, position: "POR", teamId: 2)) 	//19.10.1983
    players.append(player(id: 32, name: "Andrei Lunev"          , currentTeam: "Zenit", dateOfBirth: date, position: "POR", teamId: 2))			//13.11.1991
    players.append(player(id: 33, name: "Aleksandr Selikhov"	, currentTeam: "Spartak Moskva", dateOfBirth: date, position: "POR", teamId: 2))	//07.04.1994
    players.append(player(id: 34, name: "Vladimir Granat"		, currentTeam: "Rubin Kazan", dateOfBirth: date, position: "DFC", teamId: 2))		//22.05.1987
    players.append(player(id: 35, name: "Fedor Kudryashov"		, currentTeam: "Rubin Kazan", dateOfBirth: date, position: "DFC", teamId: 2))		//05.04.1987
    players.append(player(id: 36, name: "Ilya Kutepov"			, currentTeam: "Spartak Moskva", dateOfBirth: date, position: "DFC", teamId: 2))	//29.07.1993
    players.append(player(id: 37, name: "Konstantin Rausch"		, currentTeam: "Dinamo Moskva", dateOfBirth: date, position: "LI", teamId: 2))		//15.03.1990
    players.append(player(id: 38, name: "Andrei Semyonov"		, currentTeam: "Akhmat Grozny", dateOfBirth: date, position: "LD", teamId: 2))		//24.03.1989
    players.append(player(id: 39, name: "Igor Smolnikov"        , currentTeam: "Zenit", dateOfBirth: date, position: "DEF", teamId: 2))			//08.08.1988
    players.append(player(id: 40, name: "Alan Dzagoev"          , currentTeam: "CSKA Moscú", dateOfBirth: date, position: "LI" , teamId: 2))		//17.06.1990
    players.append(player(id: 41, name: "Aleksandr Erokhin"     , currentTeam: "Zenit", dateOfBirth: date, position: "LD" , teamId: 2))			//13.10.1989
    players.append(player(id: 42, name: "Denis Glushakov"     	, currentTeam: "Spartak Moskva", dateOfBirth: date, position: "MCD", teamId: 2))	//27.01.1987
    players.append(player(id: 43, name: "Aleksandr Golovin"		, currentTeam: "CSKA Moscú", dateOfBirth: date, position: "DEL", teamId: 2))		//30.05.1996
    players.append(player(id: 44, name: "Vladislav Ignatiev"	, currentTeam: "Lokomotiv Moskva", dateOfBirth: date, position: "MCO", teamId: 2))	//20.01.1987
    players.append(player(id: 45, name: "Dmitriy Kombarov"		, currentTeam: "Spartak Moskva", dateOfBirth: date, position: "MD", teamId: 2))	//22.01.1987
    players.append(player(id: 46, name: "Daler Kuzyaev"			, currentTeam: "Zenit", dateOfBirth: date, position: "MCO", teamId: 2))			//15.01.1993
    players.append(player(id: 47, name: "Aleksey Miranchuk"		, currentTeam: "Lokomotiv Moskva", dateOfBirth: date, position: "MI", teamId: 2))	//17.10.1995
    players.append(player(id: 48, name: "Anton Miranchuk"		, currentTeam: "Lokomotiv Moskva", dateOfBirth: date, position: "MC", teamId: 2))	//17.10.1995
    players.append(player(id: 49, name: "Roman Neustädter"		, currentTeam: "Fenerbahçe", dateOfBirth: date, position: "MCD", teamId: 2))		//18.02.1988
    players.append(player(id: 50, name: "Aleksandr Samedov"		, currentTeam: "Spartak Moskva", dateOfBirth: date, position: "MCD", teamId: 2))	//19.07.1984
    players.append(player(id: 51, name: "Anton Shvets"			, currentTeam: "Akhmat Grozny", dateOfBirth: date, position: "MC", teamId: 2))		//26.04.1993
    players.append(player(id: 52, name: "Yuriy Zhirkov"			, currentTeam: "Zenit", dateOfBirth: date, position: "DEL", teamId: 2))			//20.08.1983
    players.append(player(id: 53, name: "Roman Zobnin"			, currentTeam: "Spartak Moskva", dateOfBirth: date, position: "DEL", teamId: 2))	//11.02.1994
    players.append(player(id: 54, name: "Denis Cheryshev"		, currentTeam: "Villarreal", dateOfBirth: date, position: "MCO", teamId: 2))		//26.12.1990
    players.append(player(id: 55, name: "Aleksandr Kokorin"		, currentTeam: "Zenit", dateOfBirth: date, position: "DEL", teamId: 2))			//19.03.1991
    players.append(player(id: 56, name: "Fedor Smolov"			, currentTeam: "FK Krasnodar", dateOfBirth: date, position: "DEL", teamId: 2))		//09.02.1990
    players.append(player(id: 57, name: "Anton Zabolotnyi"		, currentTeam: "Zenit", dateOfBirth: date, position: "DEL", teamId: 2))			//13.06.1991
    players.append(player(id: 58, name: "Stanislav Cherchesov"	, currentTeam: "", dateOfBirth: date, position: "DT", teamId: 2))					//02.09.1963

	
	players.append(player(id: 59, name: "De Gea"			, currentTeam: "Manchester United", dateOfBirth: date, position: "POR", teamId: 3)) 		//07.11.1990
    players.append(player(id: 60, name: "Kepa"				, currentTeam: "Athletic", dateOfBirth: date, position: "POR", teamId: 3)) 	//03.10.1994
    players.append(player(id: 61, name: "Pepe Reina"        , currentTeam: "Nápoles", dateOfBirth: date, position: "POR", teamId: 3))			//31.08.1982
    players.append(player(id: 62, name: "Azpilicueta"		, currentTeam: "Chelsea", dateOfBirth: date, position: "POR", teamId: 3))	//28.08.1989
    players.append(player(id: 63, name: "Dani Carvajal"		, currentTeam: "Real Madrid", dateOfBirth: date, position: "DFC", teamId: 3))		//11.01.1992
    players.append(player(id: 64, name: "Jordi Alba"		, currentTeam: "Barcelona", dateOfBirth: date, position: "DFC", teamId: 3))		//21.03.1989
    players.append(player(id: 65, name: "Marcos Alonso"		, currentTeam: "Chelsea", dateOfBirth: date, position: "DFC", teamId: 3))	//28.12.1990
    players.append(player(id: 66, name: "Nacho"				, currentTeam: "Real Madrid", dateOfBirth: date, position: "LI", teamId: 3))		//18.01.1990
    players.append(player(id: 67, name: "Odriozola"			, currentTeam: "Real Sociedad", dateOfBirth: date, position: "LD", teamId: 3))		//14.12.1995
    players.append(player(id: 68, name: "Piqué"        		, currentTeam: "Barcelona", dateOfBirth: date, position: "DEF", teamId: 3))			//02.02.1987
    players.append(player(id: 69, name: "Sergio Ramos"      , currentTeam: "Real Madrid", dateOfBirth: date, position: "LI" , teamId: 3))		//30.03.1986
    players.append(player(id: 70, name: "David Silva"   	, currentTeam: "Manchester City", dateOfBirth: date, position: "LD" , teamId: 3))			//08.01.1986
    players.append(player(id: 71, name: "Iniesta"     		, currentTeam: "Barcelona", dateOfBirth: date, position: "MCD", teamId: 3))	//11.05.1984
    players.append(player(id: 72, name: "Isco"				, currentTeam: "Real Madrid", dateOfBirth: date, position: "DEL", teamId: 3))		//21.04.1992
    players.append(player(id: 73, name: "Koke"				, currentTeam: "Atlético", dateOfBirth: date, position: "MCO", teamId: 3))	//08.01.1992
    players.append(player(id: 74, name: "Lucas Vázquez"		, currentTeam: "Real Madrid", dateOfBirth: date, position: "MD", teamId: 3))	//01.07.1991
    players.append(player(id: 75, name: "Marco Asensio"		, currentTeam: "Real Madrid", dateOfBirth: date, position: "MCO", teamId: 3))			//21.01.1996
    players.append(player(id: 76, name: "Parejo"			, currentTeam: "Valencia", dateOfBirth: date, position: "MI", teamId: 3))	//16.04.1989
    players.append(player(id: 77, name: "Rodri"				, currentTeam: "Villarreal", dateOfBirth: date, position: "MC", teamId: 3))	//22.06.1996
    players.append(player(id: 78, name: "Saúl"				, currentTeam: "Atlético", dateOfBirth: date, position: "MCD", teamId: 3))		//21.11.1994
    players.append(player(id: 79, name: "Thiago"			, currentTeam: "Bayern Múnich", dateOfBirth: date, position: "MCD", teamId: 3))	//11.04.1991
    players.append(player(id: 80, name: "Diego Costa"		, currentTeam: "Atlético", dateOfBirth: date, position: "MC", teamId: 3))		//07.10.1988
    players.append(player(id: 81, name: "Iago Aspas"		, currentTeam: "Celta", dateOfBirth: date, position: "DEL", teamId: 3))			//01.08.1987
    players.append(player(id: 82, name: "Rodrigo"			, currentTeam: "Valencia", dateOfBirth: date, position: "DEL", teamId: 3))	//06.03.1991
    players.append(player(id: 83, name: "Lopetegui"			, currentTeam: "", dateOfBirth: date, position: "DT", teamId: 3))		//28.08.1966
 
			
	
	players.append(player(id: 84, name: "Anthony Lopes"		, currentTeam: "Lyon", dateOfBirth: date, position: "DEL", teamId: 4))			//01.10.1990
    players.append(player(id: 85, name: "Beto"				, currentTeam: "Göztepe", dateOfBirth: date, position: "DEL", teamId: 4))		//01.05.1982
    players.append(player(id: 86, name: "Rui Patrício"		, currentTeam: "Sporting CP", dateOfBirth: date, position: "DEL", teamId: 4))			//15.02.1988
    players.append(player(id: 87, name: "Bruno Alves"		, currentTeam: "Rangers FC", dateOfBirth: date, position: "DT", teamId: 4))					//27.11.1981
	players.append(player(id: 88, name: "Cédric Soares"		, currentTeam: "Southampton", dateOfBirth: date, position: "POR", teamId: 4)) 		//31.08.1991
    players.append(player(id: 89, name: "José Fonte"		, currentTeam: "Dalian Yifang FC", dateOfBirth: date, position: "POR", teamId: 4)) 	//22.12.1983
    players.append(player(id: 90, name: "Mário Rui"         , currentTeam: "Nápoles", dateOfBirth: date, position: "POR", teamId: 4))			//27.05.1991
    players.append(player(id: 91, name: "Neto"				, currentTeam: "Fenerbahçe", dateOfBirth: date, position: "POR", teamId: 4))	//26.05.1988
    players.append(player(id: 92, name: "Raphaël Guerreiro"	, currentTeam: "Borussia Dortmund", dateOfBirth: date, position: "DFC", teamId: 4))		//22.12.1993
    players.append(player(id: 93, name: "Rolando"			, currentTeam: "Marsella", dateOfBirth: date, position: "DFC", teamId: 4))		//31.08.1985
    players.append(player(id: 94, name: "Adrien Silva"		, currentTeam: "Leicester City", dateOfBirth: date, position: "DFC", teamId: 4))	//15.03.1989
    players.append(player(id: 95, name: "André Gomes"		, currentTeam: "Barcelona", dateOfBirth: date, position: "LI", teamId: 4))		//30.07.1993
    players.append(player(id: 96, name: "Bernardo Silva"	, currentTeam: "Manchester City", dateOfBirth: date, position: "LD", teamId: 4))		//10.08.1994
    players.append(player(id: 97, name: "Bruno Fernandes"   , currentTeam: "Sporting CP", dateOfBirth: date, position: "DEF", teamId: 4))			//08.09.1994
    players.append(player(id: 98, name: "Gelson Martins"    , currentTeam: "Sporting CP", dateOfBirth: date, position: "LI" , teamId: 4))		//11.05.1995
    players.append(player(id: 99, name: "João Cancelo"     	, currentTeam: "Inter", dateOfBirth: date, position: "LD" , teamId: 4))			//27.05.1994
    players.append(player(id: 100, name: "João Mário"     	, currentTeam: "West Ham United", dateOfBirth: date, position: "MCD", teamId: 4))	//19.01.1993
    players.append(player(id: 101, name: "João Moutinho"	, currentTeam: "Mónaco", dateOfBirth: date, position: "DEL", teamId: 4))		//08.09.1986
    players.append(player(id: 102, name: "Manuel Fernandes"	, currentTeam: "Lokomotiv Moskva", dateOfBirth: date, position: "MCO", teamId: 4))	//05.02.1986
    players.append(player(id: 103, name: "Rúben Neves"		, currentTeam: "Wolverhampton Wanderers", dateOfBirth: date, position: "MD", teamId: 4))	//13.03.1997
    players.append(player(id: 104, name: "William Carvalho"	, currentTeam: "Sporting CP", dateOfBirth: date, position: "MCO", teamId: 4))			//07.04.1992
    players.append(player(id: 105, name: "André Silva"		, currentTeam: "Milan", dateOfBirth: date, position: "MI", teamId: 4))	//06.11.1995
    players.append(player(id: 106, name: "Cristiano Ronaldo", currentTeam: "Real Madrid", dateOfBirth: date, position: "MC", teamId: 4))	//05.02.1985
    players.append(player(id: 107, name: "Gonçalo Guedes"	, currentTeam: "Valencia", dateOfBirth: date, position: "MCD", teamId: 4))		//29.11.1996
    players.append(player(id: 108, name: "Ricardo Quaresma"	, currentTeam: "Beşiktaş", dateOfBirth: date, position: "MCD", teamId: 4))	//26.09.1983
    players.append(player(id: 109, name: "Fernando Santos"	, currentTeam: "", dateOfBirth: date, position: "MC", teamId: 4))		//10.10.1954
	
    
    matches.append(match(id: 1, teamLocalId: 2, teamVisitorId: 1, scoreLocal: "0", scoreVisitor: "0", stadiumId: 1, date: date, phase: "Group A"))//25 jun. 2018 - 18:00
    
    
    matches.append(match(id: 2, teamLocalId: 4, teamVisitorId: 3, scoreLocal: "0", scoreVisitor: "0", stadiumId: 2, date: date, phase: "Group B"))//15 jun. 2018 - 21:00 Hora Local
    
    matches.append(match(id: 3, teamLocalId: 4, teamVisitorId: 1, scoreLocal: "0", scoreVisitor: "0", stadiumId: 2, date: date2, phase: "Final"))//30 jun. 2018 - 21:00 Hora Local
    
     matches.append(match(id: 4, teamLocalId: 2, teamVisitorId: 1, scoreLocal: "0", scoreVisitor: "0", stadiumId: 1, date: date2, phase: "Group A"))//25 jun. 2018 - 18:00
    
     matches.append(match(id: 5, teamLocalId: 2, teamVisitorId: 1, scoreLocal: "0", scoreVisitor: "0", stadiumId: 1, date: date2, phase: "Group A"))//25 jun. 2018 - 18:00
    
     matches.append(match(id: 6, teamLocalId: 2, teamVisitorId: 1, scoreLocal: "0", scoreVisitor: "0", stadiumId: 1, date: date2, phase: "Group A"))//25 jun. 2018 - 18:00
    
    
   // matches.append(match(id: 7, teamLocalId: nil, teamVisitorId: nil, scoreLocal: "0", scoreVisitor: "0", stadiumId: 1, date: date, phase: "Semifinal"))//25 jun. 2018 - 18:00
    
	
    highlightTypes.append(highlightType(hTypeId: 1, hTypeDescription: "Gol", hTypeImage: "ball.gif"))
    
    highlightTypes.append(highlightType(hTypeId: 2, hTypeDescription: "Red card", hTypeImage: "redCard.gif"))
    
    highlightTypes.append(highlightType(hTypeId: 3, hTypeDescription: "Yellow card", hTypeImage: "yellowCard.gif"))
    

    
    highlights.append(highlight(hlId: 1, hlMinute: "1'", hTypeId: 1, matchId: 1, playerId: 27))
    
    highlights.append(highlight(hlId: 2, hlMinute: "10'", hTypeId: 3, matchId: 1, playerId: 56))
    
    highlights.append(highlight(hlId: 3, hlMinute: "15'", hTypeId: 1, matchId: 1, playerId: 57))
    
    highlights.append(highlight(hlId: 4, hlMinute: "52'", hTypeId: 2, matchId: 1, playerId: 9))
    
    highlights.append(highlight(hlId: 5, hlMinute: "83'", hTypeId: 1, matchId: 1, playerId: 27))
    
     highlights.append(highlight(hlId: 6, hlMinute: "15'", hTypeId: 1, matchId: 3, playerId: 27))
    
    highlights.append(highlight(hlId: 7, hlMinute: "88'", hTypeId: 2, matchId: 3, playerId: 27))
    
    highlights.append(highlight(hlId: 8, hlMinute: "20'", hTypeId: 1, matchId: 2, playerId: 106))
    
    highlights.append(highlight(hlId: 9, hlMinute: "28'", hTypeId: 1, matchId: 2, playerId: 106))
    
    highlights.append(highlight(hlId: 10, hlMinute: "57'", hTypeId: 1, matchId: 2, playerId: 106))
    
    highlights.append(highlight(hlId: 11, hlMinute: "48'", hTypeId: 3, matchId: 3, playerId: 98))
    
    
    
}
		
func getTeam(teamId: Int?) -> team{
    
    var team: team?
    
    for auxTeam in teams{
        
        if auxTeam.id == teamId{
            
            team = auxTeam
            
        }
        
    }
    
    return team!
    
}



func getMatch(matchId: Int?) -> match{
    
    var match: match?
    
    for auxMatch in matches{
        
        if auxMatch.id == matchId{
            
            match = auxMatch
            
        }
        
    }
    
    return match!
    
}



func getTeamPlayers(teamId: Int?) -> Array<player>{
    
    var auxPlayers = Array<player>()
    
    for player in players{
        
        if player.teamId == teamId{
            
            auxPlayers.append(player)
            
        }
        
    }
    
    return auxPlayers
    
}



func getTeamNextMaches(teamId: Int?) -> Array<match>{
    
    var match = Array<match>()
    let date = Date()
    
    for auxMatch in matches{
        
        if (auxMatch.teamLocalId == teamId || auxMatch.teamVisitorId == teamId) && auxMatch.date > date{
            
            match.append(auxMatch)
            
        }
        
    }
    
    return match
    
}



func getPlayer(playerId: Int?) ->player{
    
    var player: player?
    
    for auxPlayer in players{
        
        if auxPlayer.id == playerId{
            
            player = auxPlayer
            
        }
        
    }
    
    return player!
    
}



func getStadium(stadiumId:Int?) -> stadium{
    
    var stadium: stadium?
    
    for auxStadium in stadiums{
        
        if auxStadium.id == stadiumId{
            
            stadium = auxStadium
            
        }
        
    }
    
    return stadium!
    
}



func getHighlightType(hTypeId: Int?) -> highlightType{
    
    var hType: highlightType?
    
    for auxHType in highlightTypes{
        
        if auxHType.hTypeId == hTypeId{
            
            hType = auxHType
            
        }
        
    }
    
    return hType!
    
}



func getMatchHighlights(matchId: Int?) -> Array<highlight>{
    
    var auxHightlights = Array<highlight>()
    
    for highlight in highlights{
        
        if highlight.matchId == matchId{
            
            auxHightlights.append(highlight)
            
        }
        
    }
    
    auxHightlights.sort(by:{ $0.hlMinute! < $1.hlMinute!})
    
    return auxHightlights
    
}


func getMatchResult(match: match?) -> (Int?,Int?){
    
    //var auxHightlights = Array<highlight>()
    
    var localScore:Int?
    
    var visitorScore:Int?
    
    localScore = 0
    
    visitorScore = 0
    
    
    for highlight in highlights{
        
        
        
        if highlight.matchId == match?.id && highlight.hTypeId == 1{
            
            let auxPlayer = getPlayer(playerId: highlight.playerId)
            
            if auxPlayer.teamId == match?.teamLocalId{
                
                localScore? += 1
                
            }else if auxPlayer.teamId == match?.teamVisitorId{
                
                visitorScore? += 1
                
            }
            
        }
        
    }
    
    return (localScore,visitorScore)//iniciopartido,terminopatido
    
}








