import UIKit

enum XXBError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeed: Int)
    case outOfStack
}

func canThrowErrors(type: Int) throws -> String? {
    if type == 1 {
        throw XXBError.invalidSelection
    }
    if type == 2 {
        throw XXBError.outOfStack
    }
    if type == 3 {
        throw XXBError.insufficientFunds(coinsNeed: 100)
    }
    return "success"
}



do {
    let data = try canThrowErrors(type: 3)//执行这个函数 这个函数可能抛出异常
    print("after execute canThrowErrors")
    if data != nil {
        print("Error test data:\(String(describing: data))")
    }
} catch XXBError.outOfStack {
    print("outOfStack")
} catch XXBError.invalidSelection {
    print("invalidSelection")
} catch XXBError.insufficientFunds(let coinsNeed) {      //类似于Java的catch(Exception ex)
    print("XXBError.insufficientFunds(coinsNeed:\(coinsNeed))")
}
