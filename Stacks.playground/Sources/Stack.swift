// Copyright (c) 2021 Raxavelo Grzegorz Zadkowski
// For full license & permission details, see LICENSE.markdown.

public struct Stack<Element> {
  private var storage: [Element] = []
  
  public var count: Int {
    storage.count
  }
  
  public var isEmpty: Bool {
    peek() == nil
  }
  
  public init() { }
  
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
    storage.last
  }
}

extension Stack:CustomDebugStringConvertible {
  public var debugDescription: String {
    """
    ----top----
    \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
    -----------
    """
  }
}
