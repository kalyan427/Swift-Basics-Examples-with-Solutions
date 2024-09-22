//
//  main.swift
//  Control Flow
//
//  Created by kalyan . on 9/22/24.
//

import Foundation

let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names {
    print("Hello \(name)")
}

for name in names.enumerated() {
    print("\(name.offset) \(name.element)")
}

/*
 Output:
 
 Hello Anna
 Hello Alex
 Hello Brian
 Hello Jack
 0 Anna
 1 Alex
 2 Brian
 3 Jack
 
 */
