//
//  PlaySongViewController.swift
//  OVOMusicAndVideos
//
//  Created by Mikael Teklehaimanot on 9/12/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController, UIWebViewDelegate {
    
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
        
        webView.delegate = self
        titleLabel.text = songToPlay.videoTitle
        webView.loadHTMLString(songToPlay.videoURL, baseURL: nil)
       
    }
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        //TODO: Make resposive YouTube video for webview
        let css = ".container { position: relative; width: 100%; height: 0; padding-bottom: 56.25%; } .video { position: absolute; top: 0; left: 0; width: 100%; height: 100%;}"
        
        let js = "var styleNode = document.createElement('style'); styleNode.type = \"text/css\"; var styleText = document.createTextNode('\(css)'); styleNode.appendChild(styleText); document.getElementsByTagName('head')[0].appendChild(styleNode);"
        self.webView.stringByEvaluatingJavaScript(from: js)
    }
    
}
