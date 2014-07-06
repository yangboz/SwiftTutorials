//
//  Cookie.swift
//  CookieCrunch
//
//  Created by Matthijs on 19-06-14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import SpriteKit

class Cookie: Printable, Hashable {
  var column: Int
  var row: Int
  let cookieType: CookieType
  var sprite: SKSpriteNode?

  init(column: Int, row: Int, cookieType: CookieType) {
    self.column = column
    self.row = row
    self.cookieType = cookieType
  }

  var description: String {
    return "type:\(cookieType) square:(\(column),\(row))"
  }

  var hashValue: Int {
    return row*10 + column
  }
}

enum CookieType: Int, Printable {
  case Unknown = 0, Croissant, Cupcake, Danish, Donut, Macaroon, SugarCookie

  var spriteName: String {
    let spriteNames = [
      "Croissant",
      "Cupcake",
      "Danish",
      "Donut",
      "Macaroon",
      "SugarCookie"]

    return spriteNames[toRaw() - 1]
  }

  var highlightedSpriteName: String {
    let highlightedSpriteNames = [
      "Croissant-Highlighted",
      "Cupcake-Highlighted",
      "Danish-Highlighted",
      "Donut-Highlighted",
      "Macaroon-Highlighted",
      "SugarCookie-Highlighted"]

    return highlightedSpriteNames[toRaw() - 1]
  }

  static func random() -> CookieType {
    return CookieType.fromRaw(Int(arc4random_uniform(6)) + 1)!
  }

  var description: String {
    return spriteName
  }
}

func ==(lhs: Cookie, rhs: Cookie) -> Bool {
  return lhs.column == rhs.column && lhs.row == rhs.row
}
