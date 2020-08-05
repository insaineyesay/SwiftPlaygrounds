//
//  ClassExample.swift
//  StructsVsClasses
//
//  Created by Michael Agee on 3/10/19.
//  Copyright © 2019 Ajira LLC. All rights reserved.
//

import Foundation

class ClassHero {
    var name: String
    var universe: String
    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}

let classHero = ClassHero(name: "Iron Man", universe: "Marvel")
