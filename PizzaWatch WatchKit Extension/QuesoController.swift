//
//  QuesoController.swift
//  PizzaWatch
//
//  Created by Jose on 23/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    
    
    @IBOutlet var quesoPizza: WKInterfacePicker!
    
    var infoList: [(String, String)] = [("mozarela","mozarela"), ("cheddar", "cheddar"), ("parmesano","parmesano"), ("sin queso","sin queso")]
    
    var pedido:Pedido?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        super.awakeWithContext(context)
        super.awakeWithContext(context)
        let elemPicker:[WKPickerItem] = infoList.map {
            let item = WKPickerItem()
            item.caption = $0.0
            item.title = $0.1
            return item
        }
        quesoPizza.setItems(elemPicker)
        pedido = context as? Pedido
        pedido?.cheese = infoList[0].1
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
        pedido?.size = infoList[value].1
    }
    
    @IBAction func ingredientes() {
        pushControllerWithName("ingredientes", context: pedido)
    }
}

