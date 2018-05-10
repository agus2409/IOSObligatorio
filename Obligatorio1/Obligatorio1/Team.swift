//
//  Team.swift
//  Obligatorio1
//
//  Created by SP 24 on 26/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation

class team{
    
    var id:Int?
    
    var name:String?
    
    var abbreviated: String?
	
	var group:String?
    
    var emblem:String?
    
    init (id:Int,name:String, abbreviated:String, group: String?, emblem: String?){
        
        self.id = id
        
        self.name = name
        
        self.abbreviated = abbreviated
		
		self.group = group
        
        self.emblem = emblem
        
    }
    
}


//team(id: <#T##Int#>, name: name , abbreviated: abbreviated)
