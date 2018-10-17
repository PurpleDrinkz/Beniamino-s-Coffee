//
//  Comentario.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Comentario {
    
    var nombre : String
    var comment : String
    var nombreComentario : String
    var escribirComentario : String
    
    
    
    init () {
        nombre = ""
        comment = ""
        nombreComentario = ""
        escribirComentario = ""
        
    }
    
    init (nombre : String, comment : String, nombreComentario : String, escribirComentario : String){
        self.nombre = nombre
        self.comment = comment
        self.nombreComentario = nombreComentario
        self.escribirComentario = escribirComentario
        
    }
    
}
