//
//  Player.swift
//  Obligatorio1
//
//  Created by SP 24 on 26/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation

class player {
    
    var id:Int?
    
    var name:String?
	
	var currentTeam : String?
    
    var dateOfBirth:Date?
    
    var position:String?
    
    var teamId:Int?
    
    
    
    
    
    init(id:Int , name:String ,currentTeam : String?, dateOfBirth:Date , position:String , teamId:Int) {
        
        self.id             = id
        
        self.name           = name
		
		self.currentTeam	= currentTeam
        
        self.dateOfBirth    = dateOfBirth
        
        self.position       = position
        
        self.teamId         = teamId
        
    }
    
}
