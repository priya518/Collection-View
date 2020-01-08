//
//  ViewController.swift
//  CollectionView
//
//  Created by Priya Patel on 26/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
    
    var arr = [["Image":    #imageLiteral(resourceName: "IMG_2846.jpg")   , "Name": " Watch" , "Price"  : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2857")   , "Name": " Mask" , "Price"   : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2856")   , "Name": " Tie" , "Price"    : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2854")   , "Name": " Facewash" , "Price" : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2850")   , "Name": " Lucky" , "Price"   : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2853")   , "Name": " Cream" , "Price"  : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2851")   , "Name": " Gogles" , "Price"   : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2855")   , "Name": " Facewash" , "Price"  : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2847")   , "Name": " Cream" , "Price"   : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2858")   , "Name": " Hat" , "Price"  : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2846.jpg")   , "Name": " Watch" , "Price"  : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2857")   , "Name": " Mask" , "Price"   : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2856")   , "Name": " Tie" , "Price"    : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2854")   , "Name": " Facewash" , "Price" : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2850")   , "Name": " Lucky" , "Price"   : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2853")   , "Name": " Cream" , "Price"  : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2851")   , "Name": " Gogles" , "Price"   : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2855")   , "Name": " Facewash" , "Price"  : "200" ],
               ["Image":    #imageLiteral(resourceName: "IMG_2847")   , "Name": " Cream" , "Price"   : "200" ]
            ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Mycell", for: indexPath) as! MyCollectionViewCell
        
        cell.img.image = self.arr[indexPath.row]["Image"] as? UIImage
        cell.Name.text = self.arr[indexPath.row]["Name"] as? String
        cell.Price.text = self.arr[indexPath.row]["Price"] as? String
        
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.darkGray.cgColor
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.darkGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 100.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        let rotationTransformation = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransformation
        cell.alpha = 0.5
        UIView.animate(withDuration: 0.5)
        {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailscene = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(detailscene, animated: true)
        detailscene.img3 = arr[indexPath.row]["Image"] as! UIImage
        detailscene.name = arr[indexPath.row]["Name"] as! String
         detailscene.oldpri = arr[indexPath.row]["Price"] as! String
        detailscene.newpri = arr[indexPath.row]["Price"] as! String
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

