//
//  CellPlayerTableViewCell.swift
//  Obligatorio1
//
//  Created by SP 24 on 3/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class CellPlayerTableViewCell: UITableViewCell {
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var team: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
