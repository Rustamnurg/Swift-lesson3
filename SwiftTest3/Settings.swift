//
//  Settings.swift
//  SwiftTest3
//
//  Created by Rustam N on 23.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import UIKit

class Settings: UITableViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "SettingsCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: settingsCellIdentifier)
  
    }
    

    
}


extension Settings {
    // MARK: -  My
    
}


extension Settings {
    // MARK: -  UI
    @IBAction func cancelButtonAction(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
}


extension Settings {
    // MARK: -  Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: settingsCellIdentifier, for: indexPath) as! SettingsCell
        
        return cell
    }

    
}
