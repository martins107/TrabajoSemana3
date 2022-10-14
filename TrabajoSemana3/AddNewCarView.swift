//
//  AddNewCarView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 14/10/22.
//

import Foundation
import UIKit

class AddNewCarView : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    var carToAdd : Car?
    
    @IBOutlet weak var carUrl: UITextField!
    @IBOutlet weak var carName: UITextField!
    @IBOutlet weak var carPrice: UITextField!
    @IBOutlet weak var carDescription: UITextField!
    @IBOutlet weak var carCategory: UIPickerView!
    
    override func viewDidLoad() {
        UIPickerViewDelegate.self
        UIPickerViewDataSource.self
    }
    
    
    @IBAction func btnAdd(_ sender: Any) {
        
        checkIsEmpty()
        carToAdd = [carUrl.text, carName.text, carPrice.text, carDescription.text, ]
        
    }
    func checkCategory(category : UIPickerView){
        if category.value
    }

    func checkIsEmpty(){
        
        if carUrl.text == nil || carName.text == nil || carPrice.text == nil || carDescription.text == nil {
            print("Tienes que rellenar todos los campos")
        }
    }
    
}
