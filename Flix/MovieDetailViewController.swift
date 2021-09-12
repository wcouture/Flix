//
//  MovieDetailViewController.swift
//  Flix
//
//  Created by Will Couture on 9/12/21.
//

import UIKit
import AlamofireImage

class MovieDetailViewController: UIViewController {

    var movie : [String:Any]!
    
    @IBOutlet weak var BackdropImageView: UIImageView!
    @IBOutlet weak var MoviePosterImageView: UIImageView!
    @IBOutlet weak var MovieTitleLabel: UILabel!
    @IBOutlet weak var MovieSynopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MovieTitleLabel.text = movie["title"] as? String
        MovieTitleLabel.sizeToFit()
        MovieSynopsisLabel.text = movie["overview"] as? String
        MovieSynopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        MoviePosterImageView.af.setImage(withURL: posterURL!)
        
        let backdropBase = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: backdropBase + backdropPath)
        
        BackdropImageView.af.setImage(withURL: backdropURL!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
