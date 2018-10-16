//
//  ViewController.swift
//  BeniaminosCoffee
//
//  Created by Alumno on 15/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ProductoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let products : [Product] = [Product(imagenProductoLista: UIImage(named: "cafe01")!, imagenProductoDetalle: UIImage(named: "cafe01")!, descripcion: "Drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from traditionally brewed coffee.", quantityCoffee: "1", precio: "$2.50"),
                                Product(imagenProductoLista: UIImage(named: "cafe02")!, imagenProductoDetalle: UIImage(named: "cafe02")!, descripcion: "Beverage made by using an espresso machine to make an Italian-style coffee – short black (single or double dose or shot) with much more water (generally twice as much), resulting in a larger coffee, a lungo.", quantityCoffee: "1", precio: "$2.30"),
                                
                                Product(imagenProductoLista: UIImage(named: "cafe03")!, imagenProductoDetalle: UIImage(named: "cafe03")!, descripcion: "Espresso-based coffee drink that originated in Italy, and is traditionally prepared with double espresso and steamed milk foam.", quantityCoffee: "1", precio: "$5.30"),
                                Product(imagenProductoLista: UIImage(named: "cafe04")!, imagenProductoDetalle: UIImage(named: "cafe04")!, descripcion: "Traditionally been used for the combination of espresso and milk.", quantityCoffee: "1", precio: "$3.50"),
                                Product(imagenProductoLista: UIImage(named: "cafe05")!, imagenProductoDetalle: UIImage(named: "cafe05")!, descripcion: "The moka pot is a stove-top or electric coffee maker that brews coffee by passing boiling water pressurized by steam through ground coffee.", quantityCoffee: "1", precio: "$3.00"),
                                Product(imagenProductoLista: UIImage(named: "cafe06")!, imagenProductoDetalle: UIImage(named: "cafe06")!, descripcion: "Coffee brewed by expressing or forcing a small amount of nearly boiling water under pressure through finely ground coffee beans. ", quantityCoffee: "1", precio: "$3.70"),
                                Product(imagenProductoLista: UIImage(named: "cafe07")!, imagenProductoDetalle: UIImage(named: "cafe07")!, descripcion: "An espresso coffee drink with a small amount of milk, usually foamed. In Italian, macchiato means stained or spotted so the literal translation of caffè macchiato is stained coffee, or coffee with a spot of milk.", quantityCoffee: "1", precio: "$2.50"),
                                Product(imagenProductoLista: UIImage(named: "cafe08")!, imagenProductoDetalle: UIImage(named: "cafe08")!, descripcion: "Heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener. Hot chocolate may be topped with whipped cream.", quantityCoffee: "1", precio: "$4.50"),
                                Product(imagenProductoLista: UIImage(named: "cafe09")!, imagenProductoDetalle: UIImage(named: "cafe09")!, descripcion: "is a flavoured tea beverage made by brewing black tea with a mixture of aromatic Indian spices and herbs. Originating in the Indian Subcontinent, the beverage has gained worldwide popularity, becoming a feature in many coffee and tea houses.", quantityCoffee: "1", precio: "$2.50"),
                                Product(imagenProductoLista: UIImage(named: "cafe10")!, imagenProductoDetalle: UIImage(named: "cafe10")!, descripcion: "This tea is the most popular drink around the world, after water, and holds resonance in many homes and in public life, whether for its health and thereputic qualities or its symbolism of tradition and hospitality.", quantityCoffee: "1", precio: "$3.50")]
    
    
    
    
    
    
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

