//
//  CollectionViewController.swift
//  My Dogs
//
//  Created by admin on 18/12/2021.
//

import UIKit

private let reuseIdentifier = "Cell"

struct Dog{
    var name : String
    var color:String
    var treat:String
    var image:UIImage?
}

protocol ViewControllerDelegate:class {
    func saveItem(by controller: ViewController, with dog:Dog , at indexPath:NSIndexPath?)
    func cancelItem(_ controller: ViewController)
}

class CollectionViewController: UICollectionViewController {

    var imgArr = [Dog]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        if let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CollectionViewCell {
            imageCell.dogName.text = imgArr[indexPath.row].name
            imageCell.dogImageView.image = imgArr[indexPath.row].image
            //imageCell.showImage(img: imgArr[indexPath.row].image, name: imgArr[indexPath.row].name )
            //cell = imageCell
        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }


    func saveItem(by controller: ViewController, with dog:Dog , at indexPath:NSIndexPath?){
        if let ip = indexPath {
        imgArr[ip.row] = dog
        }else{
            imgArr.append(dog)
        }
        collectionView.reloadData()
    }
    
    
}
