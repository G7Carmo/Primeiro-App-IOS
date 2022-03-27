//
//  ViewController.swift
//  Eggplant-brownnie
//
//  Created by Gabriel Alves on 23/03/22.
//

import UIKit
protocol AdicionarRefeicaoDelegate{
    func add(_ refeicao: Refeicao)
}
class ViewController: UIViewController ,UITableViewDataSource{
    
    //MAKR: - LISTA
    let itens = [Itens(nome: "Queijo", calorias: 100.0),
                 Itens(nome: "alface", calorias: 100.0),
                 Itens(nome: "tomate", calorias: 100.0),
                 Itens(nome: "chocolate", calorias: 100.0),
                 Itens(nome: "feijao", calorias: 100.0)]
    
    //MARK: - TABLEVIEWACTIONS
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let item = itens[indexPath.row]
        celula.textLabel?.text = item.nome
        return celula
        
    }
//MARK: - Atributos
    var delegate : AdicionarRefeicaoDelegate?
//    MARK: - IBOutlet
    @IBOutlet var nomeTextField : UITextField?
    @IBOutlet var felicidadeTExtView : UITextField?
    
//    MARK: - IBActions
    @IBAction func adicionar(){
        guard let nomeDaRefeicao = nomeTextField?.text else{
            return
        }
        guard let felicidadeDaRefeicao = felicidadeTExtView?.text,let felicidade  = Int(felicidadeDaRefeicao) else{
            return
        }
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("alimento \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)")
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }


}

