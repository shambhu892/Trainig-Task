//
//  Queue.swift
//  TDDDemo
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct Queue{
    
    var array:[Int] = []
    
    mutating func enQueue(items: Int?) {
        
        guard let items = items else {return}
        
        array.append(items)
    }
    
    mutating func deQueue(){
        guard !array.isEmpty else {return}
         array.removeFirst()
    }
    
     func front() -> Int? {
         guard !array.isEmpty else {return nil}
        return array.first
    }
    
    func rear() -> Int? {
        guard !array.isEmpty else {return nil}
        return array.last
    }
    
}
