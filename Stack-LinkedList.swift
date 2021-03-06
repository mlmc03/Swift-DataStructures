//
//  Stack-LinkedList.swift
//  
//
//  Created by Mary Martinez on 9/24/16.
//
//

import Foundation

class StackLinkedListNode<T> {
    
    var value : T
    var next  : StackLinkedListNode?
    
    init(_ value: T) {
        self.value = value
    }
}

class StackLinkedList<T> {
    public typealias Node = StackLinkedListNode<T>
    
    private var head: Node?
    
    public func isEmpty() -> Bool {
        return head == nil
    }
    
    public func count() -> Int {
        
        if self.isEmpty() {
            return 0
        }
        
        var count = 0
        var currentNode = head
        while (currentNode != nil) {
            count += 1
            currentNode = currentNode?.next
        }
        
        return count
    }
    
    public func push(value: T) {
        
        if self.isEmpty() {
            head = Node(value)
        }
        else {
            let newNode = Node(value)
            newNode.next = head
            head = newNode
        }
    }
    
    public func pop() -> T? {
        
        if self.isEmpty() {
            return nil
        }
        
        let result = head
        head = result?.next
        
        return result?.value
    }
}


var myList = StackLinkedList<Int>()
myList.push(value: 5)
myList.push(value: 3)
myList.push(value: 1)

myList.count()      // 3

myList.pop()        // 1
myList.pop()        // 3
myList.pop()        // 5
myList.pop()        // nil

myList.count()      // 0
