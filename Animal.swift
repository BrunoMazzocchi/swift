class Animal {
    var name: String
    var walks: [String]

    var animalType: String {return ""}
    func emitSound(){}

    init(name: String) {
        self.name = name 
        self.walks = []
    }
}


class Dog: Animal { 
    override var animalType: String { 
        return "Dog"
    }

    override func emitSound() {
        print("\(name) : Bark")
        
    }
}


class Person { 
    private var name: String 
    private var pets: [Animal]

    init(name: String, pets: [Animal]) {
        self.name = name 
        self.pets = pets
    }


    func getHome() {
        print("\(name): gets home")
        for pet in pets { 
            pet.emitSound()
        }
    }
}

let romina = Person(
    name: "Romina", 
    pets: [
        Dog(name: "Lupo")
    ]
)

romina.getHome()