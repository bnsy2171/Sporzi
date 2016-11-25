//
//  MySportsTableCell.swift
//  Sporzi
//
//  Created by Rental on 23/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class MySportsTableCell: UITableViewCell
{
    
    @IBOutlet weak var backView: UIView!
    
    

    
    @IBOutlet weak var playingdyView: UIView!
    
    @IBOutlet weak var playingTimeView: UIView!
    
    @IBOutlet weak var btnProLevel: UIButton!
   
    @IBOutlet weak var btnFrequency: UIButton!
    
    @IBOutlet weak var btnPosition: UIButton!
    
    @IBOutlet weak var btnArea: UIButton!
    @IBOutlet weak var btnPurpose: UIButton!
    
        @IBOutlet weak var imgSports: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
