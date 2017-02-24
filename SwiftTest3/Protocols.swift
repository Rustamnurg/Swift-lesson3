//
//  Protocols.swift
//  SwiftTest3
//
//  Created by Rustam N on 24.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import Foundation

protocol UserProfile: GendorOfUser {
    var firstName: String { get set }
    var lastName: String { get set }
    var dateBorn: Date { get set }
    func getFullName() -> String
}

extension UserProfile {
    func getFullName() -> String {
        return ("\(firstName) \(lastName)")
    }
}

protocol GendorOfUser {
    var gender: String { get set}
}
