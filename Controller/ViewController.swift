//
//  ViewController.swift
//  Eggplant-brownnie
//
//  Created by Gabriel Alves on 23/03/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nomeTextField : UITextField?
    @IBOutlet var felicidadeTExtView : UITextField?
    @IBAction func adicionar(){
        if let nomeDaRefeicao = nomeTextField?.text,
            let felicidadeDaRefeicao = felicidadeTExtView?.text {
            let nome = nomeDaRefeicao
            if let felicidade = Int(felicidadeDaRefeicao){
                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
                print("alimento \(refeicao.nome) e fiquei com felicidade \(refeicao.felicidade)")
            }else{
                print("erro ao tentar criar refeicao")
            }
            
        }
    }


}

