//
//  SeeMoreViewController.swift
//  Rest Application
//
//  Created by Antonio on 12/11/22.
//

import UIKit

class SeeMoreViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var seeMoreView = SeeMoreView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(seeMoreView)
        view.backgroundColor = .white
        
        seeMoreView.seeMoreCollectionView.dataSource = self
        seeMoreView.seeMoreCollectionView.delegate = self
        
        seeMoreView.seeMoreCollectionView.register(SeeMoreCollectionViewCell.self, forCellWithReuseIdentifier: "seeMoreCellIdentifier")
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let seeMorecell = seeMoreView.seeMoreCollectionView.dequeueReusableCell(withReuseIdentifier: "seeMoreCellIdentifier", for: indexPath as IndexPath)
        seeMorecell.backgroundColor = UIColor.green
        
        return seeMorecell
    }
    
}
