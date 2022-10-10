//
//  MyUITableViewController.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 7/10/22.
//

import UIKit

class MyUITableViewController: UITableViewController {

    @IBOutlet weak var uiTableView : UITableView!
    
    let arrayCar = [
        Car (imgCell : "https://img.remediosdigitales.com/d442b6/a3l_drive_004_v2/840_560.jpg",
            carName : "Audi A3",
            carPrice : "15.000€"),
        Car (imgCell : "https://a.ccdn.es/cnet/contents/media/resources/2014/7/1071064.jpg/0_179_1280_899//937x624cut/",
            carName : "Golf 5",
            carPrice : "10.000€"),
        Car (imgCell : "https://upload.wikimedia.org/wikipedia/commons/7/75/Seat_Leon_front_20080809.jpg",
            carName : "Seat Leon",
            carPrice : "7000€"),
        Car (imgCell : "https://cdn.motor1.com/images/mgl/Akkwn2/s3/lanzamiento-mercedes-benz-clasec-1.jpg",
            carName : "Mercedes Clase C",
            carPrice : "40.000€"),
        Car (imgCell : "https://images.milanuncios.com/api/v1/ma-ad-media-pro/images/3278adde-fcbc-47ab-84a3-451da1c9f1bc?rule=hw396_70",
            carName : "Renault Megane 2000",
            carPrice : "1.500€"),
        Car (imgCell : "https://d1eip2zddc2vdv.cloudfront.net/dphotos/750x400/12904948-1602182075.jpeg",
            carName : "Hyundai i20",
            carPrice : "20.000€"),
        Car (imgCell : "https://cdn.motor1.com/images/mgl/PKZQL/s3/1997-toyota-supra-sold-for-176-000-at-auction.jpg",
            carName : "Supra mk4",
            carPrice : "no price maG")
        
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : MyCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for : indexPath) as! MyCell
        cell.carName.text = arrayCar[indexPath.row].getCarName()
        cell.carPrice.text = arrayCar[indexPath.row].getCarPrice()
        cell.imgCell.image = getImage(url : arrayCar[indexPath.row].getImgUrl())
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
        
        performSegue(withIdentifier: "UITableViewToDetail", sender: nil)
        
    }

}
