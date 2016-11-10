/*:
 [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Closures (syntax)
 */
import Foundation
//:     Syntax closure s dvomi parametrami a s návratovou hodnotou:
var addSquares = { (a: Int, b: Int) -> Int in
    return a*a + b*b
}
addSquares(4, 8)
//:     Closure bez parametra a so žiadnou návratovou hodnotou:
let sayHello: () -> Void = {
    print("Hello")
}
sayHello()
//:     S použitím 'type inference':
let greetJohn = {
    print("Hi John")
}
greetJohn()
//:    S návratovou hodnotou, stále funguje 'type inference':
let giveFive = {
    return 5
}
giveFive()
//:    S jedným parametrom:
let greetSomeone = { (who: String) in
    print("Good morning \(who)!")
}
greetSomeone("Peter")
//:    S dvomi parametrami:
let sayGreetingToSomeone: (String, String) -> Void = { (greeting, who) in
    print("\(greeting) \(who)!")
}
sayGreetingToSomeone("Ahoj", "Michal")
//:    S použitím 'shorthand argument names':
let magnitude = {
    sqrt($0*$0 + $1*$1)
}
magnitude(1.5, 4.7)
/*:
 ****
 [nasledujúci](@next) | [predchádzajúci](@previous)
 */



