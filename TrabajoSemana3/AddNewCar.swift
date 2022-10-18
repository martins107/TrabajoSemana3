//
//  AddNewCarView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 14/10/22.
//

import Foundation
import UIKit

class AddNewCar : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UIPickerView{
    

    
    
    var carToAdd : Car?
    var mainController : MyUITableViewController?
    
    @IBOutlet weak var carUrl: UITextField!
    @IBOutlet weak var carName: UITextField!
    @IBOutlet weak var carPrice: UITextField!
    @IBOutlet weak var carDescription: UITextField!
    @IBOutlet weak var carCategory: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carCategory.delegate = self
        carCategory.dataSource = self
    }
    
    func carCategory(_ carCategory: UIPickerView, numberOfRowsInSection section: Int) -> Int {
        return (mainController?.arrayCar.count)!!
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        
        checkIsEmpty()
        //carToAdd = [carUrl.text, carName.text, carPrice.text, carDescription.text]
        carToAdd?.imgUrl = carUrl.text!
        carToAdd?.carName = carName.text!
        carToAdd?.carPrice = carPrice.text!
        carToAdd?.carDescription = carDescription.text!
        
        
    }

    func checkIsEmpty(){
        
        if carUrl.text == nil || carName.text == nil || carPrice.text == nil || carDescription.text == nil {
            print("Tienes que rellenar todos los campos")
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
}
