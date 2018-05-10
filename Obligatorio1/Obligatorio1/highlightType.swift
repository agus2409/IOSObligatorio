//
//  highlightType.swift
//  Obligatorio1
//
//  Created by SP 23 on 3/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation

class highlightType {
    var hTypeId : Int?
    var hTypeDescription : String?
    var hTypeImage : String?
    
    
    
    init(hTypeId :Int?, hTypeDescription : String?, hTypeImage : String?) {
        self.hTypeId = hTypeId
        self.hTypeDescription = hTypeDescription
        self.hTypeImage = hTypeImage
    }
}
