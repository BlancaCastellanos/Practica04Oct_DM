//
//  DetallesRestaurantController.swift
//  Modelos
//
//  Created by Alumno on 06/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestaurantController : UIViewController {
    
    var restaurant : Restaurant = Restaurant(nombre: "", direccion: "", horario: "")
    
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    
    
    override func viewDidLoad() {
        
        self.title = restaurant.nombre
        
        lblDireccion.text = restaurant.direccion
        lblHorario.text = restaurant.horario
        
    }
    
}
