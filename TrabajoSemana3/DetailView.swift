//
//  DetailView.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 10/10/22.
//

import Foundation
import UIKit

class DetailView : UIViewController{
    
    var car : Car?
    
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
        //carCategory = car.getCarCategory()
        
    }
    func getImage(url : String) -> UIImage{
        let imgUrl : URL = URL(string: url)!
        let imageData : Data = try! Data(contentsOf: imgUrl)
        return UIImage(data: imageData)!
    }
    
}
