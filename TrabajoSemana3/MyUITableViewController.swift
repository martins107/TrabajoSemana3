//
//  MyUITableViewController.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 7/10/22.
//

import UIKit



class MyUITableViewController: UITableViewController {

    @IBOutlet weak var uiTableView : UITableView!
    @IBAction func btnToAdd(_ sender: Any) {
        
        performSegue(withIdentifier: "UITableViewToAdd", sender: nil)
    }
    
    var carDetail : Car?
    var carCategory : Int!
    
    var carModel: CarModel = CarModel()   
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return carModel.cars.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return carModel.cars[section].category
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carModel.cars[section].cars.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : MyCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for : indexPath) as! MyCell
        cell.carName.text = carModel.cars[indexPath.section].cars[indexPath.row].getCarName()
        cell.carPrice.text = carModel.cars[indexPath.section].cars[indexPath.row].getCarPrice()
        cell.imgCell.image = getImage(url : carModel.cars[indexPath.section].cars[indexPath.row].getImgUrl())
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    func getImage(url : String) -> UIImage{
        let imgUrl : URL = URL(string: url)!
        let imageData : Data = try! Data(contentsOf: imgUrl)
        return UIImage(data: imageData)!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        carDetail = carModel.cars[indexPath.section].cars[indexPath.row]
        carCategory = indexPath.section
        performSegue(withIdentifier: "UITableViewToDetail", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        (segue.destination as? DetailView)?.car = carDetail
        (segue.destination as? DetailView)?.mainViewController = self
        (segue.destination as? DetailView)?.category = carCategory
        (segue.destination as? AddNewCar)?.mainController = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel.initCars()
    }

}
