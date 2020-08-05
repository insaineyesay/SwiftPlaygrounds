//
//  main.swift
//  StructsVsClasses
//
//  Created by Michael Agee on 3/10/19.
//  Copyright © 2019 Ajira LLC. All rights reserved.
//

import Foundation

var hero = StructHero(name: "Iron Man", universe: "Marvel")
//var hero = ClassHero(name: "Dark Phoenix", universe: "Marvel")
hero.name = "War Machine"
print(hero.reverseName())
//var anotherHero = hero
//anotherHero.name = "The Hulk"
//
//var newHero = ClassHero(name: "Captain Marvel", universe: "Marvel")
//
//print("hero name = \(hero.name)")
//print("new hero name - \(newHero.name)")
//print("another Hero name = \(anotherHero.name)")

