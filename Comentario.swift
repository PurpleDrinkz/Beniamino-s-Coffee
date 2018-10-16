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
    var estrellas : Int
    init () {
        nombre = ""
        comment = ""
        estrellas = 0
        
    }
    
    init (nombre : String, comment : String, estrellas : Int){
        self.nombre = nombre
        self.comment = comment
        self.estrellas = estrellas
        
    }
    
}
