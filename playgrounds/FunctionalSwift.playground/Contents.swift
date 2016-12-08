import Foundation

//:## Klasické riešenia typických operácií nad poľom:
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//:### 1. konverzia typu elementov poľa
var strArray = [String]()
for num in numbers {
    strArray.append(String(num))
}
strArray
//:### 2. filtrácia poľa
var evenNums = [Int]()
for num in numbers {
    if num % 2 == 0 {
        evenNums.append(num)
    }
}
evenNums
//:### 3. redukcia poľa
var accumulator = 0
for num in numbers {
    accumulator += num
}
accumulator
//:> V každom riešení vyššie sa opakuje tá istá konštrukcia - iterovanie cez pole. Operácie sa dajú zovšeobecniť tak, aby sme nemuseli dokola programovať tú istú konštrukciu ale len to, čo sa mení - telo vo for-loop.

//:## Funkcionálne riešenia operácií nad poľom: map(), filter(), reduce()
//:### ad 1. map()
let stringNumbers = numbers.map { "\($0)" }
stringNumbers
// alebo menej 'swifty' zápis:
numbers.map({ num in "\(num)" })
// alebo 'super-swifty' zápis:
numbers.map(String.init)
//a iný 'matematický' príklad
let square = numbers.map { $0 * $0 }
square
//:### ad 2. filter()
let evenNumbers = numbers.filter { $0 % 2 == 0 }
evenNumbers
//:### ad 3. reduce()
let sum = numbers.reduce(0) { $0 + $1 }
sum
// alebo 'super-swifty' zápis:
numbers.reduce(0, +)

//:## Operácie s optionals pomocou map() a flatMap() - deklaratívne programovanie
//:### optionals vyžadujú optional binding a to vedie k if-let resp. guard-let konštrukciám a k imperatívnemu štýlu písania kódu:
var optionalDouble: Double?
if var double = optionalDouble {
    double = sqrt(double)
    print(double)
}
//:### alternatívny zápis ponúkajú map() a flatMap() funkcie, ktoré má aj Optional typ, ich aplikácia vedie k deklaratívnemu programovaniu (podobne ako s map(), filter() a reduce() vyššie):
optionalDouble = optionalDouble.map { sqrt($0) }
if let double = optionalDouble {
    print(double)
}
//:> map() s optional hodnotou funguje tak, že ak je hodnota nil, výsledkom je nil, a ak je hodnota rôzna od nil, vráti transformovanú (mapovanú) hodnotu. S flatMap() na rozdieľ od map() transformovaná hodnota môže byť tiež nil.
let doubleWithSmallValue = { (number: Double) -> Double? in
    return number < 1000.0 ? number : nil
}
optionalDouble = optionalDouble.flatMap(doubleWithSmallValue)
if let double = optionalDouble {
    print(double)
}

//:## Použitie flatMap() pri operáciách nad poľom:
//- redukcia viacrozmerného poľa (flatten)
let arrayOfArrays = [[1,3,5,7,9], [2,4,6,8,10]]
let allNumbersFromArrayOfArrays = arrayOfArrays.flatMap { $0 }
allNumbersFromArrayOfArrays
//- odfiltrovanie nil členov
let nilArray = [1, nil, 3, 5, 7, nil, 10]
let noneNilArr = nilArray.flatMap { $0 }
noneNilArr
// možno aj kombinovať
let noneNilEvenNumbers = nilArray.flatMap { $0 }.filter { $0 % 2 == 0 }
noneNilEvenNumbers












