//
//  DigiInfo.swift
//  DigiInfo
//
//  Created by Apple on 31/05/2018.
//  Copyright © 2018 Apple. All rights reserved.
//

import Foundation



class digiInfo {
    var email : String
    var profileImage : UIImage
    var imagetype : String
    var msg : String
    var lat :  String
    var long : String
    var place : String
    var date : String
    var connect : String
    var method : String
    
    init(email:String , profileImage:UIImage , imagetype:String , msg:String , lat:String ,  long:String , place:String , date:String , connect:String , method:String){
        self.email = email
        self.profileImage = profileImage
        self.imagetype = imagetype
        self.msg = msg
        self.lat = lat
        self.long = long
        self.place = place
        self.date = date
        self.connect = connect
        self.method = method
    }
    
}


//email, profileimage, imagetype, msg, lat, long, place, date,connect, method
