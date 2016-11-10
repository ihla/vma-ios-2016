/*:
 [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Closures ako návratové typy funkcií
 */
//:     Funkcia, ktorá vyrába funkcie (aka 'factory method') má návratový typ 'function type':
func makeMultiplier(_ multiplier: Int) -> ((Int) -> Int) {
    let closure = { (input: Int) -> Int in
        return input * multiplier
    }
    return closure
}
let doubler = makeMultiplier(2)
let tripler = makeMultiplier(3)
let quadrupler = makeMultiplier(4)

doubler(2)
tripler(2)
quadrupler(2)
/*:
 ****
 [nasledujúci](@next) | [predchádzajúci](@previous)
 */



