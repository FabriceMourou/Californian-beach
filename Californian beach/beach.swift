//
//  beach.swift
//  Californian beach
//
//  Created by Fabrice Mourou on 30/04/2020.
//  Copyright © 2020 Fabrice Mourou. All rights reserved.
//

import Foundation

class Beach {
    
    
    // MARK: - Internal
    
    // MARK: Methods - Internal
    
    
    internal init(name: String, seaWaterToday: String, seaWaterTemperature: Int, skyColor: String) {
        self.name = name
        self.seaWaterToday = seaWaterToday
        self.seaWaterTemperature = seaWaterTemperature
        self.skyColor = skyColor
        
    }
    
    // MARK: - Private
    
    // MARK: Properties - Private
    
    private var name: String
    private var seaWaterToday: String
    private var seaWaterTemperature: Int
    private var skyColor: String
    
    
    
    
    
}










