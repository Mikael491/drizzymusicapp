//
//  ViewController.swift
//  OVOMusicAndVideos
//
//  Created by Mikael Teklehaimanot on 9/12/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableData = [OVOMusic]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //=============================================================================
        //test if things are working by hard coding objects into array
        let iFrame = "<div class=\"container\"><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uxpDa-c-4Mc\" frameborder=\"0\" allowfullscreen class=\"video\"></iframe></div>"
        let embedURL = "https://www.youtube.com/embed/uxpDa-c-4Mc"
        let ovoSong1 = OVOMusic(videoTitle: "Hotline Bling", imageURL: "https://i.ytimg.com/vi/uxpDa-c-4Mc/maxresdefault.jpg", videoURL: "\(iFrame)")
        tableData.append(ovoSong1)
        //=================^^^HARDCODED DATA^^^========================================
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "OVOSongCell", for: indexPath) as? OVOSongCell {
            
            cell.updateUI(ovoSong: tableData[indexPath.row])
            print(cell)
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let song = tableData[indexPath.row]
        performSegue(withIdentifier: "PlaySongSegue", sender: song)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongViewController {
            if let song = sender as? OVOMusic {
                destination.songToPlay = song
            }
        }
    }
    
}
















