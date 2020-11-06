import UIKit

struct ModelA {
    let age: Int
}

class ModelB {
    var age: Int = 0
    var name: String = ""
}

protocol AssociatedTypeProtocol {
    associatedtype T
    func testFunction(_ data: T)
}

class ClassA : AssociatedTypeProtocol {
    typealias T = ModelA
    func testFunction(_ data: T) {
        // do something ...
        print(data.age)
    }
}

class ClassB : AssociatedTypeProtocol {
    typealias T = ModelB
    func testFunction(_ data: T) {
        print(data.age)
        print(data.name)
    }
}

let value_modelA = ModelA(age: 1)
ClassA().testFunction(value_modelA)

let value_modelB = ModelB()
value_modelB.age = 10
value_modelB.name = "test"
ClassB().testFunction(value_modelB)

