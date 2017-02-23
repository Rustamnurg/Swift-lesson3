//
//  SettingsCell.swift
//  SwiftTest3
//
//  Created by Rustam N on 23.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    @IBOutlet weak var parameterLabel: UILabel!
    @IBOutlet weak var parameterSwitch: UISwitch!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
