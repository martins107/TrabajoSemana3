//
//  DetailView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 10/10/22.
//

import Foundation
import UIKit

class DetailView : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    var car : Car?
    var mainViewController : MyUITableViewController!
    var sections : [String] = []
    
    @IBOutlet weak var carImg: UIImageView!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var carPrice: UILabel!
    @IBOutlet weak var carDescription: UILabel!
    @IBOutlet weak var carCategory: UIPickerView!
    
    
    
    override func viewDidLoad() {
        carImg.image = getImage(url : (car?.getImgUrl())!)
        carName.text = car?.getCarName()
        carPrice.text = car?.getCarPrice()
        carDescription.text = car?.getCarDescription()
        sections = [mainViewController.carModel.cars[0].category, mainViewController.carModel.cars[1].category, mainViewController.carModel.cars[2].category]
        
        
    }
    func getImage(url : String) -> UIImage{
        let imgUrl : URL = URL(string: url)!
        let imageData : Data = try! Data(contentsOf: imgUrl)
        return UIImage(data: imageData)!
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
    
}
