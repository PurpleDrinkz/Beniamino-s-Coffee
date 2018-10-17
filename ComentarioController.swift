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
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaComentario = tableView.dequeueReusableCell(withIdentifier: "cellComentario") as? CeldaComentario
        
        celdaComentario?.lblNombre.text = comentarios[indexPath.row].nombre
        celdaComentario?.lblComentario.text = comentarios[indexPath.row].comment
        
        return celdaComentario!
    }
    
    @IBOutlet weak var tvComentarios: UITableView!
    let comentarios : [Comentario] =
        [Comentario(nombre: "Pablo Sanchez", comment: "Quiere perico mija?", nombreComentario: "Pablo Sanchez", escribirComentario: "Quiere perrico mija?"),
         Comentario(nombre: "Benjamin Ortega", comment: "OOOOHHH SIIIIII", nombreComentario: "Benjamin Ortega", escribirComentario: "ooohhhsiiisisisisis")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comentarios.count
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 111
    }
    
    override func viewDidLoad() {
        self.title = "Comments"
    }
    
    
    
    
    

    
}
