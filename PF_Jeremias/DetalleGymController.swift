//
//  DetalleGymController.swift
//  PF_Jeremias
//
//  Created by Jose Jeremias Chairez Macias on 24/05/18.
//  Copyright © 2018 Jose Jeremias Chairez Macias. All rights reserved.
//

import UIKit

class DetalleGymController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var detalleTableView: UITableView!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var direccion_gym: UILabel!
    
    private var selectedIndex = 0
    
    var imagen_gym = UIImage()
    var nombre_gym = ""
    var direccion = ""
    var peleadores = ["peleador 1","peleador 2"]
    var records = ["12-0-0","6-5-1"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        detalleTableView.dataSource = self
        detalleTableView.delegate = self
        
        // Do any additional setup after loading the view.
        imagen.image = imagen_gym
        nombre.text = nombre_gym
        direccion_gym.text = direccion
        
        if nombre.text == "Balboa Gym" {
            peleadores = ["Daniel \"dinamita \" Lopez ","Omar \"el loco \" Garcia "]
            records = ["12-0-0","6-5-1"]
        }else if nombre.text == "Arena box School" {
            peleadores = ["Manuel \"finito \" Lopez ","Nelson \"mandela \" Aleman "]
            records = ["11-1-1","8-1-3"]
        }else if nombre.text == "Elorde Gym" {
            peleadores = ["Paul \"El bueno \" Hernandez ","Javier \"Chichathor \" Hernandez "]
            records = ["10-0-2","9-1-2"]
        }else if nombre.text == "Spartan Gym" {
            peleadores = ["Jeremias \"Slayverok \" Chairez ","Manuel \"Verde \" Chairez "]
            records = ["12-0-0","11-2-0"]
        }else {
            peleadores = ["peleador generico 1","peleador generico 2"]
            records = ["0-0-0","0-0-0"]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peleadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //crear celda
        let celda = tableView.dequeueReusableCell(withIdentifier: "detallegym") as! PeleadorTableViewCell
        //Modificar componentes
        celda.Nombre_P.text = peleadores[indexPath.row]
        celda.record.text = records[indexPath.row]
        
        //regresar celda
        return celda
    }

}
class PeleadorTableViewCell: UITableViewCell{
    
    @IBOutlet weak var Nombre_P: UILabel!
    @IBOutlet weak var record: UILabel!
}
