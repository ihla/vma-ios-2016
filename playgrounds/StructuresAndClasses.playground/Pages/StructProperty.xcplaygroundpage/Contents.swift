/*:
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Premenné - properties
 */
import Foundation
//: Štruktúra 'Book' obsahuje len tzv. 'stored properties' - to sú také, ktoré majú alokovanú pamäť.
struct Book {
    let title: String
    let isPublished: Bool
}
/*: 
 Štruktúra 'Author' okrem 'stored properties' obsahuje aj tzv. 'computed properties' - to sú také, ktoré nemajú alokovanú pamäť.
 
 Viď 'books', 'totalBooks' a 'fullName'.
 */
struct Author {
    var firstName: String
    var lastName: String
    var booksWritten: [Book] = []
    var booksBeingWritten: [Book] = []
/*:
- Example: getter
     
     Stored property musí byť vždy 'var' a musí mať explicitne udaný typ ('[Book]'). Za typom nasleduje telo medzi kučeravými zátvorkami podobne ako je telo funkcie.
 */
    var books: [Book] {
        get {
            return booksWritten
        }
    }
/*:
- Example: getter nemusí mať explicitne get telo, kompilátor to vie interpretovať aj bez toho.
*/
    var totalBooks: Int {
        return booksBeingWritten.count + booksWritten.count
    }
/*:
- Example: getter aj setter
     
Setter má implicitný argument 'newValue', viď nižšie..
*/
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            let words = newValue.components(separatedBy: " ")
            if words.count == 2 {
                firstName = words[0]
                lastName = words[1]
            } else {
                firstName = ""
                lastName = newValue
            }
        }
    }
    
    mutating func addBook(_ aBook: Book) {
        if aBook.isPublished {
            booksWritten.append(aBook)
        } else {
            booksBeingWritten.append(aBook)
        }
    }
    
}

var theDarkTower = Book(title: "The Dark Tower", isPublished: true)
var theStand = Book(title: "The Stand", isPublished: true)

var writer = Author(firstName: "Stephen", lastName: "King", booksWritten: [theStand], booksBeingWritten:[])
var anotherBook = Book(title: "The Gungslinger", isPublished: true)
writer.addBook(anotherBook)
writer.books

var unPublishedBook = Book(title: "Untitled Project", isPublished: false)
writer.addBook(unPublishedBook)
writer.books
writer.booksBeingWritten

print(writer.totalBooks)
writer.fullName
writer.fullName = "Steve King"
writer.firstName
writer.lastName
writer.fullName
/*:
 ****
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 */






