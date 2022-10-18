//
//  PickerView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 18/10/22.
//

import Foundation
import UIKit


class PickerView : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    
    var mainViewController : MyUITableViewController = MyUITableViewController()
    
    
    let sections : [String] = (mainViewController.carModel.cars.)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        sections.count
    }
    
}
