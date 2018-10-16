//
//  ViewController.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 15/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ProductoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let products : [Product] = [Product(imagenProductoLista: UIImage(named: "cafe01")!, imagenProductoDetalle: UIImage(named: "cafe01")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe02")!, imagenProductoDetalle: UIImage(named: "cafe02")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe03")!, imagenProductoDetalle: UIImage(named: "cafe03")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe04")!, imagenProductoDetalle: UIImage(named: "cafe04")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe05")!, imagenProductoDetalle: UIImage(named: "cafe05")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe06")!, imagenProductoDetalle: UIImage(named: "cafe06")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe07")!, imagenProductoDetalle: UIImage(named: "cafe07")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe08")!, imagenProductoDetalle: UIImage(named: "cafe08")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe09")!, imagenProductoDetalle: UIImage(named: "cafe09")!, descripcion: "", quantityCoffee: "", precio: ""),
                                Product(imagenProductoLista: UIImage(named: "cafe10")!, imagenProductoDetalle: UIImage(named: "cafe10")!, descripcion: "", quantityCoffee: "", precio: "")]
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celdaProducto = tableView.dequeueReusableCell(withIdentifier: "cellProducts") as? CeldaProduct
        
        celdaProducto?.imgProduct.image = products[indexPath.row].imagenProductoLista
        
        
        return celdaProducto!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 130
    }
    

    @IBOutlet weak var tvProducts: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Products"
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleProducto"{

            let destino = segue.destination as? DetalleProductoController
            destino?.producto = products[(tvProducts.indexPathForSelectedRow?.row)!]
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

