//
//  Stack.swift
//  Stack
//
//  Created by Дастан Махутов on 18.07.2021.
//

import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []

    public init() {
    }
    
    public init(_ elements: [Element]) {
        storage = elements
    }

    public mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        return storage.last
    }
    
    public func isEmpty() -> Bool {
        return storage.isEmpty
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        ----top----
        \(storage.map {"\($0)"}.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
