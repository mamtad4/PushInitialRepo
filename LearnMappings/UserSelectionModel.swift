//
//  UserSelectionModel.swift
//  LearnMappings
//
//  Created by Mamta Devi on 29/8/2022.
//

import Foundation
import UIKit

class UserSelectionModel: NSObject{
    var catId: Int!
    var subCatTitle: String!
    
    required init(data: [String:AnyObject]) {
        self.catId = data["id"] as? Int
        self.subCatTitle = data["name"]! as? String
    }
    
}
