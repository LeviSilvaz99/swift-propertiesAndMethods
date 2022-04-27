import Foundation
//Uma variável preguiçosa é uma propriedade armazenada que é inicializada sob demanda.
//Você só pode ter variáveis preguiçosas dentro de uma struc ou uma class

struct Person {
    var weight: Double
    var height: Double
    
    lazy var BMIIndex: Double = {
        return weight / pow(height, 2)
    }()
}

var jack = Person(weight: 90, height: 1.92)
print(jack.BMIIndex)

// example 2

struct CartaoCredito {
    var id: Int
    var numero: String
    var apelido: String
    var principal: Bool
}

struct Pessoa {
    var nome: String
    var cartoes: [CartaoCredito]
    
    lazy var cartaoPrincipal: CartaoCredito? = {
        return cartoes.first { $0.principal }
    }()
}

var meusCartoes: [CartaoCredito] = [
    .init(id: 1, numero: "1234", apelido: "Cartao 1", principal: false),
    .init(id: 2, numero: "4453", apelido: "Cartao 2", principal: false),
    .init(id: 3, numero: "1233", apelido: "Cartao 3", principal: true),
]

var pessoa1 = Pessoa(
    nome: "Levi",
    cartoes: meusCartoes
)

print(pessoa1)
pessoa1.cartaoPrincipal
print(pessoa1)
