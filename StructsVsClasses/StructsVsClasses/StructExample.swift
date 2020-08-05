//
//  StrutExample.swift
//  StructsVsClasses
//
//  Created by Michael Agee on 3/10/19.
//  Copyright © 2019 Ajira LLC. All rights reserved.
//

import Foundation

struct StructHero {
    var name: String
    var universe: String
    
    // adding mutating keyword allows this method
    // to change a property during initialization of the struct
    mutating func reverseName() -> String {
        return String(self.name.reversed())
    }
}


let structHero = StructHero(name: "Spider-Man", universe: "Marvel")
