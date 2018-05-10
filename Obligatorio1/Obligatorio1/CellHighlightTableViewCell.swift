//
//  CellHighlightTableViewCell.swift
//  Obligatorio1
//
//  Created by SP 24 on 8/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class CellHighlightTableViewCell: UITableViewCell {

    @IBOutlet weak var highlightImageTeam1: UIImageView!
    @IBOutlet weak var highlightImageTeam2: UIImageView!
    @IBOutlet weak var highlightDescriptionTeam1: UILabel!
    @IBOutlet weak var highlightDescriptionTeam2: UILabel!
    @IBOutlet weak var highlightTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
