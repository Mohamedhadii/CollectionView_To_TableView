//
//  TableViewCell.swift
//  CollectioionView_To _TableView
//
//  Created by Hady on 1/9/20.
//  Copyright © 2020 gadou. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
   
    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self as UICollectionViewDelegate
        collectionView.dataSource = self as UICollectionViewDataSource
        
        setupCollectionViewLayout()
    }
    
    var myAnimals: [animals] = [
    animals(imageName: "1", desc: "Animal 1"),
    animals(imageName: "2", desc: "Animal 2"),
    animals(imageName: "3", desc: "Animal 3"),
    animals(imageName: "4", desc: "Animal 4"),
    animals(imageName: "5", desc: "Animal 5"),
    animals(imageName: "6", desc: "Animal 6"),
    animals(imageName: "7", desc: "Animal 7"),
    animals(imageName: "8", desc: "Animal 8"),
    animals(imageName: "9", desc: "Animal 9"),
    animals(imageName: "10", desc: "Animal 10"),
    animals(imageName: "11", desc: "Animal 11"),
    animals(imageName: "1", desc: "Animal 1"),
    animals(imageName: "2", desc: "Animal 2"),
    animals(imageName: "3", desc: "Animal 3"),
    animals(imageName: "4", desc: "Animal 4"),
    animals(imageName: "5", desc: "Animal 5"),
    animals(imageName: "6", desc: "Animal 6"),
    animals(imageName: "7", desc: "Animal 7"),
    animals(imageName: "8", desc: "Animal 8"),
    animals(imageName: "9", desc: "Animal 9"),
    animals(imageName: "10", desc: "Animal 10"),
    animals(imageName: "11", desc: "Animal 11")
    ]

}
extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myAnimals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.myImage.image = UIImage(named: myAnimals[indexPath.row].imageName)
        cell.desc.text = myAnimals[indexPath.row].desc
        return cell
    }
    
    
    
   func setupCollectionViewLayout(){
       let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: 100, height: 90) // manage how many image in row
//        layout.headerReferenceSize = CGSize(width: 100, height: 90)
       layout.scrollDirection = .horizontal
       collectionView.collectionViewLayout = layout
    }

}
