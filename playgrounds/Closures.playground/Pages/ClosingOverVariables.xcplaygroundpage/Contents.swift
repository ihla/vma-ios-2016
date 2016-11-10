/*:
 [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Closures "uzatvárajú" premenné ('close over')
 */
//:> V tele closure možno použiť premenné, ktoré sú deklarované v kontexte spolu s deklaráciou closure. Táto vlastnosť sa volá 'closing over variables' alebo 'capturing variables'.
//:     Premenná number ako aj closure sú deklarované v globálnom kontexte:
var number = 0
let increment = {
    number += 1
}
//:     Zakaždým keď volám increment() inkrementujem hodnotu number:
increment()
increment()
number
//:     Dokonca, keď zmením hodnotu number a následne volám increment(), inkrementujem posledne priradenú hodnotu!
number = 10
increment()
number
//:>    Closures štandartne uzatvárajú premenné referenciou. Táto vlastnosť sa dá zmeniť a uzatvárať premenné kópiou pomocou tzv. 'capture list'.
//:     Tento príklad ilustruje použitie 'capture list' - [number] v closure. V tele closure sa vytvorí lokálna "nemenná" premenná ('let') nastavená na aktuálnu hodnotu number:
let printNumber = { [number] in
    print("\(number)")
}
printNumber()
number = 12
printNumber()
/*:
 ****
 [nasledujúci](@next) | [predchádzajúci](@previous)
 */



