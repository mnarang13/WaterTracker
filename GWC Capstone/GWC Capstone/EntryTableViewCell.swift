//
//  EntryTableViewCell.swift
//  GWC Capstone
//
//  Created by Spence on 8/1/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit

class EntryTableViewCell: UITableViewCell {
    
    //MARK: Properties

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var waterUse: UILabel!
   
    @IBOutlet weak var action: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
