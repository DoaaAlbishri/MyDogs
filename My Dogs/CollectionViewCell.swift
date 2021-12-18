//
//  CollectionViewCell.swift
//  My Dogs
//
//  Created by admin on 18/12/2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dogImageView: UIImageView!
    
    @IBOutlet weak var dogName: UILabel!
    
    func showImage(img image:UIImage , name dname:String){
        dogImageView.image  = image
        dogName.text = dname
    }
}
