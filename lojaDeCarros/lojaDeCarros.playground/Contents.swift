import UIKit

//Temos uma loja de carros, o nome dela é Venda Certa. Essa loja tem um estoque de quantos carros tem no total na loja. No momento, eles tem 50 carros em estoque.
//Para sair um carro do estoque, esse carro precisa ser vendido, não há outro modo de retirar produtos no estoque. Esse estoque também nunca pode ficar negativo.
//A fábrica falou pra loja que se eles conseguirem vender pelo menos 5 carros de uma só vez, a fábrica vai dar 1 carro de bonificação pra loja.
//A fábrica também falou que, no momento que terminarem de vender todo estoque, a fábrica vai dar 2 carros de bonificação pra loja.
//Teste de mesa:
//tem 50
//se vende 1 fica com 49
//tem 49
//se vende 5 fica com 44
//ganha 1 da fábrica
//tem 45
//vende 44 fica com 1
//ganha 1 da fábrica
//tem 2
//vende 2 fica com 0
//ganha 2 da fábrica
//tem 2

public class Loja {
    private var estoque: Int = 0

    init(estoque: Int) {
        self.estoque = estoque
    }
    
    public func getEstoque () -> Int {
        return self.estoque
    }
    
    private func setEstoque (saldoCarros: Int) {
        self.estoque -= saldoCarros
    }
    
    public func vendas (carroVendido: Int) -> Int {
        var carroBonificacao: Int = 0
        
        
        if estoque > 0 && carroVendido < 5 {
               estoque -= carroVendido
            
                    if estoque == 0 {
                            carroBonificacao = 2
                            estoque = carroBonificacao
                            print("A loja vendeu todos os seus carros e ganhou: \(carroBonificacao) carros de bonificação. Agora a loja tem \(estoque) carros em estoque.")
                            return estoque
                    } else if estoque < 0 {

                            print("Essa venda não pode ser realizada, pois acabaram os carros em estoque.")
                            return 0
                    }
            
               print("A loja vendeu \(carroVendido) carro(s) e agora tem: \(estoque) carros em estoque.")
               return estoque
            
            } else if carroVendido >= 5 {
                carroBonificacao = 1
                estoque = estoque - carroVendido + carroBonificacao
            
                    if estoque < 0 {
                            print("Essa venda não pode ser realizada, pois acabaram os carros em estoque.")
                            return 0
                    }
            
                print("A loja vendeu \(carroVendido) carros e ganhou \(carroBonificacao) carro de bonificação. A loja agora tem: \(estoque) carros em estoque.")
                return estoque
            }
        
         setEstoque(saldoCarros: estoque)
         return estoque
        
    }
}

var lojaVendaCerta = Loja(estoque: 50)
lojaVendaCerta.vendas(carroVendido: 1)
lojaVendaCerta.vendas(carroVendido: 5)
lojaVendaCerta.vendas(carroVendido: 44)
lojaVendaCerta.vendas(carroVendido: 2)
