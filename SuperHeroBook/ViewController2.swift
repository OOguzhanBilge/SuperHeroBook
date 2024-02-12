//
//  ViewController2.swift
//  SuperHeroBook
//
//  Created by Oğuzhan Bilge on 12.02.2024.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var titleLabel2: UILabel!
    
    @IBOutlet weak var txtView: UITextView!
    var selectSuperHeroName = ""
    var selectSuperHeroİmage = ""
    var selectSuperHeroText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView2.image = UIImage(named: selectSuperHeroİmage)
        titleLabel2.text = selectSuperHeroName
        txtView.text = selectSuperHeroText
        
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

