//
//  DetalleProductoController.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleProductoController: UIViewController {
    var producto : Product?
    
    @IBOutlet weak var imgDescripcion: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var txtQuantityCoffee: UITextField!
    @IBOutlet weak var lblPrecio: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        
        imgDescripcion.image = producto?.imagenProductoDetalle
        lblDescripcion.text = producto?.descripcion
        txtQuantityCoffee.text = producto?.quantityCoffee
        lblPrecio.text = producto?.precio
        
    }
    
}
