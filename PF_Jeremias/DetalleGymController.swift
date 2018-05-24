//
//  DetalleGymController.swift
//  PF_Jeremias
//
//  Created by Jose Jeremias Chairez Macias on 24/05/18.
//  Copyright © 2018 Jose Jeremias Chairez Macias. All rights reserved.
//

import UIKit

class DetalleGymController: UIViewController {
    
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var direccion_gym: UILabel!
    
    var imagen_gym = UIImage()
    var nombre_gym = ""
    var direccion = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imagen.image = imagen_gym
        nombre.text = nombre_gym
        direccion_gym.text = direccion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
