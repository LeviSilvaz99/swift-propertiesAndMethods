//willSet executa um pedaço de código logo antes de uma propriedade mudar.
//didSet executa um pedaço de código logo após a propriedade ter sido alterada.

var name: String? {
    willSet{
        print("Name vai mudar agora")
    }
    didSet {
        print("nome alterado")
    }
}

name = "Jack"
