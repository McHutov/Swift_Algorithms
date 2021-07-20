//
//  Challenges.swift
//  Stack
//
//  Created by Дастан Махутов on 20.07.2021.
//

import Foundation

// MARK: - First Challenge
func reverseArray<T>(_ arr: [T]) {
    var stack = Stack<T>()
    
    for i in arr {
        stack.push(i)
    }
    
    while let value = stack.pop() {
        print(value)
    }
}

// MARK: - Second Challenge

func parentheses(_ str: String) -> Bool {
    var stack = Stack<String>()
    
    for i in str {
        switch i {
        case "(":
            stack.push(")")
        case ")":
            stack.pop()
        default:
            break
        }
    }
    
    return stack.isEmpty()
}
