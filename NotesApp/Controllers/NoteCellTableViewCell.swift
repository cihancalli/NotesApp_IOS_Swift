//
//  NoteCellTableViewCell.swift
//  NotesApp
//
//  Created by Cihan Çallı on 12.04.2022.
//

import UIKit

class NoteCellTableViewCell: UITableViewCell {

    @IBOutlet weak var labelLessonName: UILabel!
    @IBOutlet weak var labelNote1: UILabel!
    @IBOutlet weak var LabelNote2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
