//
//  CellMatchTableViewCell.swift
//  Obligatorio1
//
//  Created by SP 24 on 19/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class CellMatchTableViewCell: UITableViewCell {
    @IBOutlet weak var Date: UILabel!
    @IBOutlet weak var Stadium: UILabel!
    @IBOutlet weak var Phase: UILabel!
    @IBOutlet weak var Team1_Image: UIImageView!
    @IBOutlet weak var Team2_Image: UIImageView!
    @IBOutlet weak var Team1_Name: UILabel!
    @IBOutlet weak var Team2_Name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
