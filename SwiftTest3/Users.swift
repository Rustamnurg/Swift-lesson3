//
//  Users.swift
//  SwiftTest3
//
//  Created by Rustam N on 23.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import UIKit

class Users: UITableViewController {
 
  

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "UsersCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: usersCellIdentifier)
  
    }

}

extension Users {
    // MARK: -  My
    
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
        return 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: usersCellIdentifier, for: indexPath) as! UsersCell
        
        return cell
    }
    
    
}

