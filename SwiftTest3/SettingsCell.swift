//
//  SettingsCell.swift
//  SwiftTest3
//
//  Created by Rustam N on 23.02.17.
//  Copyright © 2017 com.personal.ildar. All rights reserved.
//

import UIKit



protocol CellSubclassDelegate: class {
    func switchDidChangeAtRow(cell: SettingsCell)
}

class SettingsCell: UITableViewCell {
    @IBOutlet weak var parameterLabel: UILabel!
    @IBOutlet weak var parameterSwitch: UISwitch!

    var delegate: CellSubclassDelegate?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func switchButtonAction(_ sender: UISwitch) {
        guard self.delegate != nil else {assertionFailure("Be sure delegate not Nil!"); return}
        self.delegate?.switchDidChangeAtRow(cell: self)
    }
}
