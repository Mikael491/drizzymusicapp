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
        
        webView.loadHTMLString(songToPlay.videoURL, baseURL: nil)
       
    }

    
    
}
