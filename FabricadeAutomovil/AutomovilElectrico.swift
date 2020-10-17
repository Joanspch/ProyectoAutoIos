//
//  AutomovilElectrico.swift
//  FabricadeAutomovil
//
//  Created by Joan Paredes on 10/6/20.
//  Copyright © 2020 Joan Paredes. All rights reserved.
//

import Foundation
class AutomovilElectrico: Automovil {
    
    var porcentajeBateria = 100
    
    func cargarBateria() -> String {
        porcentajeBateria = 100
        return "carga exitosa"
    }
}
