//
//  TableViewCell.swift
//  Barta
//
//  Created by Apple MacBook Pro on 2/5/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var NewsImage: UIImageView!
    @IBOutlet weak var Label: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        ContainerView.layer.cornerRadius = 15
NewsImage.layer.cornerRadius = 15
        // Configure the view for the selected state
    }

}
