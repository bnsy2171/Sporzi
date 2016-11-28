//
//  PlayerSportsDetailCell.swift
//  Sporzi
//
//  Created by Rental on 28/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class PlayerSportsDetailCell: UITableViewCell
{
    

    @IBOutlet weak var lblSportsTitle: UILabel!
    @IBOutlet weak var imgSports: UIImageView!
    
    
    @IBOutlet weak var lblWin: UILabel!
    
    @IBOutlet weak var lblLosses: UILabel!

    @IBOutlet weak var backView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
