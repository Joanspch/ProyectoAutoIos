//
//  ViewControllerInformation.swift
//  FabricadeAutomovil
//
//  Created by Joan Paredes on 10/6/20.
//  Copyright © 2020 Joan Paredes. All rights reserved.
//

import UIKit

class ViewControllerInformation: UIViewController {

    @IBOutlet weak var labelInformation: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    var tipoAutomovil: Int?
    var automovilNormal: Automovil?
    var autoElectrico: AutomovilElectrico?
    
    var estadoAutomovil = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipoAutomovil {
        case 0:
            automovilNormal = Automovil()
            myImage.image = UIImage(named: "automovil")
            labelInformation.text = "Se creo el auto normal correctamente"
          
            
        case 1:
            autoElectrico = AutomovilElectrico()
            myImage.image = UIImage(named: "autoelectrico")
            autoElectrico!.color = "Red"
            autoElectrico!.precio = 100000
            labelInformation.text = "Se creo el auto electrico correctamente"
           
        default:
            print("Error")
        }

       
    }
    
    @IBAction func buttonMostrarInformacion(_ sender: Any) {
        
        switch tipoAutomovil {
        
        case 0:
            labelInformation.text = """
                                      El automovil tiene
                                      \(automovilNormal!.numeroLlantas) llantas,
                                      es de color \(automovilNormal!.color)
                                       y su precio es de \(automovilNormal!.precio) USD
                                    """
          
            
        case 1:
            labelInformation.text = """
                                         El automovil electrico tiene
                                         \(autoElectrico!.numeroLlantas) llantas,
                                         es de color \(autoElectrico!.color),\
                                         su precio es de
                                         \(autoElectrico!.precio) USD \
                                         y su carga está al
                                         \( autoElectrico!.porcentajeBateria) de bateria
                                         """
           
        default:
            print("Error")
        }

    }
    

    
    @IBAction func encenderAutomovil(_ sender: Any) {
        
        switch tipoAutomovil! {
        case 0:
            
            if (!estadoAutomovil) {
                estadoAutomovil = automovilNormal!.encender()
                labelInformation.text = "El automovil se encendido correctamente"
            }else{
                labelInformation.text = "El automovil ya esta encendido"
            }
            
        case 1:
            if (!estadoAutomovil) {
                estadoAutomovil = autoElectrico!.encender()
                labelInformation.text = "El automovil se encendido correctamente"
                autoElectrico!.porcentajeBateria = 75
            }else{
                labelInformation.text = "El automovil ya esta encendido"
            }
           
        default:
            print("Error")
        }
        
    }

    @IBAction func apagarAutomovil(_ sender: Any) {
        switch tipoAutomovil! {
        case 0:
            
            if (estadoAutomovil) {
                estadoAutomovil = automovilNormal!.apagar()
                labelInformation.text = "El automovil se apago correctamente"
            }else{
                labelInformation.text = "El automovil ya esta apagado"
            }
            
        case 1:
            if (estadoAutomovil) {
                estadoAutomovil = autoElectrico!.apagar()
                labelInformation.text = "El automovil se apago correctamente"
            }else{
                labelInformation.text = "El automovil electrico ya esta apagado"
            }
           
        default:
            print("Error")
        }
        
    }
    
    @IBAction func acelerarAutomovil(_ sender: Any) {
        
        switch tipoAutomovil! {
        case 0:
            
            if (estadoAutomovil) {
                labelInformation.text = automovilNormal!.acelerar()
                
            }else{
                labelInformation.text = "El automovil tiene que estar encendido para poder acelerar"
            }
            
        case 1:
            if (estadoAutomovil) {
                labelInformation.text = autoElectrico!.acelerar()
                autoElectrico!.porcentajeBateria = autoElectrico!.porcentajeBateria - 10
            }else{
                labelInformation.text = "El automovil electrico tiene que estar encendido para poder acelerar"
            }
           
        default:
            print("Error")
        }
        

    }

}
