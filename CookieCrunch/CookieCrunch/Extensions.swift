//
//  Extensions.swift
//  CookieCrunch
//
//  Created by Matthijs on 19-06-14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import Foundation

extension Dictionary {

  // Loads a JSON file from the app bundle into a new dictionary
  static func loadJSONFromBundle(filename: String) -> Dictionary<String, AnyObject>? {
    let path = NSBundle.mainBundle().pathForResource(filename, ofType: "json")
    if !path {
      println("Could not find level file: \(filename)")
      return nil
    }

    var error: NSError?
    let data: NSData? = NSData(contentsOfFile: path, options: NSDataReadingOptions(), error: &error)
    if !data {
      println("Could not load level file: \(filename), error: \(error!)")
      return nil
    }

    let dictionary: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(), error: &error)
    if !dictionary {
      println("Level file '\(filename)' is not valid JSON: \(error!)")
      return nil
    }

    return dictionary as? Dictionary<String, AnyObject>
  }
}
