//
//  main.swift
//  Stack
//
//  Created by Дастан Махутов on 18.07.2021.
//

import Foundation

/* Stack testing cases
firstExample()
secondExample()
thirdExample()
 */

 /* First Chalenge
reverseArray([1,2,3,4])
reverseArray(["First", "Second", "Third"])
 */

print(parentheses("h((e))llo(world)()"))
print(parentheses("(hello world"))


 

    


func firstExample () {
    var stack = Stack<Int>()

    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)

    print(stack)

    if let poppedElement = stack.pop() {
        assert(4 == poppedElement)
        print("Popped: \(poppedElement)")

    }
}

func secondExample() {
    let arr = ["A", "B", "C", "D"]
    var stack = Stack(arr)
    
    print(stack)
    print(stack.pop()!)
}

func thirdExample() {
    let stack: Stack = [1.0, 2.0, 3.0]
    print(stack)
}
