//
//  FirebaseObjectTestModel.swift
//  CustomNetworkingWrappers
//
//  Created by mehmet karanlık on 5.06.2022.
//

import Foundation


struct FirebaseObjectTestModel : FirebaseObjectMapping {

   var number : Int?

   init(_ dictionary : [String : Any?]?) {
      guard let dictionary = dictionary else {  return }

      setUpValues(dictionary: dictionary)
   }

  internal mutating func setUpValues(dictionary: [String : Any?]) {
     number = dictionary["number"] as! Int
   }
}
