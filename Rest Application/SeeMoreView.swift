//
//  SeeMoreView.swift
//  Rest Application
//
//  Created by Antonio on 12/11/22.
//

import UIKit

class SeeMoreView: UIView {

    override init(frame: CGRect) {
            super.init(frame: UIScreen.main.bounds)
            commonInit()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
    
    private func commonInit(){
        addingSubViews()
        seeMoreCollectionViewViewConstraints()
        }
    
    private func addingSubViews(){
        self.addSubview(seeMoreCollectionView)
    }
    
    
    lazy var seeMoreCollectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
       let seeMoreCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
       layout.itemSize = CGSize(width: UIScreen.main.bounds.width/2 - 10, height: 190)
       layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
        layout.minimumInteritemSpacing = 0.0
       layout.scrollDirection = .vertical
       return seeMoreCollectionView
   }()
    
    private func seeMoreCollectionViewViewConstraints(){
        seeMoreCollectionView.translatesAutoresizingMaskIntoConstraints = false
        seeMoreCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        seeMoreCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        seeMoreCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -0).isActive = true
        seeMoreCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        }
    
}
