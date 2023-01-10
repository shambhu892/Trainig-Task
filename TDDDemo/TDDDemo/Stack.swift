//
//  Stack.swift
//  TDDDemo
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation


struct Stack {
    var array:[Int] = []
    mutating func push(items: Int?){
        guard let items = items else {return}
       array.append(items)
    
    }
    
    mutating func pop() -> Int? {
        guard !array.isEmpty else {return nil}
        return array.removeLast()
        
    }
    
    mutating func peek() -> Int? {
        guard !array.isEmpty else {return nil}
        return array.last!
    }
}
