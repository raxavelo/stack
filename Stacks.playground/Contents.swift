import Cocoa

example(of: "using a stack") {
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

example(of: "initializing a stack from an array") {
  let array = ["A", "B", "C", "D"]
  var stack = Stack(array)
  print(stack)
  stack.pop()
}

example(of: "initializing a stack from an array literal") {
  var stack: Stack = [1.0, 2.0, 3.0, 4.0]
  print(stack)
  stack.pop()
}

/*
 Challenge 1: Reverse an Array
 
 Create a function that uses a stack to print the contents of an array in reversed order.
 */

func printReversed<T>(_ array: [T]){
  var stack = Stack(array)
  
  while let value = stack.pop() {
    print(value)
  }
}

let array = [1, 2, 3, 4]
printReversed(array)
