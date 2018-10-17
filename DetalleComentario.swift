//
//  DetalleComentario.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleComentario: UIViewController{
    
    var comentario: Comentario?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblComment: UILabel!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtComment: UITextField!
    @IBOutlet weak var lblStars: UILabel!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    @IBOutlet weak var sldStarts: UISlider!
    @IBOutlet weak var btnAddComment: UIButton!
    
    
    override func viewDidLoad() {
        
        lblNombre.text = comentario?.nombre
        lblComment.text = comentario?.comment
        txtNombre.text = comentario?.nombreComentario
        txtComment.text = comentario?.escribirComentario
        
        
        
        
        
        
    }
    
}
