//
//  CourseInfoTableViewCell.swift
//  ADGCoureApp
//
//  Created by Vaibhav Shah on 20/01/22.
//
import UIKit

class CourseInfoTableViewCell: UITableViewCell {

    @IBOutlet var courseInfoLabel: UILabel!
    @IBOutlet var chevronRightImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

