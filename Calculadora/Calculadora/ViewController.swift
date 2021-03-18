//
//  ViewController.swift
//  Calculadora
//
//  Created by Rafael Jose on 31/08/20.
//  Copyright © 2020 Rafael Jose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtResultado: UITextField!
    var valorAntecessor: Double = 0
    var operacao: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtResultado.text = "0"        
    }
    
    @IBAction func btnZero(_ sender: Any) {
        concatenarNumero(valor: "0")
    }
    
    
    @IBAction func btnUm(_ sender: Any) {
       concatenarNumero(valor: "1")
    }
    
    
    @IBAction func btnDois(_ sender: Any) {
       concatenarNumero(valor: "2")
    }
    
    
    @IBAction func btnTres(_ sender: Any) {
       concatenarNumero(valor: "3")
    }
    
    
    @IBAction func btnQuatro(_ sender: Any) {
       concatenarNumero(valor: "4")
    }
    
    
    @IBAction func btnCinco(_ sender: Any) {
       concatenarNumero(valor: "5")
    }
    
    
    @IBAction func btnSeis(_ sender: Any) {
       concatenarNumero(valor: "6")
    }
    
    
    @IBAction func btnSete(_ sender: Any) {
       concatenarNumero(valor: "7")
    }
    
    @IBAction func btnOito(_ sender: Any) {
       concatenarNumero(valor: "8")
    }
    
    
    @IBAction func btnNove(_ sender: Any) {
       concatenarNumero(valor: "9")
    }
    
    
    @IBAction func btnIgual(_ sender: Any) {
        var novoValor: String = "0"
        
        if txtResultado.text != nil {
            novoValor = txtResultado.text!
        }
        
        if operacao == "+" {
                     valorAntecessor = valorAntecessor + Double(novoValor)!
                      txtResultado.text = "0"
                  }
        else if operacao == "-" {
           valorAntecessor = valorAntecessor - Double(novoValor)!
            txtResultado.text = "0"
        } else if operacao == "x" {
           valorAntecessor = valorAntecessor * Double(novoValor)!
            txtResultado.text = "0"
        }  else if operacao == "/" {
                  valorAntecessor = valorAntecessor / Double(novoValor)!
                   txtResultado.text = "0"
               }
        
        txtResultado.text = "\(valorAntecessor)"
        operacao = "="
        valorAntecessor = 0
    }
    
    
    @IBAction func btnDivisao(_ sender: Any) {
        calcular(operador: "/")
    }
    
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        calcular(operador: "x")
    }
    
    
    @IBAction func btnSubtrair(_ sender: Any) {
        calcular(operador: "-")
    }
    
    
    @IBAction func btnSomar(_ sender: Any) {
        calcular(operador: "+")
    }
    
    @IBAction func btnResultado(_ sender: Any) {
    }
    
    func concatenarNumero(valor: String) {
        if operacao == "=" {
            txtResultado.text = "\(valor)"
            operacao = ""
            valorAntecessor = 0
        } else {
            let valor: Int = Int("\(txtResultado.text!)\(valor)")!
            txtResultado.text = "\(valor)"
        }
    }
    
    func  calcular(operador: String) {
        var novoValor: String = "0"
         
         if txtResultado.text != nil {
             novoValor = txtResultado.text!
         }
         
         // Verificando se a operacao foi preenchida
         if operacao != "" && operacao != "=" {
             if operador == "+" {
                valorAntecessor = valorAntecessor + Double(novoValor)!
                 //txtResultado.text = "0"
                 operacao = "+"
             } else   if operador == "-" {
                           valorAntecessor = valorAntecessor - Double(novoValor)!
                            txtResultado.text = "0"
                            operacao = "-"
                        }
            else   if operador == "x" {
               valorAntecessor = valorAntecessor * Double(novoValor)!
                txtResultado.text = "0"
                operacao = "x"
             } else {
                valorAntecessor = valorAntecessor / Double(novoValor)!
                            txtResultado.text = "0"
                            operacao = "/"
            }
            
         } else {
        
         valorAntecessor = Double(novoValor)!
         operacao = operador
         //txtResultado.text = "0"
         }
    }
    
}

