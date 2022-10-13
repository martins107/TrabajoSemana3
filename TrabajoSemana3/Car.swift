//
//  Car.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 7/10/22.
//

import Foundation
import UIKit

class Car : ProtocolCar{
    
    var imgUrl: String = ""
    var carName: String = ""
    var carPrice: String = ""
    var carDescription: String = ""
    var carCategory: String = ""
    
    
    init(imgCell: String, carName: String, carPrice:String, carDescription: String, carCategory: String){
        self.imgUrl = imgCell
        self.carName = carName
        self.carPrice = carPrice
        self.carCategory = carCategory
        self.carDescription = carDescription
    }
    func getImgUrl() -> String {
        return imgUrl
    }
    
    func getCarName() -> String {
        return carName
    }
    
    func getCarPrice() -> String {
        return carPrice
    }
    func getCarDescription() -> String {
        return carDescription
    }
    func getCarCategory() -> String {
        return carCategory
    }
    
//    func setImgCell(imgCell: String) {
//        <#code#>
//    }
//
//    func setCarName(carName: String) {
//        <#code#>
//    }
//
//    func setCarPrice(carPrice: String) {
//        <#code#>
//    }
    
    
}
