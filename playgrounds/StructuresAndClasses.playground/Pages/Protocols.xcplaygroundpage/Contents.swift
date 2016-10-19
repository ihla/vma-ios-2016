/*:
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Protocols
 */
//: Protokol je akoby interfejs, deklaruje len typy funkcií a 'computed properties'
protocol Vehicle {
    func accelerate()
    func stop()
    var wheels: Int { get }
}

protocol Music {
    func play()
}

class Transport {
    
}
/*:
- Example: Trieda 'Unicycle' realizuje protokol 'Vehicle' - implementuje telá funkcií.
 */
class Unicycle: Vehicle {
    var peddling = false
    
    var wheels = 1
    
    func accelerate() {
        print("squeaky squeaky")
        peddling = true
    }
    
    func stop() {
        peddling = false
    }
}
//: Triedy v Swifte môžu dediť len od jednej bázovej triedy ale môžu realizovať viacero protokolov.
class Car: Transport, Vehicle, Music {
    var velocity = 0

    var wheels = 4

    func play() {
        // code goes here
    }
    
    func accelerate() {
        print("Vrrrrrooom")
        velocity += 4
    }
    
    func stop() {
        velocity = 0
    }
}

class Boat {
    var knot = 0
}
/*:
- Example: Realizáciu protokolu možno pridať do triedy aj formou tzv. 'extension'.
 */
extension Boat: Vehicle {
/*:
- Example: V extension nemožno pridávať 'stored property', preto je tu 'wheels' realizované ako 'computed property'. 
 */
    var wheels: Int {
        return 0
    }
    
    func accelerate() {
        print("swish swish")
        knot += 10
    }
    
    func stop() {
        knot = 0
    }
}

/*:
- Example: Protokol je takisto typ - možno ho použiť ako typ premennej.
 */
var vehicles: [Vehicle] = []
vehicles.append(Car())
vehicles.append(Unicycle())
vehicles.append(Boat())
/*:
- Example: v cykle sa zavolá vždy iné telo metódy na príslušnom objekte typu 'Car', 'Unicycle' a 'Boat'.
 
    Otvor si konzolu (Shift + Cmd + y) a uvidíš výpisy z print().
 */
for vehicle in vehicles {
    vehicle.accelerate()
}

/*:
 ****
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 */
