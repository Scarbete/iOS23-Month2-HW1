import Foundation


class Screen: calcProtocol {
    var math = Math()
    
    var isFinish = false
    
    func doCalc() {
        while isFinish == false {
            print("Введите первое число:")
            let numberOne = Float(readLine()!)
            
            print("Введите второе число:")
            let numberTwo = Float(readLine()!)
            
            print("Введите операцию которую хотите провести:")
            let operation = readLine()
            
            if operation == "" {
                print("Некоректный ввод...")
            }
            else {
                if numberOne == 0 || numberTwo == 0 {
                    print("Операция с значениями 0 не поддерживается")
                }
                else {
                    switch operation {
                        case "+", "-", "*", "/":
                            math.sumNumbers(numberOne: numberOne!, numberTwo: numberTwo!, operation: operation!)
                        default:
                            print("Данная операция не поддерживается...")
                    }
                }
            }
            
            print("Вы хотите продолжить цикл калькулятора?")
            let isFinishQestion = readLine()?.lowercased()
            
            if isFinishQestion != nil {
                if isFinishQestion == "no" || isFinishQestion == "нет" || isFinishQestion == "твои глаза" {
                    isFinish = true
                    print("Программа завершена!")
                    break
                }
            }
        }
    }
}
