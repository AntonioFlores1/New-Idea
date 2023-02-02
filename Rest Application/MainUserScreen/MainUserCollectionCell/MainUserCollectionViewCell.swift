//
//  MainUserCollectionViewCell.swift
//  Rest Application
//
//  Created by Antonio on 12/4/22.
//

import UIKit

class MainUserCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
           super.init(frame: frame)
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.lightGray.cgColor
        addingDisplayToView()
        celllayoutDispalyConstraints()
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    private func addingDisplayToView(){
        self.addSubview(favoriteRestButton)
        self.addSubview(restImageDisplay)
//        self.addSubview(favoriteRestButton)
    }
    
    private func celllayoutDispalyConstraints(){
        favoriteButtonConstraints()
    }
    

    private func favoriteButtonConstraints(){
        favoriteRestButton.translatesAutoresizingMaskIntoConstraints = false
        favoriteRestButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        favoriteRestButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        }
    
    private func restImageDisplayConstraints(){
        restImageDisplay.translatesAutoresizingMaskIntoConstraints = false
        restImageDisplay.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        restImageDisplay.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        restImageDisplay.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        restImageDisplay.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10).isActive = true
        }
   

    
    private lazy var favoriteRestButton: UIButton = {
        let favoriteButton = UIButton()
        let boldConfig = UIImage.SymbolConfiguration(weight: .bold)
        favoriteButton.setTitle("Fav", for: .normal)
        favoriteButton.setTitleColor(UIColor.black, for: .normal)
        return favoriteButton
    }()
    
    private lazy var restImageDisplay: UIImageView = {
        var restImageDisplay = UIImageView()
        var defaultImage = UIImage(named: "default-image")
        restImageDisplay = UIImageView(image: defaultImage)
        restImageDisplay.contentMode = .scaleAspectFit
//        let boldConfig = UIImage.SymbolConfiguration(weight: .bold)
//        restImageDisplay.setTitle("Fav", for: .normal)
//        restImageDisplay.setTitleColor(UIColor.black, for: .normal)
        return restImageDisplay
    }()
    
}
