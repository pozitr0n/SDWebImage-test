//
//  CustomCell.swift
//  AppForSDWebImage
//
//  Created by Raman Kozar on 09.04.2023.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var customImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
