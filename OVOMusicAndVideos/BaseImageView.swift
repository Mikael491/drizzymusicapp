//
//  BaseImageView.swift
//  OVOMusicAndVideos
//
//  Created by Mikael Teklehaimanot on 9/13/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class BaseImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
