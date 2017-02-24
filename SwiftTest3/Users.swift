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
    var sortBy: Int = -1
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UsersCell.nib, forCellReuseIdentifier: UsersCell.cellIdentifier)
        self.tableView.allowsSelection = false
        primaryArrWithUsers = GetArrWithUsers()
    }

    override func viewWillAppear(_ animated: Bool) {
        sortUsers()
        self.tableView.reloadData()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SettingsSegue" {
            let destination = segue.destination as! Settings
            destination.delegate = self
            destination.selectedSwitchAtRow = sortBy
        }
    }

}

extension Users {
    // MARK: -  My
    func sortUsers(){
        guard sortBy != -1 else {
            arrWithUsers = primaryArrWithUsers
            return
        }
        
        switch sortBy {
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
    // MARK: -  Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrWithUsers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UsersCell.cellIdentifier, for: indexPath) as! UsersCell
        let user: UserProfile = arrWithUsers[indexPath.row]
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        cell.fullNameLabel.text = user.getFullName()
        cell.dateLabel.text = formatter.string(from: user.dateBorn)
        cell.genderLabel.text = user.gender
        return cell
    }
    
}

extension Users: SettingsDelegate{
    func sortByThis(sortBy: Int) {
       self.sortBy = sortBy
    }
}
