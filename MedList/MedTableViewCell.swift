//
//  MedTableViewCell.swift
//  MedList
//
//  Created by Britney Martinez on 12/4/16.
//  Copyright © 2016 NYU. All rights reserved.
//

import UIKit

class MedTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
