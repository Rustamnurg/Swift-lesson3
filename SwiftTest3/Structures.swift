//
//  Structures.swift
//  SwiftTest3
//
//  Created by Rustam N on 24.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import Foundation

struct ManProfile: UserProfile {
    var firstName: String
    var lastName: String
    var dateBorn: Date
    var gender: String

    
    init(firstName: String, lastName: String, dateBorn: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateBorn = dateBorn
        self.gender = "Man"
    }
}

struct WomanProfile: UserProfile {
    var firstName: String
    var lastName: String
    var dateBorn: Date
    var gender: String
    
    init(firstName: String, lastName: String, dateBorn: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateBorn = dateBorn
        self.gender = "Woman"
    }
}
