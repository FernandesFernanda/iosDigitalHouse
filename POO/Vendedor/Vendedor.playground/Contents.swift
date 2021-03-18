import UIKit

// Um vendedor de loja e possui nome, idade e cpf, saldo em conta
//    - vende em sua loja ternos, vestidos e bonés
//    - definir um método vender (quantidadeDePecas: Int, tipoDePeca: String).
// Cada terno custa 400 reais,
//    - caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
// Cada vestido custa 900 reais,
//   - caso o cliente compre 5 vestidos ele ganha um véu de noiva (que custa 250 reais) de brinde.
// Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
// Encapsule todos os métodos necessários.

public class Vendedor {
    public var nome: String
    public var idade: Int
    public var cpf: String
    private var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double){
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    public func getSaldoEmConta () -> Double {
        return self.saldoEmConta
    }
    
    private func setSaldoEmConta (saldo: Double) {
        self.saldoEmConta += saldo
    }
    
    public func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        var valorVenda: Int = 0
        let terno: Int = 400
        let vestido: Int = 900
        let bone: Int = 50
        let veu: Int = 250
        
        if tipoDePeca == "terno" {
            if quantidadeDePecas >= 3 {
                valorVenda = (terno - 50) * quantidadeDePecas
                print("Você deu \(quantidadeDePecas * 50) reais de desconto para o cliente. O valor final de sua venda é: \(valorVenda) reais.")
            } else {
                valorVenda = terno * quantidadeDePecas
                print("O valor de sua venda é: \(valorVenda) reais.")
            }
            
        } else if tipoDePeca == "vestido" {
            if quantidadeDePecas >= 5 {
               
                valorVenda = (vestido * quantidadeDePecas) - veu
                print("Você deu como brinde um véu de noiva no valor de R$ 250. O valor final de sua venda é: \(valorVenda) reais.")
            } else {
                valorVenda = vestido * quantidadeDePecas
                print("O valor final de sua venda é: \(valorVenda) reais.")
            }
            
        } else if tipoDePeca == "boné" {
            valorVenda = quantidadeDePecas * bone
            let quantidadeDeBrindes = quantidadeDePecas / 3
            
            if(quantidadeDeBrindes > 0) {
                valorVenda = valorVenda - (bone * quantidadeDeBrindes)
                print("Você deu \(quantidadeDeBrindes) bonés de brinde para o cliente. O valor final de sua venda é: \(valorVenda) reais.")
            } else {
                print("Não temos o item que você deseja comprar.")
            }
    }
        setSaldoEmConta(saldo: Double(valorVenda))
    }
    
}

var vendasJoao = Vendedor(nome: "João", idade: 38, cpf: "906098686096", saldoEmConta: 0)
vendasJoao.vender(quantidadeDePecas: 7, tipoDePeca: "boné")
vendasJoao.vender(quantidadeDePecas: 3, tipoDePeca: "terno")
vendasJoao.vender(quantidadeDePecas: 5, tipoDePeca: "vestido")



