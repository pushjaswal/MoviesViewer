//
//  MovieCell.swift
//  MovieViewer
//
//  Created by Dinesh Gunda on 7/15/16.
//  Copyright © 2016 Dinesh Gunda. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var posterPath: UIImageView!
    
    @IBOutlet weak var overViewLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
