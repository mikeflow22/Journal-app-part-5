//
//  EntryController.swift
//  w1.2d1 journal terminal
//
//  Created by Michael Flowers on 1/22/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import Foundation

class EntryController {
    var entries: [Entry] = []
    
    //create an add entry function. What is it doing, its initializing the Entry class and then appending the entries array
    func addEntryWith(title: String, bodyText: String) {
        let newEntry = Entry(title: title, bodyText: bodyText)
        entries.append(newEntry)
    }
    
    //create a remove function. What's the logic? I need to remove an entry from the entries array. which means I need access to the Entry properties. I need to find the index.
    func remove(entry: Entry){
        let index = entries.index(of: entry)
        
    }
    
    
    
    
    
    
    
}
