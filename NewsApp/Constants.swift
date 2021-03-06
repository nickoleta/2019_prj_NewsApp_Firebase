import Foundation

struct Constants {
    
    struct StoryBoardNames {
        static let main = "Main"
    }
    
    struct ViewControllerIdentifiers {
        static let mainTabBarId = "MainTabBarNavigationController"
        static let loginNavigationControllerId = "LoginNavigationController"
        static let articlesContentControllerId = "ArticlesContentController"
        static let registrationControllerId = "RegistrationController"
    }
    
    struct Segue {
        static let registerSegue = "registerSegue"
        static let logoutSegue = "logoutSegue"
        static let showContentSegue = "showContent"
    }
    
    struct Messages {
        
    }
    
    struct ArticlesType {
        static let liked = "liked"
        static let downloaded = "downloaded"
    }
    
    struct URLs {
        static let basicApiUrl = "https://newsapi.org/"
        static let apiUrl = "https://newsapi.org/v2/top-headlines?country=us&apiKey="
        static let apiKey = "710e1dac2cea4f8faf0b308acb22603a"
    }
    
    struct ArticlesDefaultValues {
        static let author = "Unknown author"
        static let content = "No content"
        static let description = "No description"
        static let url = "https://newsapi.org/"
        static let urlToImage = "https://cdn.dribbble.com/users/1359053/screenshots/3719173/icon5.png"
        static let publishedAt = "--/--/----"
    }

    struct UserDefaultsKeys {
        static let isUserLoggedIn = "isUserLoggedIn"
    }
    
    struct LocalSQLiteDatabase {
        static let likedTable = "liked"
        static let downloadedTable = "downloaded"
        
        static let createLikedTable = "CREATE TABLE IF NOT EXISTS " + likedTable + "(Id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, author TEXT, content TEXT, description TEXT, url TEXT, urlToImage TEXT, publishedAt TEXT);"
        static let createDownloadedTable = "CREATE TABLE IF NOT EXISTS " + downloadedTable + "(Id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, author TEXT, content TEXT, description TEXT, url TEXT, urlToImage TEXT, publishedAt TEXT);"
        
        static let selectLiked = "SELECT * FROM " + likedTable
        static let selectDownloaded = "SELECT * FROM " + downloadedTable
        
        static let insertIntoLiked = "INSERT INTO " + likedTable + "(title, author, content, description, url, urlToImage, publishedAt) VALUES (?, ?, ?, ?, ?, ?, ?);"
        static let insertIntoDownloaded = "INSERT INTO " + downloadedTable + "(title, author, content, description, url, urlToImage, publishedAt) VALUES  (?, ?, ?, ?, ?, ?, ?);"
        
        static let deleteFromLiked = "DELETE FROM " + likedTable + " WHERE title = (?);"
    }
    
}
