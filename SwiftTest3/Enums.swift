//
//  Enums.swift
//  SwiftTest3
//
//  Created by Rustam N on 24.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import Foundation

enum UserParameters: String{
    case firstName = "First name"
    case lastName = "Last name"
    case bornDate = "Date of born"
    case gendor = "Gendor"
    
    static let count = 4
    
    static func getRowName(index: Int) -> String? {
        switch index {
        case 0:
            return UserParameters.firstName.rawValue
        case 1:
            return UserParameters.lastName.rawValue
        case 2:
            return UserParameters.bornDate.rawValue
        case 3:
            return UserParameters.gendor.rawValue
        default:
            return nil
        }
    }
    
    init?(index: Int) {
        switch index {
        case 0:
            self = UserParameters.firstName
        case 1:
            self = UserParameters.lastName
        case 2:
            self = UserParameters.bornDate
        case 3:
            self = UserParameters.gendor
        default:
            return nil
            
        }
    }

}
