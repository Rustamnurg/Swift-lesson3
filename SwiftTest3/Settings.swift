//
//  Settings.swift
//  SwiftTest3
//
//  Created by Rustam N on 23.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import UIKit

protocol SettingsDelegate {
    func sortByThis(sortBy: Int)
}

class Settings: UITableViewController {
    var selectedSwitchAtRow = -1
    var delegate: SettingsDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.allowsSelection = false
        self.tableView.register(SettingsCell.nib, forCellReuseIdentifier: SettingsCell.cellIdentifier)
    }

}


extension Settings {
    // MARK: -  UI
    @IBAction func cancelButtonAction(_ sender: UIBarButtonItem) {
        if let Ldelegate = delegate {
            Ldelegate.sortByThis(sortBy: -1)
        }
        dismiss(animated: true, completion: nil)
    }
}

extension Settings {
    // MARK: -  Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserParameters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingsCell.cellIdentifier, for: indexPath) as! SettingsCell
        cell.parameterLabel.text = UserParameters.getRowName(index: indexPath.row)
        cell.delegate = self
        if selectedSwitchAtRow == indexPath.row{
            cell.parameterSwitch.isOn = true
        }
        else{
            cell.parameterSwitch.isOn = false
        }
        return cell
    }
}

extension Settings: CellSubclassDelegate{
    func switchDidChangeAtRow(cell: SettingsCell) {
        guard let indexPath = self.tableView.indexPath(for: cell) else { return }
        
        if indexPath.row != -1 {
            selectedSwitchAtRow = indexPath.row
            tableView.reloadData()
            if let Ldelegate = delegate {
                Ldelegate.sortByThis(sortBy: indexPath.row)
            }
            dismiss(animated: true, completion: nil)
        }
    }
}

