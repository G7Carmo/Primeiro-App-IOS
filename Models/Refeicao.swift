//
//  Refeicao.swift
//  Eggplant-brownnie
//
//  Created by Gabriel Alves on 23/03/22.
//

import UIKit

class Refeicao: NSObject {
    
    var nome : String
    var felicidade : Int
    var items : Array<Itens> = []
    
    init(nome : String,felicidade:Int){
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        for item in items{
            total += item.calorias
        }
        return total
    }
    
}
