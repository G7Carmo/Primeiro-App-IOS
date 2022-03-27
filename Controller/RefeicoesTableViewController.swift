//
//  RefeicoesTableViewController.swift
//  Eggplant-brownnie
//
//  Created by Gabriel Alves on 27/03/22.
//

import Foundation
import UIKit

class RefeicoesTableViewController : UITableViewController{
    
    let refeicoes = [Refeicao(nome: "Macarrao", felicidade: 5),
                     Refeicao(nome: "lasanha", felicidade: 4),
                     Refeicao(nome: "pizza", felicidade: 3),
                     Refeicao(nome: "estrogonof", felicidade: 1),
                     Refeicao(nome: "sushi", felicidade: 5),
                     Refeicao(nome: "batata frita", felicidade: 2),
                     Refeicao(nome: "feijoada", felicidade: 2),
                     Refeicao(nome: "bolo de festa", felicidade: 5)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        return celula
    }
    
}
