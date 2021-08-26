//
//  CustomTableViewCell.swift
//  tabBarSample
//
//  Created by Payal Kandlur on 11/08/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {


    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
