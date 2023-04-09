//
//  ViewController.swift
//  AppForSDWebImage
//
//  Created by Raman Kozar on 09.04.2023.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    let imageURLArray = ["https://weraveyou.com/wp-content/uploads/2022/06/Armin-van-Buuren-THIS-IS-ME-.jpg",
                         
        "https://edm.com/.image/t_share/MTc4MjU2NDY0MDA2MDk2NDg4/armin-van-buuren-tml-nye.jpg",
                         
        "https://pbs.twimg.com/media/Fr6AVUNXoAI4O5O.jpg",
        
        "https://upload.wikimedia.org/wikipedia/commons/d/dd/Armin_van_Buuren_2017.jpg",
        
        "https://i1.sndcdn.com/artworks-kXjeSagQEp6i4dyc-Gndv7w-t500x500.jpg",
        
        "https://soundrivemusic.com/wp-content/uploads/2022/07/Armin-Release-Feature-scaled.jpg"
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageURLArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        let cellPictureURL = imageURLArray[indexPath.row]
        
        guard let unwrURL = URL(string: cellPictureURL) else { return cell }
        
        cell.customImageView.sd_setImage(with: unwrURL,
                                        placeholderImage: nil,
                                        options: [.continueInBackground, .progressiveLoad],
                                        completed: nil)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

