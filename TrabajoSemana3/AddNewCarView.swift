//
//  AddNewCarView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 14/10/22.
//

import Foundation
import UIKit

class AddNewCarView : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    
    var mainController : MyUITableViewController!
    var sections : [String] = []
    var category : String = ""
    var carToAdd : [Car] = []
    let alert = UIAlertController(title: "DANGER", message: "FILL ALL FIELDS.", preferredStyle: UIAlertController.Style.alert)
    

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
    }

    @IBAction func btnAdd(_ sender: Any) {
        
        
        if carUrl.text!.isEmpty || carName.text!.isEmpty || carPrice.text!.isEmpty || carDescription.text!.isEmpty{
            alert.addAction(UIAlertAction(title: "CLOSE", style: UIAlertAction.Style.default, handler: nil))

            self.present(alert, animated: true, completion: nil)
        }else{
            carToAdd = [
                Car(imgCell : carUrl.text!,
                    carName : carName.text!,
                    carPrice : carPrice.text!,
                    carDescription: carDescription.text!)
            ]
            performSegue(withIdentifier: "AddCarToUITableView", sender: nil)
        }
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as? MyUITableViewController)?.carToAddCategory = category
        (segue.destination as? MyUITableViewController)?.carToAddCars = carToAdd
        (segue.destination as? MyUITableViewController)?.checkAddCar = true
    }

    func checkIsEmpty() -> Bool{

        if carUrl.text!.isEmpty || carName.text!.isEmpty || carPrice.text!.isEmpty || carDescription.text!.isEmpty {
            
            return false
        }else{
            return true
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
