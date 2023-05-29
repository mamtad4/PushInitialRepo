//
//  CSVFileModel.swift
//  LearnMappings
//
//  Created by Mamta Devi on 29/8/2022.
//

import Foundation
import UIKit

class CSVFileModel: NSObject{
    var catId: Int!
    var title: String!
    var subCategories: [SubCategoryModel]?
    
    required init(data: [String:AnyObject]) {
        self.catId = data["id"] as? Int
        self.title = data["title"] as? String
        if let array = data["sub_categories"] as? [[String:AnyObject]]{
        for i in array{
            let obj = SubCategoryModel(data: i)
            self.subCategories?.append(obj)
        }
        }
    }
}
