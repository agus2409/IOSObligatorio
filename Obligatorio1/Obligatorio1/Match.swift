//
//  Match.swift
//  Obligatorio1
//
//  Created by SP 24 on 26/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation


class match{
    
    var id:Int?
    
    var teamLocalId:Int?
    
    var teamVisitorId:Int?
    
    var scoreLocal:String?
    
    var scoreVisitor:String?
    
    var stadiumId:Int?
    
    var date = Date()
    
    var phase:String?
    
    
    
    
    
    
    
    init (id:Int?,teamLocalId:Int?,teamVisitorId:Int?,scoreLocal:String?,scoreVisitor:String?,stadiumId:Int?,date: Date, phase:String?){
        
        self.id = id
        
        self.teamLocalId = teamLocalId
        
        self.teamVisitorId = teamVisitorId
        
        self.scoreLocal = scoreLocal
        
        self.scoreVisitor = scoreVisitor
        
        self.stadiumId = stadiumId
        
        self.date = date
        
        self.phase = phase
        
    }
    
}
