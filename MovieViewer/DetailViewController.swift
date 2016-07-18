//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Dinesh Gunda on 7/15/16.
//  Copyright © 2016 Dinesh Gunda. All rights reserved.
//

import UIKit
import AFNetworking

class DetailViewController: UIViewController {

    @IBOutlet weak var overViewLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var posteView: UIImageView!
    @IBOutlet weak var infoView: UIView!
   
    
    @IBOutlet weak var scrollView: UIScrollView!
    var movie: NSDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y+infoView.frame.size.height)
        
        let title = movie["original_title"] as! String
        let overView = movie["overview"] as! String
        titleLabel.text = title
        overViewLabel.text = overView
        overViewLabel.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w342"
        if let posterPath = movie["poster_path"] as? String{
            
            let imageUrl = NSURL(string: baseUrl + posterPath)
            
            posteView.setImageWithURL(imageUrl!)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
