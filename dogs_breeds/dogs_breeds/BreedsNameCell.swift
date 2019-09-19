//
//  BreedsNameCell.swift
//  dogs_breeds
//
//  Created by Danilo on 18/09/19.
//  Copyright © 2019 Danilo. All rights reserved.
//

import UIKit

class BreedsNameCell: UITableViewCell {

    @IBOutlet weak var breedLabel: UILabel!
    
    static let cellID = "BreedsNameCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
