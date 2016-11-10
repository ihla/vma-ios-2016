/*:
 [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Closures ako parametre funkcií
 */
import Foundation
//:     Closure odovzdaná parametrom do funkcie:
func iterate(_ times: Int, with closure: () -> Void) {
    for _ in 0..<times {
        closure()
    }
}
//:     Volanie funkcie s closure:
iterate(5, with: { print("Nazdar")})
//:     Ak je closure posledným parametrom funkcie, dá sa odovzdať mimo okrúhlych zátvoriek:
iterate(5) {
    print("Hurá")
}
//:     Closure s parametrami a návratovou hodnotou odovzdaná parametrom do funkcie:
func iterate(_ times: Int, arg1: Int, arg2: Int, initialValue: Int, withBinaryOperation operation: (Int, Int) -> Int) -> Int {
    var result = initialValue;
    for _ in 0..<times {
        result += operation(arg1, arg2)
    }
    return result
}
let tenTimesSum = iterate(10, arg1: 1, arg2: 1, initialValue: 0) { $0 + $1 }
tenTimesSum
//:     Keďže operátor '+' vyhovuje typu closure, možno odovzdať do funkcie ako je v príklade nižšie:
let tenTimesAdditions = iterate(10, arg1: 5, arg2: 6, initialValue: 0, withBinaryOperation: +)
tenTimesAdditions
//:> Mnohé funkcie z Swift standard library a z iOS SDK majú closures ako parametre, napr. filter() v triede Array:
let evenNumbersUpToTen = Array(1...10).filter { $0 % 2 == 0 }
evenNumbersUpToTen
/*:
 ****
 [nasledujúci](@next) | [predchádzajúci](@previous)
 */



