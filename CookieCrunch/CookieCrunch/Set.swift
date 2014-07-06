//
//  Set.swift
//  CookieCrunch
//
//  Created by Matthijs on 19-06-14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

// A set is a collection that allows each element to appear only once, and it 
// does not store the elements in any particular order.
// As of Xcode 6 beta 2, Swift does not include a Set class. This is a simple
// implementation of a set, using a Dictionary as the actual storage mechanism.
class Set<T: Hashable>: Sequence, Printable {
  var dictionary = Dictionary<T, Bool>()  // private

  func addElement(newElement: T) {
    dictionary[newElement] = true
  }

  func removeElement(element: T) {
    dictionary[element] = nil
  }

  func containsElement(element: T) -> Bool {
    return dictionary[element] != nil
  }

  func allElements() -> T[] {
    return Array(dictionary.keys)
  }

  var count: Int {
    return dictionary.count
  }

  func unionSet(otherSet: Set<T>) -> Set<T> {
    var combined = Set<T>()

    for obj in dictionary.keys {
      combined.dictionary[obj] = true
    }

    for obj in otherSet.dictionary.keys {
      combined.dictionary[obj] = true
    }

    return combined
  }

  func generate() -> IndexingGenerator<Array<T>> {
    return allElements().generate()
  }

  var description: String {
    return dictionary.description
  }
}
