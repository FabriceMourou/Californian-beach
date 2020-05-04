//
//  vacationer.swift
//  Californian beach
//
//  Created by Fabrice Mourou on 30/04/2020.
//  Copyright © 2020 Fabrice Mourou. All rights reserved.
//

import Foundation

class Vacationer {
    let name: String
    var sunTanning: Int
    var beach: [Beach] = []
    
    
    init(name: String, sunTanning: Int) {
        self.name = name
        self.sunTanning = sunTanning
      
    }
    
    func describe() {
        print("\(name)")
    }
    
//    func zouzou(){
//        print("ALLEZ ! \(sunTanning)")
//    }
    
}
