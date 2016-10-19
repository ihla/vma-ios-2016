/*:
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Deklarácia triedy
 */
//: Trieda rovnako ako štruktúra môže obsahovať premenné ('property') a funkcie ('metódy'). Prvý rozdiel je, že kompilátor negeneruje žiaden inicializátor, ostatné rozdiely budú popísané ďalej.
class Movie {
    var title: String
    var runningTime: Int
    
    init(title:String, runningTime: Int) {
        self.title = title
        self.runningTime = runningTime
    }
}
/*:
- Example: Triedy sú tzv. 'reference types' zatiaľ čo štruktúry sú tzv. 'value types'.
 
    Tento príklad ilustruje vlastnosť 'reference types': priradením inštancie najskôr premennej 'adventureMovie' a potom priradením hodnoty premennej 'adventureMovie' premennej 'scienceFictionMovie' sme vytvorili dve referencie na ten istý objekt typu Movie. Keď zmením napr. hodnotu 'title' cez referenciu 'scienceFictionMovie', zmenenú hodnotu vyčítam aj cez referenciu 'adventureMovie'.
 */
var adventureMovie = Movie(title: "Raiders of the Lost Ark", runningTime: 90)
var scienceFictionMovie = adventureMovie

scienceFictionMovie.title = "2001"
adventureMovie.title
scienceFictionMovie.title
/*:
- Example: '===' je tzv. 'identity operator' - slúži na test či referencie ukazujú na ten istý objekt. Operátor '==' je 'equality operator' a slúži na porovanie 'obsahu' objektov.
 */
adventureMovie === scienceFictionMovie
scienceFictionMovie = Movie(title: "The Martian", runningTime: 120)
scienceFictionMovie.title
adventureMovie === scienceFictionMovie


/*:
 ****
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 */
