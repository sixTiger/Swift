import UIKit

let ClosuresStudy1 = {
    print("Swift 闭包实例。")
}
ClosuresStudy1()


let ClosuresStudy2 = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let resultClosuresStudy2 = ClosuresStudy2(200, 20)
print (resultClosuresStudy2)



//func makeIncrementor(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementor() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementor
//}
//
//let incrementByTen = makeIncrementor(forIncrement: 10)
//
//// 返回的值为10
//incrementByTen()
//
//// 返回的值为20
//incrementByTen()
//
//// 返回的值为30
//incrementByTen()
//
//// 返回的值为40
//incrementByTen()
//
//let alsoIncrementByTen = incrementByTen
//
//// 返回的值也为50
//print(alsoIncrementByTen())


let ClosuresStudy3 = {(val1: Int, val2: Int) -> Int in
    3;
}
let resultClosuresStudy3 = ClosuresStudy3(200, 20)
print (resultClosuresStudy3)


let names = ["AT", "AE", "D", "S", "BE"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sorted(by: backwards)
print(reversed)

reversed = names.sorted(by: { (s1 : String, s2 : String) -> Bool in
    return s1 > s2
})
print(reversed)

reversed = names.sorted() {(s1 : String, s2 : String) -> Bool in
    return s1 > s2
}

print(names.sorted() {(s1 : String, s2 : String) -> Bool in
    return s1 > s2
}.count)
print(reversed)

reversed = names.sorted {(s1 : String, s2 : String) -> Bool in
    return s1 > s2
}
print(reversed)

//尾随闭包

reversed = names.sorted(by: >)
print(reversed)

reversed = names.sorted(by: { return $0 > $1 })
print(reversed)

reversed = names.sorted() { $0 > $1 }
print(reversed)

reversed = names.sorted { $0 > $1 }
print(reversed)

