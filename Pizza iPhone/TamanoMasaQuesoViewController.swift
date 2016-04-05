//
//  TamanoMasaQuesoViewController.swift
//  Pizza iPhone
//
//  Created by Alejandro Franco on 4/04/16.
//  Copyright © 2016 Alejandro Franco. All rights reserved.
//

import UIKit

class TamanoMasaQuesoViewController: UIViewController {

    @IBOutlet weak var tamañoPizza: UISegmentedControl!
    @IBOutlet weak var tipoMasaPizza: UISegmentedControl!
    @IBOutlet weak var tipoQuesoPizza: UISegmentedControl!
    
    var tamañoPizzaSeleccion : String = "Chica"
    var tipoMasaPizzaSeleccion : String = "Delgada"
    var tipoQuesoSeleccion : String = "Mozarela"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tamañoPizzaControl(sender: UISegmentedControl) {
        
        switch tamañoPizza.selectedSegmentIndex
        {
            case 0:
                tamañoPizzaSeleccion = "Chica"
            case 1:
                tamañoPizzaSeleccion = "Mediana"
            case 2:
                tamañoPizzaSeleccion = "Grande"
                break;
            default:
                break;
        }
    }
    
    
    @IBAction func tipoMasaPizzaControl(sender: UISegmentedControl) {
        
        switch tipoMasaPizza.selectedSegmentIndex
        {
            case 0:
                tipoMasaPizzaSeleccion = "Delgada"
            case 1:
                tipoMasaPizzaSeleccion = "Crujiente"
            case 2:
                tipoMasaPizzaSeleccion = "Gruesa"
                break;
            default:
                break;
        }
    }
    
    
    @IBAction func tipoQuesoControl(sender: UISegmentedControl) {
        
        switch tipoQuesoPizza.selectedSegmentIndex
        {
            case 0:
                tipoQuesoSeleccion = "Mozarela"
            case 1:
                tipoQuesoSeleccion = "Cheddar"
            case 2:
                tipoQuesoSeleccion = "Parmesano"
                break;
            case 3:
                tipoQuesoSeleccion = "Sin queso"
                break;
            default:
                break;
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! AdicionalesConfirmarViewController
        sigVista.tamañoPizzaSeleccion = tamañoPizzaSeleccion
        sigVista.tipoMasaPizzaSeleccion = tipoMasaPizzaSeleccion
        sigVista.tipoQuesoSeleccion = tipoQuesoSeleccion
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
