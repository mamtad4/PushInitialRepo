//
//  ViewController.swift
//  LearnMappings
//
//  Created by Mamta Devi on 29/8/2022.
//

import UIKit
import CocoaLumberjack

class ViewController: UIViewController {
    let numbers = [1,2,3,4,5,6,7,8,9]
    var userSelectionArray = [["id":1,"name":"Left Head"],["id":1,"name":" Right Head"],["id":2,"name":"Left Foot"],["id":2,"name":"Right Foot"]]
    var readOnlyArray = [["id":1,"title":"Head","sub_categories":[["id":1,"sub_cat_name":"Bottom Head"],["id":2,"sub_cat_name":"Left Head"],["id":3,"sub_cat_name":"Right Head"],["id":4,"sub_cat_name":"Top Head"]]],
                         ["id":2,"title":"Foot","sub_categories":[["id":1,"sub_cat_name":"Bottom Foot"],["id":2,"sub_cat_name":"Left Foot"],["id":3,"sub_cat_name":"Right Foot"],["id":4,"sub_cat_name":"Top Foot"]]],
                         ["id":3,"title":"Face","sub_categories":[["id":1,"sub_cat_name":"Bottom Face"],["id":2,"sub_cat_name":"Left Face"],["id":3,"sub_cat_name":"Right Face"],["id":4,"sub_cat_name":"Top Face"]]]]
    
    var userSelectionModelObj = [UserSelectionModel]()
    var csvFileModelObj = [CSVFileModel]()
    var filteredCSVModelObj = [CSVFileModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in userSelectionArray{
            let obj = UserSelectionModel(data: i as! [String:AnyObject])
            self.userSelectionModelObj.append(obj)
        }
        
        for i in readOnlyArray{
            let obj = CSVFileModel(data: i as! [String:AnyObject])
            self.csvFileModelObj.append(obj)
        }
        
        let newArray = numbers.map {$0 % 2}
        DDLog.add(DDOSLogger.sharedInstance) // Uses os_log

        let fileLogger: DDFileLogger = DDFileLogger() // File Logger
        fileLogger.rollingFrequency = 60 * 60 * 24 // 24 hours
        fileLogger.logFileManager.maximumNumberOfLogFiles = 7
        DDLog.add(fileLogger)

        DDLogVerbose("Verbose")
        DDLogDebug("Debug")
        DDLogInfo("Info")
        DDLogWarn("Warn")
        DDLogError("Error")
        
        // Do any additional setup after loading the view.
    }


}

