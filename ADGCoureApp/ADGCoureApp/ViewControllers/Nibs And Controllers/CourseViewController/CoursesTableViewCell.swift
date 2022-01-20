//
//  CoursesTableViewCell.swift
//  ADGCoureApp
//
//  Created by Vaibhav Shah on 20/01/22.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {

    @IBOutlet var courseLongLabel: UILabel!
    @IBOutlet var courseCode: UILabel!
    @IBOutlet var bookmarkButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bookmarkButton.setImage(#imageLiteral(resourceName: "FavUnselect"), for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapBookmark(_ sender: UIButton) {
        if (sender.currentImage == #imageLiteral(resourceName: "FavUnselect")){
            sender.setImage(#imageLiteral(resourceName: "FavSelect"), for: .normal)
        }
        else {
            sender.setImage(#imageLiteral(resourceName: "FavUnselect"), for: .normal)
        }
    }
}
