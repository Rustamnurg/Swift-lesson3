//
//  CreateDate.swift
//  SwiftTest3
//
//  Created by Rustam N on 24.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import Foundation

func GetArrWithUsers()->[UserProfile] {
    var arr: [UserProfile] = []
    let arrWithFirstName = ["FirstName0", "FirstName1", "FirstName2", "FirstName3", "FirstName4", "FirstName5", "FirstName6", "FirstName7"]
    let arrWithLastName = ["LastName0", "LastName1", "LastName2", "LastName3", "LastName4", "LastName5", "LastName6", "LastName7"]
    
    for _ in 0...10{
        let randomFirstName = arrWithFirstName[Int(arc4random_uniform(UInt32(arrWithFirstName.count)))]
        let randomLastName = arrWithLastName[Int(arc4random_uniform(UInt32(arrWithLastName.count)))]
        let randomDate: Date = Date.init(timeIntervalSince1970: TimeInterval(arc4random_uniform(60*60*24*30*12*40)))
      
        if arc4random_uniform(2) % 2 == 1{
            let user = ManProfile.init(firstName: randomFirstName, lastName: randomLastName, dateBorn: randomDate)
            arr.append(user)
        }
        else{
            let user = WomanProfile.init(firstName: randomFirstName, lastName: randomLastName, dateBorn: randomDate)
            arr.append(user)
        }
    }
    return arr
}

