//
//  IngredientesController.swift
//  PizzaWatch
//
//  Created by Jose on 23/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    
    var ingredienteSeleccionados:Int = 0
    var pedido:Pedido?
    
    @IBOutlet var confirmar: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pedido = context as? Pedido
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
    
    
    func comprobarConfirmar(){
        confirmar.setEnabled(ingredienteSeleccionados != 0)
    }

    
    @IBAction func changeJamon(value: Bool) {
        let ingrediente = "jamon"
        if value {
            ingredienteSeleccionados++
            pedido?.addIngrediente(ingrediente)
        } else {
            ingredienteSeleccionados--
            pedido?.removeIngrediente(ingrediente)
        }
        comprobarConfirmar()
    }
  
    @IBAction func changePepperoni(value: Bool) {
        let ingrediente = "pepperoni"
        if value {
            ingredienteSeleccionados++
            pedido?.addIngrediente(ingrediente)
        } else {
            ingredienteSeleccionados--
            pedido?.removeIngrediente(ingrediente)
        }
        comprobarConfirmar()
    }
    
    @IBAction func changePavo(value: Bool) {
        let ingrediente = "pavo"
        if value {
            ingredienteSeleccionados++
            pedido?.addIngrediente(ingrediente)
        } else {
            ingredienteSeleccionados--
            pedido?.removeIngrediente(ingrediente)
        }
        comprobarConfirmar()
    }
    
    @IBAction func changeSalchicha(value: Bool) {
        let ingrediente = "salchicha"
        if value {
            ingredienteSeleccionados++
            pedido?.addIngrediente(ingrediente)
        } else {
            ingredienteSeleccionados--
            pedido?.removeIngrediente(ingrediente)
        }
        comprobarConfirmar()
    }
    
    @IBAction func changeAceituna(value: Bool) {
        let ingrediente = "aceituna"
        if value {
            ingredienteSeleccionados++
            pedido?.addIngrediente(ingrediente)
        } else {
            ingredienteSeleccionados--
            pedido?.removeIngrediente(ingrediente)
        }
        comprobarConfirmar()
    }
    
    @IBAction func changeCebolla(value: Bool) {
        let ingrediente = "cebolla"
        if value {
            ingredienteSeleccionados++
            pedido?.addIngrediente(ingrediente)
        } else {
            ingredienteSeleccionados--
            pedido?.removeIngrediente(ingrediente)
        }
        comprobarConfirmar()
    }
    
    @IBAction func validar() {
        /*if ingredienteSeleccionados == 0 {
            
            let action = WKAlertAction(title: "OK", style: WKAlertActionStyle.Default, handler: { () -> Void in
                
            })
            
            self.presentAlertControllerWithTitle("Alert", message: "Es necesario seleccionar un ingrediente", preferredStyle: WKAlertControllerStyle.SideBySideButtonsAlert, actions: [ action])
        } else { */
            pushControllerWithName("confirmar", context: pedido)
        //}
    }
}

