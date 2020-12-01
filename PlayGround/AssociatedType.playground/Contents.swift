import UIKit

struct ModelA {
    let age: Int
}

class ModelB {
    var age: Int = 0
    var name: String = ""
}

class ModelC: ModelB {
}

protocol AssociatedTypeProtocol {
    associatedtype T
    func testFunction(_ data: T)
}

extension AssociatedTypeProtocol where T : ModelB  {
    func testFunctionExtension1(_ data: T) {
        print("testFunctionExtension AssociatedTypeProtocol 1")
    }
}


extension AssociatedTypeProtocol where T == ModelB  {
    func testFunctionExtension2(_ data: T) {
        print("testFunctionExtension AssociatedTypeProtocol 2")
    }
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

class ClassC : AssociatedTypeProtocol {
    typealias T = ModelC
    func testFunction(_ data: T) {
        print(data.age)
        print(data.name)
    }
}

let valueModelA = ModelA(age: 1)
let valueClassA = ClassA()
valueClassA.testFunction(valueModelA)

let valueModelB = ModelB()
valueModelB.age = 10
valueModelB.name = "test"
let valueClassB = ClassB()
valueClassB.testFunction(valueModelB)
valueClassB.testFunctionExtension1(valueModelB)
valueClassB.testFunctionExtension2(valueModelB)

let valueModelC = ModelC()
valueModelC.age = 10
valueModelC.name = "test"
let valueClassC = ClassC()
valueClassC.testFunction(valueModelC)
valueClassC.testFunctionExtension1(valueModelC)
valueClassC.testFunctionExtension2(valueModelC)

