// Copyright (c) 2021 Raxavelo Grzegorz Zadkowski
// For full license & permission details, see LICENSE.markdown.

public struct Stack<Element> {
  private var storage: [Element] = []
  
  public init() { }
  
  public mutating func push(_ element: Element) {
    storage.append(element)
  }
  
  @discardableResult
  public mutating func pop() -> Element? {
    storage.popLast()
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
