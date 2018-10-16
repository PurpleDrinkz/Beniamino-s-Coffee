//
//  DetalleComentarioController.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ComentarioController : UIViewController , UITableViewDelegate, UITableViewDataSource
{
    let comentarios : [Comentario] =
        [Comentario(nombre: "Pablo Sanchez", comment: "A huevo a la verga me pelan la verga todos quiere periquear mija?", estrellas: 3),
         Comentario(nombre: "Benjamin Ortega", comment: "OOOOHHH SIIIIIIIIII", estrellas: 5)]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comentarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 111
    }
    
    override func viewDidLoad() {
        self.title = "Comments"
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino2 = segue.destination as! DetalleComentario
    }
}
