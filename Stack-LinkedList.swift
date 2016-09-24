//
//  Stack-LinkedList.swift
//  
//
//  Created by Mary Martinez on 9/24/16.
//
//

import Foundation

class LinkedListNode<T> {
    
    var value : T
    var next  : LinkedListNode?
    
    init(_ value: T) {
        self.value = value
    }
}
