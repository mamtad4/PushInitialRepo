//
//  SubCategoryModel.swift
//  LearnMappings
//
//  Created by Mamta Devi on 29/8/2022.
//

import Foundation
import UIKit

class SubCategoryModel: NSObject{
    var subCatId: Int!
    var subCatTitle: String!
    
    required init(data: [String:AnyObject]) {
        self.subCatId = data["id"] as? Int
        self.subCatTitle = data["sub_cat_name"]! as? String
    }
    
}

