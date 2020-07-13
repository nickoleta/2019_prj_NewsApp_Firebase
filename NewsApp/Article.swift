import Foundation

class Article {
    var title: String
    var author: String
    var description: String
    var content: String
    var urlToImage: String
    var url: String
    
    init(_ title: String, _ author: String, _ description: String, _ content: String, _ urlToImage: String, _ url: String) {
        self.title = title
        self.author = author
        self.description = description
        self.content = content
        self.urlToImage = urlToImage
        self.url = url
    }
}
