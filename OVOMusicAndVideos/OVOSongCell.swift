//
//  OVOSongCell.swift
//  OVOMusicAndVideos
//
//  Created by Mikael Teklehaimanot on 9/12/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class OVOSongCell: UITableViewCell {
    
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //updates the cell with the model class objects information
    func updateUI(ovoSong: OVOMusic) {
        videoTitle.text = ovoSong.videoTitle
        
        //TODO: set cell image
        
    }
    
    

}
