//
//  FeedViewController.swift
//  Singleton
//
//  Created by Oktay Curebal on 07/04/2021.
//

import UIKit

protocol FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> )
}

class FeedViewController: UIViewController {
    var loadFeed: FeedLoader!
    
    convenience init(loadFeed: FeedLoader) {
        self.init()
        self.loadFeed = loadFeed
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFeed { loadedItems in
            
        }
    }
}
