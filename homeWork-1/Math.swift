import Foundation


class Math {
    
    func sumNumbers(numberOne: Float, numberTwo: Float, operation: String) {
        var result: Float
        
        switch operation {
            case "+":
                result = numberOne + numberTwo
                break
            case "-":
                result = numberOne - numberTwo
                break
            case "*":
                result = numberOne * numberTwo
                break
            case "/":
                result = numberOne / numberTwo
                break
            default:
                result = 0
                break
        }
        
        print("Результат: \(numberOne) \(operation) \(numberTwo) = \(result)")
    }
}
