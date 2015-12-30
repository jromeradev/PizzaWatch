//
//  InterfaceController.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Jose on 22/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import WatchKit
import Foundation


class TamController: WKInterfaceController {

    @IBOutlet var tamPizza: WKInterfacePicker!
    
    var tamList: [(String, String)] = [("pequeña","pequeña"), ("mediana", "mediana"), ("grande","grande")]
    var pedido:Pedido?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let tamPicker:[WKPickerItem] = tamList.map {
            let item = WKPickerItem()
            item.caption = $0.0
            item.title = $0.1
            return item
        }
        tamPizza.setItems(tamPicker)
        pedido = context as? Pedido
        pedido?.size = tamList[0].1
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
    

    @IBAction func valueChange(value: Int) {
        pedido?.size = tamList[value].1
    }

    @IBAction func masa() {
         pushControllerWithName("masa", context: pedido)
    }
}
