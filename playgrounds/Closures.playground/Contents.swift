
//:# Function types
//:     Funkcie implementujúce základné aritmetické operácie:
func add(a: Int, b: Int) -> Int {
    return a + b
}

func subtract(a: Int, b: Int) -> Int {
    return a - b
}

func multiply(a: Int, b: Int) -> Int {
    return a * b
}

func divide(a: Int, b: Int) -> Int {
    return a / b
}
//:> Všetky funkcie vyššie majú rovnaký počet a typ parametrov a typ návratovej hodnoty: (Int, Int) -> Int ~ tzv. 'function type'

//:     deklarácia premennej typu (Int, Int) -> Int
var arithmeticOperation: (Int, Int) -> Int
//:> Funkcie sa chovajú ako objekty, majú typ a môžu byť priradené premenným.
arithmeticOperation = add
//:     Volanie funkcie cez referenciu:
arithmeticOperation(1,2)
//:     A ďaľší príklad volania funkcie cez referenciu:
arithmeticOperation = subtract
arithmeticOperation(4, 2)
//:> Premennej funkčného typu ('function type') možno tiež priradiť "telo" bez pomenovania funkcie, takáto konštrukcia sa volá 'closure'.
arithmeticOperation = { (a: Int, b: Int) -> Int in
    return a*a + b*b
}
arithmeticOperation(3, 5)

/*:
 ****
 [nasledujúci](@next)
 */







