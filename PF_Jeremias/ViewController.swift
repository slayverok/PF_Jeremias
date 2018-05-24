//
//  ViewController.swift
//  PF_Jeremias
//
//  Created by Jose Jeremias Chairez Macias on 23/05/18.
//  Copyright © 2018 Jose Jeremias Chairez Macias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsuario: UITextField!
 
    @IBOutlet weak var txtContra: UITextField!
    
    //Crendenciales
    let user = "balboa"
    let pass = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap = UITapGestureRecognizer(target: self, action: #selector(ocultarTeclado))
        //agregar a la vista principal
        view.addGestureRecognizer(tap)
    }
    
    @objc func ocultarTeclado(){
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: UIButton) {
        //Validar información
        if (user == txtUsuario.text && pass == txtContra.text){
            //Credenciales correctas
            print("credenciales correctas")
            let alerta = UIAlertController(title:"Exito",message:"Credenciales Correctas",preferredStyle :UIAlertControllerStyle.alert)
            //Agregar boton (es)
            alerta.addAction(UIAlertAction(title:"Ok",style:UIAlertActionStyle.default,handler:{action in self.performSegue(withIdentifier: "login", sender: self)}))
            //Mostrar alerta
            self.present(alerta,animated:true,completion:nil)
            
        }else{
            //Credenciales incorrectas
            print("credenciales incorrectas")
            let error = UIAlertController(title:"Intente nuevamente",message:"Credenciales Incorrectas",preferredStyle :UIAlertControllerStyle.alert)
            //Agregar boton (es)
            error.addAction(UIAlertAction(title:"Intentar",style:UIAlertActionStyle.default,handler:nil))
            //Mostrar alerta
            self.present(error,animated:true,completion:nil)
        }
    }
    
}

