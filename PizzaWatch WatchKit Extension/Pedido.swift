//
//  Pedido.swift
//  PizzaWatch
//
//  Created by Jose on 23/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import Foundation

class Pedido {
    
    var size:String = ""
    var masa:String = ""
    var cheese:String = ""
    var ingredientes:[String]=[]
    
    func addIngrediente(ingrediente:String){
        ingredientes.append(ingrediente)
    }
    
    func removeIngrediente(ingrediente:String){
        if ingredientes.indexOf(ingrediente) != nil {
            ingredientes.removeAtIndex(ingredientes.indexOf(ingrediente)!)
        }
    }
    
}