//
//  main.swift
//  Example 2
//
//  Created by kalyan . on 9/22/24.
//

import Foundation

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animalNames, animalLegs) in numberOfLegs {
    print("\(animalNames) has \(animalLegs) legs")
}

/*
 Output:
 
 ant has 6 legs
 cat has 4 legs
 spider has 8 legs
 */
