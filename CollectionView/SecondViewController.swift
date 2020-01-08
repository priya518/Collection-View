//
//  SecondViewController.swift
//  CollectionView
//
//  Created by Priya Patel on 26/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var Name1: UILabel!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var oldp1: UILabel!
    
    @IBOutlet weak var newp1: UILabel!
    
    var img3 = UIImage()
    var name = ""
    var oldpri = ""
    var newpri = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        img2.image = img3
        Name1.text = name
        oldp1.text = oldpri
        newp1.text = newpri
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
