//
//  AddNewCarView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 14/10/22.
//

import Foundation
import UIKit

class AddNewCar : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    
    var mainController : MyUITableViewController!
    var sections : [String] = []
    var category : String!

    @IBOutlet weak var carUrl: UITextField!
    @IBOutlet weak var carName: UITextField!
    @IBOutlet weak var carPrice: UITextField!
    @IBOutlet weak var carDescription: UITextField!
    @IBOutlet weak var carCategory: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        carCategory.delegate = self
        carCategory.dataSource = self
        sections = [mainController.carModel.cars[0].category, mainController.carModel.cars[1].category, mainController.carModel.cars[2].category]
        carCategory.selectedRow(inComponent: 0)
    }


    @IBAction func btnAdd(_ sender: Any) {

        checkIsEmpty()
        
        let carToAdd : [Car] = [
            Car(imgCell : carUrl.text!,
                carName : carName.text!,
                carPrice : carPrice.text!,
                carDescription: carDescription.text!)
        
        ]
        
        mainController.carModel.cars.append(CarService.init(category: category, cars: carToAdd))
        


    }

    func checkIsEmpty(){

        if carUrl.text == nil || carName.text == nil || carPrice.text == nil || carDescription.text == nil {
            print("Tienes que rellenar todos los campos")
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        sections.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        sections[row]
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        50
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        mainController.carModel.cars[row].category = category
    }
    
}
