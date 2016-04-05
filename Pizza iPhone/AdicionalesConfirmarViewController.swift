//
//  AdicionalesConfirmarViewController.swift
//  Pizza iPhone
//
//  Created by Alejandro Franco on 4/04/16.
//  Copyright © 2016 Alejandro Franco. All rights reserved.
//

import UIKit

class AdicionalesConfirmarViewController: UIViewController {
    
    var tamañoPizzaSeleccion : String = ""
    var tipoMasaPizzaSeleccion : String = ""
    var tipoQuesoSeleccion : String = ""
    var seleccionDeAdiciones: [Int] = [0, 0, 0, 0, 0, 0, 0, 0]
    var contadorDeIngredientes : Int = 0

    @IBOutlet weak var tamaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var adiciones: UILabel!
    
    
    @IBOutlet weak var swJamon: UISwitch!
    @IBOutlet weak var swPepperoni: UISwitch!
    @IBOutlet weak var swPavo: UISwitch!
    @IBOutlet weak var swPiña: UISwitch!
    @IBOutlet weak var swSalchicha: UISwitch!
    @IBOutlet weak var swAceituna: UISwitch!
    @IBOutlet weak var swCebolla: UISwitch!
    @IBOutlet weak var swAnchoa: UISwitch!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if hayAdiciones(){
            adiciones.text = mostrarAdiciones()
        }else{
            adiciones.text = "Adiciones: Sin adiciones"
        }
        contadorDeIngredientes = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tamaño.text = "Tamaño: " + tamañoPizzaSeleccion
        masa.text = "Masa: " + tipoMasaPizzaSeleccion
        queso.text = "Queso: " + tipoQuesoSeleccion
    }
    
    func hayAdiciones() -> Bool {
        
        var hayAdicion = false
        
        for index in seleccionDeAdiciones{
            if index == 1{
                hayAdicion = true
                break;
            }
        }
        
        return hayAdicion
    }
    
    func mostrarAdiciones() -> String{
    
        var adiciones = "Adiciones: "
        var contador = 0
        
        for index in seleccionDeAdiciones{
            
            if index == 1{
                switch contador {
                case 0:
                    adiciones += "Jamón. "
                    break;
                case 1:
                    adiciones += "Pepperoni. "
                    break;
                case 2:
                    adiciones += "Pavo. "
                    break;
                case 3:
                    adiciones += "Piña. "
                    break;
                case 4:
                    adiciones += "Salchicha. "
                    break;
                case 5:
                    adiciones += "Aceituna. "
                    break;
                case 6:
                    adiciones += "Cebolla. "
                    break;
                case 7:
                    adiciones += "Anchoa. "
                    break;
                default:
                    break;
                }
            }
            contador += 1
        }
        
        return adiciones
    }
    
    @IBAction func swJamonCambio(sender: UISwitch) {
        
        if swJamon.on{
            seleccionDeAdiciones[0] = 1;
            contadorDeIngredientes += 1
        }else{
            seleccionDeAdiciones[0] = 0;
            contadorDeIngredientes -= 1
        }
        
        if hayAdiciones(){
            adiciones.text = mostrarAdiciones()
        }else{
            adiciones.text = "Adiciones: Sin adiciones"
        }
 
        /*
        if contadorDeIngredientes != 5{
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
            
        }else if contadorDeIngredientes == 5{
            contadorDeIngredientes = 5
            swJamon.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
        */
    }
    
    @IBAction func swPepperoniCambio(sender: UISwitch) {
        
            if swPepperoni.on{
                seleccionDeAdiciones[1] = 1;
                contadorDeIngredientes += 1
            }else{
                seleccionDeAdiciones[1] = 0;
                contadorDeIngredientes -= 1
            }
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
        /*
        if contadorDeIngredientes < 5{
        }else{
            contadorDeIngredientes = 5
            swPepperoni.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
         */
    }
    
    @IBAction func swPavoCambio(sender: UISwitch) {
        
            if swPavo.on{
                seleccionDeAdiciones[2] = 1;
                contadorDeIngredientes += 1
            }else{
                seleccionDeAdiciones[2] = 0;
                contadorDeIngredientes -= 1
            }
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
        /*
        if contadorDeIngredientes < 5{
        }else{
            contadorDeIngredientes = 5
            swPavo.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
        */
    }
    
    @IBAction func swPiñaCambio(sender: UISwitch) {
        
            if swPiña.on{
                seleccionDeAdiciones[3] = 1;
                contadorDeIngredientes += 1
            }else{
                seleccionDeAdiciones[3] = 0;
                contadorDeIngredientes -= 1
            }
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
        /*
        if contadorDeIngredientes < 5{
        }else{
            contadorDeIngredientes = 5
            swPiña.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
        */
    }
    
    @IBAction func swSalchichaCambio(sender: UISwitch) {
        
            if swSalchicha.on{
                seleccionDeAdiciones[4] = 1;
                contadorDeIngredientes += 1
            }else{
                seleccionDeAdiciones[4] = 0;
                contadorDeIngredientes -= 1
            }
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
        /*
        if contadorDeIngredientes < 5{
        }else{
            contadorDeIngredientes = 5
            swSalchicha.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
        */
    }
    
    @IBAction func swAceitunaCambio(sender: UISwitch) {
        
            if swAceituna.on{
                seleccionDeAdiciones[5] = 1;
                contadorDeIngredientes += 1
            }else{
                seleccionDeAdiciones[5] = 0;
                contadorDeIngredientes -= 1
            }
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
        /*
        if contadorDeIngredientes < 5{
        }else{
            contadorDeIngredientes = 5
            swAceituna.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
        */
    }
    
    @IBAction func swCebollaCambio(sender: UISwitch) {
        
            if swCebolla.on{
                seleccionDeAdiciones[6] = 1;
                contadorDeIngredientes += 1
            }else{
                seleccionDeAdiciones[6] = 0;
                contadorDeIngredientes -= 1
            }
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
        /*
        if contadorDeIngredientes < 5{
        }else{
            contadorDeIngredientes = 5
            swCebolla.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
        */
    }
    
    @IBAction func swAnchoaCambio(sender: UISwitch) {
        
            if swAnchoa.on{
                seleccionDeAdiciones[7] = 1;
                contadorDeIngredientes += 1
            }else{
                seleccionDeAdiciones[7] = 0;
                contadorDeIngredientes -= 1
            }
            if hayAdiciones(){
                adiciones.text = mostrarAdiciones()
            }else{
                adiciones.text = "Adiciones: Sin adiciones"
            }
        /*
        if contadorDeIngredientes < 5{
        }else{
            contadorDeIngredientes = 5
            swAnchoa.setOn(false, animated:true)
            mostrarMensaje("Número de adiciones", mensaje: "No pueden seleccionar más de 5 ingredientes.")
        }
         */
    }
    
    func mostrarMensaje(titulo: String, mensaje: String){
        // create the alert
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertControllerStyle.Alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Entiendo", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func confirmarOrden(sender: UIButton) {
        
        if hayAdiciones(){
            adiciones.text = mostrarAdiciones()
            mostrarMensaje("Confirmación de la orden", mensaje: "Su orden ha sido procesada satisfactoriamente.")
            
        }else{
            adiciones.text = "Adiciones: Sin adiciones"
            mostrarMensaje("ERROR: Confirmación de la orden", mensaje: "Por lo menos debe seleccionar una adición para procesar su orden.")
        }
        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
