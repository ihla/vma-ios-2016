/*:
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Deklarácia štruktúry
 */
//: Štruktúra 'Book' je datový typ podobne ako je napr. Int, Double, Bool či String - typy definované v [Swift Standard Library](https://developer.apple.com/reference/swift).
struct Book {
    let title: String
}
/*: 
 Štruktúry môžu obsahovať premenné (var či let) a funkcie. Premenná štruktúry sa nazýva 'property' a funkcia štruktúry sa nazýva metóda.
 Metódy, ktoré menia stav štruktúry musia byť anotované ako 'mutating'!
 */
struct Author {
    let firstName: String // stringová premenná
    let lastName: String  //  stringová premenná
    var books: [Book] = [] // premenná typu pole obsahujúce položky typu 'Book' inicializovaná na prázdne pole
   
    /// Táto funkcia pridáva knihu do zoznamu
    mutating func addBook(_ aBook: Book) {
        books.append(aBook)
    }
    
}
//:     Príklad inicializovania štruktúry: 'Book(title:)' je inicializátor vygenerovaný kompilátorom. Premenná 'book' má hodnotu inštancie štruktúry 'Book'.
let book = Book(title: "The Stand")
//:     Príklad ako sa pristupuje k property.
book.title
//:     Príklad inicializovania štruktúry s viacerými argumentmi. Kompilátor vygeneruje inicializátor s argumentom pre každú property (tzv. 'memberwise initialization'.
var writer = Author(firstName: "Stephen", lastName: "King", books: [book])
/*:
 - Experiment: Skús zmeniť 'var writer' na 'let writer'.
 */
let anotherBook = Book(title: "The Gungslinger")
//:     Príklad ako sa volá metóda.
writer.addBook(anotherBook)

/*:
 - callout(Checkpoint): Pohraj sa a skús meniť 'var' na 'let' na rôznych miestach v kóde a vystopuj efekty. Po tomto cvičení by si mal chápať rozdiely v používaní var/let so štruktúrami.
 ****
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 */

