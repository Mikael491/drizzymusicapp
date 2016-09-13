//
//  PlaySongViewController.swift
//  OVOMusicAndVideos
//
//  Created by Mikael Teklehaimanot on 9/12/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var _songToPlay: OVOMusic!
    
    var songToPlay : OVOMusic {
        get {
            return _songToPlay
        } set {
            _songToPlay = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = songToPlay.videoTitle
        webView.loadHTMLString(songToPlay.videoURL, baseURL: nil)
       
    }

    
    
}
