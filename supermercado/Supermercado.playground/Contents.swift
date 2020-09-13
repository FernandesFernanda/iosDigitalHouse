import UIKit

// Supermercado é Superclass
class Supermercado {
    var nome: String
    var endereco: String
    var cnpj: Int
    var telefone: Int
    var email: String
    var temEstacionamento: Bool
    
    init(nome: String, endereco: String, cnpj: Int, telefone: Int, email: String, temEstacionamento: Bool) {
        self.nome = nome
        self.endereco = endereco
        self.cnpj = cnpj
        self.telefone = telefone
        self.email = email
        self.temEstacionamento = temEstacionamento
    }
    
    func reporEstoque () {
        print("Estoque reposto.")
    }
    
    func fazerPromocao () {
        print("Promoção feita.")
    }
    
    func fecharCaixa () {
        print("Caixa fechado.")
    }
    
    func fazerManutencao () {
        print("Manutenção feita.")
    }
    
    func dedetizar () {
        print("Dedetização feita.")
    }
    
    func treinarFuncionarios () {
        print("Treinamento de funcionários realizado.")
    }
    
    func pintarFachada () {
        print("Fachada nova em folha.")
    }
    
}

// Franquia é Subclass da Superclass Supermercado
class Franquia: Supermercado {
    var entregaPropria: Bool
    
    init(nome: String, endereco: String, cnpj: Int, telefone: Int, email: String, temEstacionamento: Bool, entregaPropria: Bool) {
        self.entregaPropria = entregaPropria
        super.init(nome: nome, endereco: endereco, cnpj: cnpj, telefone: telefone, email: email, temEstacionamento: temEstacionamento)
    }
    
    func repassarLucroParaSede () {
        print("Lucro repassado.")
    }

}

// Declara novo objeto da SuperClass Supermercado

var centralDaGloria = Supermercado(nome: "Central da Glória", endereco: "Rua da Glória, 876", cnpj: 06106070891, telefone: 69159158986, email: "centraldagloria@gmail.com", temEstacionamento: true)

var centralDaLapa = Supermercado(nome: "Central da Lapa", endereco: "Rua da Lapa, 498", cnpj: 17060967070, telefone: 159851985198, email: "centraldalapa@gmail.com", temEstacionamento: false)

// Print SuperClass Supermercado

print("O supermercado \(centralDaGloria.nome), localizado na \(centralDaGloria.endereco), cnpj \(centralDaGloria.cnpj) precisa de uma reforma na fachada.")
centralDaGloria.pintarFachada()

print("\n-------------------------\n")

print("O supermercado \(centralDaLapa.nome), localizado na \(centralDaLapa.endereco), cnpj \(centralDaLapa.cnpj) precisa de uma dedetização.")
centralDaGloria.dedetizar()


print("\n-------------------------\n")


// Declara novo objeto da SubClass Franquia da SuperClass Supermercado
var lapinhaExpress = Franquia(nome: "Lapinha Express", endereco: "Rua da Lapinha, 195", cnpj: 19819859858, telefone: 5985959097, email: "lapinha.express@gmail.com", temEstacionamento: true, entregaPropria: true)


// Print SubClass Franquia da SuperClass Supermercado
print("O supermercado \(lapinhaExpress.nome), localizado na \(lapinhaExpress.endereco), cnpj \(lapinhaExpress.cnpj) precisa de uma reforma na fachada.")
lapinhaExpress.pintarFachada()

print("\n-------------------------\n")

print("O supermercado \(lapinhaExpress.nome), localizado na \(lapinhaExpress.endereco), cnpj \(lapinhaExpress.cnpj) precisa repassar seu lucro para a sede \(centralDaLapa.nome).")
lapinhaExpress.repassarLucroParaSede()

print("\n-------------------------\n")

class Funcionario {
    var nomeFuncionario: String
    var cpfFuncionario: Int
    var telefoneFuncionario: Int
    var emailFuncionario: String
    var enderecoFuncionario: String
    var lojaOndeTrabalha: String
    var cargoFuncionario: String
    
    init(nomeFuncionario: String, cpfFuncionario: Int, telefoneFuncionario: Int, emailFuncionario: String, enderecoFuncionario: String, lojaOndeTrabalha: String, cargoFuncionario: String) {
        self.nomeFuncionario = nomeFuncionario
        self.cpfFuncionario = cpfFuncionario
        self.telefoneFuncionario = telefoneFuncionario
        self.emailFuncionario = emailFuncionario
        self.enderecoFuncionario = enderecoFuncionario
        self.lojaOndeTrabalha = lojaOndeTrabalha
        self.cargoFuncionario = cargoFuncionario
    }
    
    func verificarValidadeProdutos () {
        print("Produtos estão na validade.")
    }
    
    func contactarFornecedores () {
        print("Fornecedores contactados.")
    }
    
    func organizarGondolas () {
        print("Gôndolas organizadas.")
    }
    
    func verificarQuebras () {
        print("Produtos avariados foram retirados das Gôndolas.")
    }
    
    func realizarInventario () {
        print("Inventário realizado.")
    }
}


// Terceirizado é Subclass da SuperClass Funcionário

class Terceirizado: Funcionario {
    var vencimentoContrato: String
    var cnpjTerceirizado: Int
    
    init (nomeFuncionario: String, cpfFuncionario: Int, telefoneFuncionario: Int, emailFuncionario: String, enderecoFuncionario: String, lojaOndeTrabalha: String, cargoFuncionario: String, vencimentoContrato: String, cnpjTerceirizado: Int) {
        self.vencimentoContrato = vencimentoContrato
        self.cnpjTerceirizado = cnpjTerceirizado
        super.init(nomeFuncionario: nomeFuncionario, cpfFuncionario: cpfFuncionario, telefoneFuncionario: telefoneFuncionario, emailFuncionario: emailFuncionario, enderecoFuncionario: enderecoFuncionario, lojaOndeTrabalha: lojaOndeTrabalha, cargoFuncionario: cargoFuncionario)
    }
}

// Declara novo objeto da SuperClass Funcionário

var joaoDaSilva = Funcionario(nomeFuncionario: "João da Silva", cpfFuncionario: 2581908610, telefoneFuncionario: 9070170706, emailFuncionario: "joao.da.silva@gmail.com", enderecoFuncionario: "Rua das Gaivotas, 376", lojaOndeTrabalha: "Pinheiral", cargoFuncionario: "Caixa")

// Print SuperClass Funcionário

print("\(joaoDaSilva.nomeFuncionario), cujo cpf é \(joaoDaSilva.cpfFuncionario), telefone \(joaoDaSilva.telefoneFuncionario), e email \(joaoDaSilva.emailFuncionario), mora na \(joaoDaSilva.enderecoFuncionario) e trabalha na loja \(joaoDaSilva.lojaOndeTrabalha), no cargo de \(joaoDaSilva.cargoFuncionario).")

print("\n-------------------------\n")

// Declara novo objeto da SubClass Terceirizado da SuperClass Funcionário
var mariaAntoniaGoncalves = Terceirizado(nomeFuncionario: "Maria Antônia Gonçalves", cpfFuncionario: 370306060691, telefoneFuncionario: 9169159459, emailFuncionario: "maria.gonçalves@gmail.com", enderecoFuncionario: "Rua da Canoa, 178", lojaOndeTrabalha: "Mangueiral", cargoFuncionario: "Atendente", vencimentoContrato: "07/10/2020", cnpjTerceirizado: 07158915959169)

// Print Subclass Terceirizado da SuperClass Funcionário
print("\(mariaAntoniaGoncalves.nomeFuncionario), cujo cpf é \(mariaAntoniaGoncalves.cpfFuncionario), telefone \(mariaAntoniaGoncalves.telefoneFuncionario), e email \(mariaAntoniaGoncalves.emailFuncionario), mora na \(mariaAntoniaGoncalves.enderecoFuncionario) e trabalha na loja \(mariaAntoniaGoncalves.lojaOndeTrabalha), no cargo de \(mariaAntoniaGoncalves.cargoFuncionario). Seu contrato como terceirizada vence \(mariaAntoniaGoncalves.vencimentoContrato) e seu cnpj como contratada pj é \(mariaAntoniaGoncalves.cnpjTerceirizado).")

print("\n-------------------------\n")

// Produto é uma SuperClass
class Produto {
    var nomeProduto: String
    var marca: String
    var preco: Double
    var emPromocao: Bool
    var ePerecivel: Bool
    var necessitaRefrigeracao: Bool
    
    init (nomeProduto: String, marca: String, preco: Double, emPromocao: Bool, ePerecivel: Bool, necessitaRefrigeracao: Bool) {
        self.nomeProduto = nomeProduto
        self.marca = marca
        self.preco = preco
        self.emPromocao = emPromocao
        self.ePerecivel = ePerecivel
        self.necessitaRefrigeracao = necessitaRefrigeracao
    }
    
    func destacar () {
        print("Produto em destaque na gôndola principal.")
    }
    
    func descartar () {
        print("Produto sofreu quebra e foi enviado à central de descarte.")
    }
    
}

// Laticínio é uma Subclass da SuperClass Produto

class Laticinio: Produto {
    var origemQualAnimal: String
    
    init(nomeProduto: String, marca: String, preco: Double, emPromocao: Bool, ePerecivel: Bool, necessitaRefrigeracao: Bool, origemQualAnimal: String) {
        self.origemQualAnimal = origemQualAnimal
        super.init(nomeProduto: nomeProduto, marca: marca, preco: preco, emPromocao: emPromocao, ePerecivel: ePerecivel, necessitaRefrigeracao: necessitaRefrigeracao)
    }
    
    func colocarEmFreezerEspecial () {
        print("Produto colocado em freezer especial.")
    }
}

// Declara novo objeto da SuperClass Produto
var sucoDeLaranja = Produto(nomeProduto: "Suco de Laranja Laranjal", marca: "Laranja do Pé", preco: 6.65, emPromocao: false, ePerecivel: true, necessitaRefrigeracao: true)

// Print SuperClass Produto
print("O produto \(sucoDeLaranja.nomeProduto) da marca \(sucoDeLaranja.marca) custa \(sucoDeLaranja.preco).")

print("\n-------------------------\n")

// Declara novo Objeto da Subclass Laticínio da SuperClass Produto
var queijoDeCabra = Laticinio(nomeProduto: "Queijo Gourmet", marca: "Cabral", preco: 7.68, emPromocao: true, ePerecivel: true, necessitaRefrigeracao: true, origemQualAnimal: "cabra")

var queijoMinas = Laticinio(nomeProduto: "Queijo de Minas", marca: "Vaquinha do Interior", preco: 5.74, emPromocao: true, ePerecivel: true, necessitaRefrigeracao: true, origemQualAnimal: "vaca")


// Print a Subclass Laticínio da SuperClass Produto
print("O \(queijoDeCabra.nomeProduto) da marca \(queijoDeCabra.marca) custa \(queijoDeCabra.preco) e é feito de leite de \(queijoDeCabra.origemQualAnimal).")

print("\n-------------------------\n")

print("O \(queijoMinas.nomeProduto) da marca \(queijoMinas.marca) custa \(queijoMinas.preco) e é feito de leite de \(queijoMinas.origemQualAnimal).")

print("\n-------------------------\n")
