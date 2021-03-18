import UIKit

protocol Voador {
    func voar()
}

class Pato: Voador {
    private var energia: Int = 0
    
    func voar() {
        energia -= 5
        print("Perdi \(energia) unidades de energia.")
        print("Estou voando como um pato!")
    }
       
}

class Aviao: Voador {
    private var horasDeVoo: Int = 0
    func voar(){
        horasDeVoo += 13
        print("Ganhei \(horasDeVoo) horas de experiência.")
        print("Estou voando como um avião!")
    }
}

class SuperHomem: Voador {
    private var experiencia: Int = 0
    
    func voar(){
        experiencia += 3
        print("Ganhei \(experiencia) unidades de experiência.")
        print("Estou voando como um campeão!")
    }
}

class TorreDeControle {
    private var arrayVoadores = [Voador] ()
    
    public func voamTodos() {
        for item in arrayVoadores{
            item.voar()
        }
    }
    
    public func adicionarVoador(umVoador: Voador) {
        arrayVoadores.append(umVoador)
    }
    
}


let torre = TorreDeControle()

torre.adicionarVoador(umVoador: Pato())
torre.adicionarVoador(umVoador: Aviao())
torre.adicionarVoador(umVoador: SuperHomem())

torre.voamTodos()
