//
//  Itens.swift
//  Eggplant-brownnie
//
//  Created by Gabriel Alves on 23/03/22.
//

import UIKit

class Itens: NSObject {
    var nome : String
    var calorias : Double
    init(nome :String,calorias:Double){
        self.nome = nome
        self.calorias = calorias
    }
}
