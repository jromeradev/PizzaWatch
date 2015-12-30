//
//  ConfirmarController.swift
//  PizzaWatch
//
//  Created by Jose on 23/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarController: WKInterfaceController {
    
    @IBOutlet var tam: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    var pedido:Pedido?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pedido = context as? Pedido
        
        tam.setText(pedido?.size)
        masa.setText(pedido?.masa)
        queso.setText(pedido?.cheese)
        ingredientes.setText(pedido?.ingredientes.joinWithSeparator("-"))
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func cancelar() {
        pushControllerWithName("main", context: nil)
    }
}
