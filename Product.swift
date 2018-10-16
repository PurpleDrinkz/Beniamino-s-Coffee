//
//  Product.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 15/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Product {
    
    var imagenProductoLista : UIImage
    var imagenProductoDetalle : UIImage
    var descripcion : String
    var quantityCoffee : String
    var precio : String
    
    
    init() {
        imagenProductoLista = UIImage()
        imagenProductoDetalle = UIImage()
        descripcion = ""
        quantityCoffee = ""
        precio = ""
    }
    
    
    init (imagenProductoLista : UIImage, imagenProductoDetalle : UIImage, descripcion : String, quantityCoffee : String, precio : String){
        
        
        self.imagenProductoLista = imagenProductoLista
        self.imagenProductoDetalle = imagenProductoDetalle
        self.descripcion = descripcion
        self.quantityCoffee = quantityCoffee
        self.precio = precio
    }
    
    
}
