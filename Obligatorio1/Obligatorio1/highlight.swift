//
//  highlight.swift
//  Obligatorio1
//
//  Created by SP 23 on 3/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation

class highlight {
    var hlId : Int?
    var hlMinute: String?
    var hTypeId : Int?
    var matchId : Int?
    var playerId : Int?
    
    init(hlId : Int?,hlMinute: String?,hTypeId : Int?,matchId : Int?, playerId : Int?) {
        self.hlId = hlId
        self.hlMinute = hlMinute
        self.hTypeId = hTypeId
        self.matchId = matchId
        self.playerId = playerId
    }
}
