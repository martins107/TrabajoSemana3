//
//  MyUITableViewController.swift
//  TrabajoSemana3
//
//  Created by Apps2T on 7/10/22.
//

import UIKit

class MyUITableViewController: UITableViewController {

    @IBOutlet weak var uiTableView : UITableView!
    
    var carDetail : Car?
    

    
    var arrayCar = [
        Car (imgCell : "https://img.remediosdigitales.com/d442b6/a3l_drive_004_v2/840_560.jpg",
            carName : "Audi A3",
            carPrice : "15.000€",
            carDescription: "El Audi A3 es un automóvil del segmento C producido por el fabricante alemán Audi desde 1996, abarcando 4 generaciones hasta el momento.En julio de 2013 alcanzó una producción de tres millones de coches. Desde finales de verano de 2013 se ofrece también un A3 con carrocería sedán (o Limousine).2​ Tiene 4.46 metros de largo, es decir casi 25 cm menos largo que un A4.3. El A3 está construido sobre la misma plataforma que varios modelos del Grupo Volkswagen, tales como los Volkswagen Golf, Škoda Octavia y SEAT León.",
            carCategory: "Sedán"),
        Car (imgCell : "https://a.ccdn.es/cnet/contents/media/resources/2014/7/1071064.jpg/0_179_1280_899//937x624cut/",
            carName : "Golf 5",
            carPrice : "10.000€",
            carDescription: "El Volkswagen Golf V, Golf A5 o Golf Mk5 se refiere a la quinta generación de este popular modelo de Volkswagen que ha estado en producción ininterrumpida desde 2003 hasta la actualidad. Al igual que las generaciones precedentes, como el Golf IV al que sustituyó, el Golf V sigue marcando pautas en lo que a la calidad de ensamblado y materiales. Una de sus características más sobresalientes, y que lo diferencian de las generaciones anteriores, es el hecho de reemplazar su tradicional suspensión trasera semi-independiente de eje autoportante, por un muy novedoso diseño multibrazo, anteriormente ya visto en las versiones 4Motion. Esto junto con mejoras en cuando a la cuidadosa puesta a punto de chasis, hacen que el Golf V tenga mejores modales en el camino. Sin embargo, esto también sacrifica el espacio de carga útil, a pesar de este modelo presenta un considerable aumento de tamaño en relación al Golf IV, el volumen de su portaequipaje es considerablemente menor.",
            carCategory: "Sedán"),
        Car (imgCell : "https://upload.wikimedia.org/wikipedia/commons/7/75/Seat_Leon_front_20080809.jpg",
            carName : "Seat Leon",
            carPrice : "7000€",
            carDescription: "El SEAT León es un automóvil de turismo del segmento C producido por el fabricante español SEAT desde el año 1999. Su nombre le viene dado por la ciudad española de León. Abarca cuatro generaciones, que comparten plataforma con otros modelos del Grupo Volkswagen. El León es un vehículo de cinco plazas con motor delantero transversal y tracción delantera, disponible con carrocería hatchback de cinco puertas y a partir de la 3ª generación también carrocería familiar denominado ST. Algunos de sus rivales son el Citroën C4, el Ford Focus, el Honda Civic, el Peugeot 308, el Renault Mégane, el Toyota Auris, el Kia Cee'd y el Hyundai i30.",
            carCategory: "Turismo"),
        Car (imgCell : "https://cdn.motor1.com/images/mgl/Akkwn2/s3/lanzamiento-mercedes-benz-clasec-1.jpg",
            carName : "Mercedes Clase C",
            carPrice : "40.000€",
            carDescription: "El Mercedes-Benz Clase C es un automóvil de gama alta (automóvil de turismo del segmento D) producido por el fabricante alemán Mercedes-Benz desde el año 1993. Es el sucesor del Mercedes-Benz 190,. Algunos de sus principales rivales han sido el BMW Serie 3, el Audi A4 y Audi A5, el Lexus IS, el Saab 9-3, el Infiniti G, el Jaguar X-Type y el Volvo S60. El Clase C fue producido con carrocerías sedán de cuatro puertas, familiar de cinco puertas y hatchback de tres puertas, las dos primeras de cinco plazas y la tercera de cuatro plazas. Tiene motor delantero longitudinal y tracción trasera o a las cuatro ruedas. Este modelo, es uno de los más representativos de la marca alemana, ya que fue presentado como el sucesor del Mercedes-Benz 190, del cual la primera generación del Clase C guarda muchos rasgos característicos de diseño.",
            carCategory: "Deportivo"),
        Car (imgCell : "https://images.milanuncios.com/api/v1/ma-ad-media-pro/images/3278adde-fcbc-47ab-84a3-451da1c9f1bc?rule=hw396_70",
            carName : "Renault Megane 2000",
            carPrice : "1.500€",
            carDescription: "El Renault Mégane es un automóvil del segmento C producido por el fabricante francés Renault. El Mégane es el sustituto del Renault 19 y existen cuatro generaciones, lanzadas en los años 1995, 2002, 2008 y 2016 respectivamente. Todas las generaciones de Megane tienen motor delantero transversal y tracción delantera. En materia de carrocería, las primeras dos generaciones ofrecieron carrozados estilo sedán, hatchback y convertible. A partir de la tercera generación, la versión sedán fue separada como modelo aparte, siendo denominado Renault Fluence. Las versiones hatchback fueron ofrecidas con opciones de tres y cinco puertas, mientras que el convertible era con techo de vinilo en la primera generación y con techo duro plegadizo en las restantes. Otra opción de carrozado fue la versión familiar, ofrecida a partir de la segunda generación. La versión monovolumen del Mégane se denomina Renault Scénic y Renault Grand Scénic, con la que comparte",
            carCategory: "Sedán"),
        Car (imgCell : "https://d1eip2zddc2vdv.cloudfront.net/dphotos/750x400/12904948-1602182075.jpeg",
            carName : "Hyundai i20",
            carPrice : "20.000€",
            carDescription: "El Hyundai i231​ es un automóvil de turismo del segmento B que el fabricante surcoreano Hyundai Motor Company presentó oficialmente en el Salón del Automóvil de París de 2008 y comenzó a vender a fines de ese año. Es un cinco plazas con motor delantero transversal, tracción delantera y carrocería hatchback de tres o cinco puertas. Sustituye (en Europa) al Hyundai Getz y, como indica su denominación, se posiciona entre el Hyundai i10 y el Hyundai i30. Algunos de los rivales del i20 son el Chevrolet Aveo, el Honda City, el Mazda 2 y el Toyota Yaris.",
            carCategory: "Turismo"),
        Car (imgCell : "https://cdn.motor1.com/images/mgl/PKZQL/s3/1997-toyota-supra-sold-for-176-000-at-auction.jpg",
            carName : "Supra mk4",
            carPrice : "no price maG",
            carDescription: "El Toyota Supra (en japonés: トヨタ・スープラ Toyota Sūpura?) es un automóvil deportivo hatchback de 3 puertas con motor delantero montado longitudinalmente de tracción trasera, producido por el fabricante japonés Toyota desde 1979 hasta la actualidad. Hubo una pausa desde 2002 hasta su reinicio en 2019. En sus comienzos, el Supra derivaba del Toyota Celica, aunque ligeramente más largo y amplio. A partir de mediados de 1986, la tercera generación del Supra pasó a ser un modelo propio. El Supra también tiene sus raíces en el Toyota 2000GT, siendo el motor su principal ejemplo. Las tres primeras generaciones se ofrecieron con un descendiente directo a la M 2000GT del motor. Las cinco generaciones del Supra tienen un motor de seis cilindros en línea.",
            carCategory: "Deportivo")
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
        
        carDetail = arrayCar[indexPath.row]
        performSegue(withIdentifier: "UITableViewToDetail", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        (segue.destination as? DetailView)?.car = carDetail
        
    }

}
