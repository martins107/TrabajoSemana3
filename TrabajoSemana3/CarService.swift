//
//  CarService.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 18/10/22.
//

import Foundation


class CarService{
    
    var category: String = ""
    var cars: [Car] = []
    
    init(category: String, cars: [Car]){
        self.category = category
        self.cars = cars
    }
    
}
