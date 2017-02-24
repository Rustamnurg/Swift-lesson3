//
//  Users.swift
//  SwiftTest3
//
//  Created by Rustam N on 23.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import UIKit


class Users: UITableViewController {
    var primaryArrWithUsers: [UserProfile] = []
    var arrWithUsers: [UserProfile] = []
    
    var sortBy: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "UsersCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: usersCellIdentifier)
        self.tableView.allowsSelection = false
        primaryArrWithUsers = GetArrWithUsers()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sortUsers()
        self.tableView.reloadData()
        
    }
}

extension Users {
    // MARK: -  My
    func sortUsers(){
        guard sortBy != nil, sortBy != -1 else {
            arrWithUsers = primaryArrWithUsers
            return
        }
        
        switch sortBy! {
        case 0:
            arrWithUsers = primaryArrWithUsers.sorted (by: { $0.firstName < $1.firstName })
        case 1:
            arrWithUsers = primaryArrWithUsers.sorted (by: { $0.lastName < $1.lastName })
        case 2:
            arrWithUsers = primaryArrWithUsers.sorted (by: { $0.dateBorn < $1.dateBorn })
        case 3:
            arrWithUsers = primaryArrWithUsers.sorted (by: { $0.gender < $1.gender })
        default:
            break
        }
    }
}


extension Users {
    // MARK: -  UI
    
}


extension Users {
    // MARK: -  Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrWithUsers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: usersCellIdentifier, for: indexPath) as! UsersCell
        let user: UserProfile = arrWithUsers[indexPath.row]
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        cell.fullNameLabel.text = user.getFullName()
        cell.dateLabel.text = formatter.string(from: user.dateBorn)
        cell.genderLabel.text = user.gender
        return cell
    }
    
    
}

