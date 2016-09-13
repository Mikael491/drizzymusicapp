//
//  BaseWebView.swift
//  OVOMusicAndVideos
//
//  Created by Mikael Teklehaimanot on 9/13/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class BaseWebView: UIWebView {
    
    override func awakeFromNib() {
        self.scalesPageToFit = true
        self.scrollView.isScrollEnabled = false
    }
}
