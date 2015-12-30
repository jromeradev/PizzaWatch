//
//  MasaController.swift
//  PizzaWatch
//
//  Created by Jose on 23/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    
    @IBOutlet var masaPizza: WKInterfacePicker!
    
    var infoList: [(String, String)] = [("delgada","delgada"), ("crujiente", "crujiente"), ("gruesa","gruesa")]
    
    var pedido:Pedido?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        super.awakeWithContext(context)
        let elemPicker:[WKPickerItem] = infoList.map {
            let item = WKPickerItem()
            item.caption = $0.0
            item.title = $0.1
            return item
        }
        masaPizza.setItems(elemPicker)
        pedido = context as? Pedido
        pedido?.masa = infoList[0].1
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
    
    @IBAction func queso() {
        pushControllerWithName("queso", context: pedido)
    }
}
