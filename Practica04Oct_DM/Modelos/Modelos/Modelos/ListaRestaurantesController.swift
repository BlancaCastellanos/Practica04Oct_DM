//
//  ViewController.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaRestaurantesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    var restaurantes : [Restaurant] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurant") as! CeldaRestaurantController
        celda.lblNombre.text = restaurantes[indexPath.row].nombre
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destino = segue.destination as! DetallesRestaurantController
        destino.restaurant = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
    }

    
    override func viewDidLoad() {
        self.title = "Restaurantes"
        
        super.viewDidLoad()
        restaurantes.append(Restaurant(nombre: "Hamburguesas Super Duper", direccion: "Calle García #3065", horario: "4 pm a 2 am"))
        restaurantes.append(Restaurant(nombre: "Hot Dogs el Hery", direccion: "Calle Cima #123", horario: "6 pm a 1 am"))
        restaurantes.append(Restaurant(nombre: "El pollo feliz", direccion: "Calle Virreyes #456", horario: "11 am a 5 pm"))

    }


}
