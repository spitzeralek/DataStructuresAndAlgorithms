//
//  Node.swift
//  DataStructuresAndAlgorithms
//
//  Created by Alek Spitzer
//
import Foundation

struct LinkedList<Value> {
    
    var head: Node<Value>?
    var tail: Node<Value>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        
        if tail == nil {
            tail = head
        }
        
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty List"
        }
        
        return String(describing: head)
    }
}


class Node<Value> {
    internal init(value: Value, next: Node<Value>? = nil) {
        self.value = value
        self.next = next
    }
    
    var value: Value
    var next: Node?
}


extension Node: CustomStringConvertible {
    var description: String {
        guard let next = next else {
            return "\(value)"
        }
        
        return "\(value) -> \(next)"
    }
}
