//
//  GimnasiosController.swift
//  PF_Jeremias
//
//  Created by Jose Jeremias Chairez Macias on 24/05/18.
//  Copyright © 2018 Jose Jeremias Chairez Macias. All rights reserved.
//

import UIKit

class GimnasiosController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    private var selectedIndex = 0
    
    var nombre_gym = ["Balboa Gym","Arena box School", "Elorde Gym","Spartan Gym"]
    var descripcion = ["Balboa Gym es el mejor","Arena box School te ayudara a sacar la fiera que esta en ti", "Elorde Gym, donde se crean los campeones","Spartan Gym, forjando campeones desde 1940"]
    var direccion = ["jesus amavisca #4916,Lomas del paraiso","san juan de dios #521, Centro","calzada independecia #123, Colonia independencia","Rio blanco #4213, Zapopan"]
    var correo = ["balboa_gym@gmail.com","Arena_box@gmail.com","Elorde@gmail.com","Spartan@gmail.com"]
    var telefono = ["33-12-12-18","33-14-54-25","33-53-52-88","33-18-71-51"]
    var imagen_gym = [
        UIImage(named: "gym_balboa"),
        UIImage(named: "gym2"),
        UIImage(named: "gym3"),
        UIImage(named: "gym4")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Conectar TableView con protocolo
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombre_gym.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //crear celda
        let celda = tableView.dequeueReusableCell(withIdentifier: "gym") as! GymTableViewCell
        //Modificar componentes
        celda.nombre_gym.text = nombre_gym[indexPath.row]
        celda.descripcion.text = descripcion[indexPath.row]
        celda.imagen_gym.image = imagen_gym[indexPath.row]
        celda.correo.text = correo[indexPath.row]
        celda.direccion.text = direccion[indexPath.row]
        celda.telefono.text = telefono[indexPath.row]
        //regresar celda
        return celda
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "detalle", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "detalle"){
            let destination = segue.destination as! DetalleGymController
            destination.nombre_gym = nombre_gym[selectedIndex]
            destination.imagen_gym = imagen_gym[selectedIndex]!
            destination.direccion = direccion[selectedIndex]
        }
    }

}


class GymTableViewCell: UITableViewCell{
    
    @IBOutlet weak var imagen_gym: UIImageView!
    @IBOutlet weak var nombre_gym: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var direccion: UILabel!
    @IBOutlet weak var correo: UILabel!
    @IBOutlet weak var telefono: UILabel!
}
