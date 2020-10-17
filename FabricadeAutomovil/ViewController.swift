//
//  ViewController.swift
//  FabricadeAutomovil
//
//  Created by Joan Paredes on 10/1/20.
//  Copyright © 2020 Joan Paredes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tipoAutomovil: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func crearAutoSencillo(_ sender: Any) {
        tipoAutomovil=0
        performSegue(withIdentifier: "segueSecondView", sender: self)
    }
    
    @IBAction func crearAutoMazda(_ sender: Any) {
        tipoAutomovil=1
        performSegue(withIdentifier: "segueSecondView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? ViewControllerInformation{
            destino.tipoAutomovil  = self.tipoAutomovil
        }
    }
    
}

