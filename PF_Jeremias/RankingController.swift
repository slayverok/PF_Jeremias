//
//  RankingController.swift
//  PF_Jeremias
//
//  Created by Jose Jeremias Chairez Macias on 24/05/18.
//  Copyright © 2018 Jose Jeremias Chairez Macias. All rights reserved.
//

import UIKit

class RankingController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var rankingTableView: UITableView!
    
    var peleadores = ["Daniel \"dinamita \" Lopez ","Jeremias \"Slayverok \" Chairez ","Manuel \"Verde \" Chairez ","Manuel \"finito \" Lopez ","Paul \"El bueno \" Hernandez ","Javier \"Chichathor \" Hernandez ","Nelson \"mandela \" Aleman ","Omar \"el loco \" Garcia "]
    var records = ["12-0-0","12-0-0","11-2-0","11-1-1","10-0-2","9-1-2","8-1-3","6-5-1"]
    var gimnasio = ["Balboa Gym","Spartan Gym","Spartan Gym","Arena box School","Elorde Gym","Elorde Gym","Arena box School","Balboa Gym"]
    var rank = ["1","1","3","4","5","6","7","8"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Conectar TableView con protocolo
        rankingTableView.dataSource = self
        rankingTableView.delegate = self
        // Do any additional setup after loading the view.
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
        let celda = tableView.dequeueReusableCell(withIdentifier: "ranking") as! rankingTableViewCell
        //Modificar componentes
        celda.nombre.text = peleadores[indexPath.row]
        celda.gimnasio.text = gimnasio[indexPath.row]
        celda.record.text = records[indexPath.row]
        celda.rank.text = rank[indexPath.row]
        //regresar celda
        return celda
    }

}

class rankingTableViewCell: UITableViewCell{
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var gimnasio: UILabel!
    @IBOutlet weak var record: UILabel!
    @IBOutlet weak var rank: UILabel!
    
}
