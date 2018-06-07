//
//  DataServices.swift
//  DigiInfo
//
//  Created by Apple on 30/05/2018.
//  Copyright © 2018 Apple. All rights reserved.
//

import Foundation
import Alamofire

class DataServices {
    
    
    static let instance = DataServices()

    
    let BASE_URL = "https://backhand.herokuapp.com/api/image"
    
    typealias CompletionHandler = (_ Success : Bool) -> ()
    
    func postImage(photo : UIImage, msg : String , lat : String , long : String ,place : String , date : String ,completion :  @escaping CompletionHandler) {
        
//        let imageData = UIImageJPEGRepresentation(photo , 1)

        
        let body : [String : Any] =
            ["photo" : photo , "lat" : lat , "long" : long , "place" : place , "date" : date]
        
        let HEADER = ["Content-Type": "application/json; charset=utf-8"]
        
        Alamofire.request(BASE_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }

}



