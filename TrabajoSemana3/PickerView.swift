//
//  PickerView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 18/10/22.
//

import Foundation
import UIKit


class PickerView : UIPickerViewDelegate, UIPickerViewDataSource{

    
    var mainViewController : MyUITableViewController!
    var pickerView : UIPickerView
    
    init(pickerView : UIPickerView){
        self.pickerView = pickerView
    }
    
    let sections : [String] = [mainViewController?.carModel.cars[0].category, mainViewController?.carModel]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        sections.count
    }
//    func getSelectedCategory() -> String{
//        self.pickerView.selectedRow(inComponent: 0)
//    }
}
