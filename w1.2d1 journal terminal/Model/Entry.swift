//
//  Entry.swift
//  w1.2d1 journal terminal
//
//  Created by Michael Flowers on 1/22/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import Foundation

class Entry : Equatable {
    static func ==(lhs: Entry, rhs: Entry) -> Bool {
      return lhs.bodyText == rhs.bodyText && lhs.title == rhs.title && lhs.timeStamp == rhs.timeStamp
    }
    
    var timeStamp: Date
    var title: String
    var bodyText: String
    
    init(title: String, bodyText: String) {
        self.title = title
        self.bodyText = bodyText
        self.timeStamp = Date()
    }
    
}
