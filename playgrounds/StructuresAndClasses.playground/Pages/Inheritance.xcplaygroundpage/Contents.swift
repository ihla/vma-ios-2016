/*:
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 ****
 # Dedičnosť
 */
struct Page {
    var words = 0
}

class Story {
    var title = ""
    var pages: [Page] = []
    
    func addPage(page: Page) {
        pages.append(page)
    }
}
/*:
- Example: Trieda 'ShortStory' dedí z triedy 'Story' property 'title' a 'pages' a redeklaruje ('override') metódu 'addPage(page:)'.
 
    Všimni si volanie 'addPage()' z bázovej triedy použitím 'super'.
 */
class ShortStory: Story {
    var maxPageCount = 2
    
    override func addPage(page: Page) {
        if pages.count < maxPageCount {
            super.addPage(page: page)
        }
    }
}

/*:
 ****
 [obsah](TableOfContents) | [nasledujúci](@next) | [predchádzajúci](@previous)
 */
