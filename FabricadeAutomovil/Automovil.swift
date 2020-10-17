//
//  Automovil.swift
//  FabricadeAutomovil
//
//  Created by Joan Paredes on 10/1/20.
//  Copyright © 2020 Joan Paredes. All rights reserved.
//

import Foundation

class Automovil {
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 5000
    func encender() -> Bool {
        return true
    }
    func apagar() ->  Bool{
        return false
    }
    
    func acelerar() -> String {
        return "Aceleracion Exitosa"
    }
}


