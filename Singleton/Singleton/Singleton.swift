//
//  Singleton.swift
//  Singleton
//
//  Created by Oktay Curebal on 07/04/2021.
//

import UIKit

// Main Module
extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}


extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

//Api Module
class ApiClient {
    static let shared = ApiClient()
    
    private init() { }
    
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

class MockApiClient: ApiClient {}


// Login Module
struct LoggedInUser {}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            
        }
    }
}

// Feed Module
struct FeedItem {}

class FeedViewModel {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { loadedItems in
            // update UI
        }
    }
}
