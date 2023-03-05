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
        self.addSubview(defaultImageView)
        self.addSubview(favoriteRestButton)
        self.addSubview(restNameLabel)
        self.addSubview(restDetailLabel)
        self.addSubview(restaAdressLabel)

    }
    
    private func celllayoutDispalyConstraints(){
        favoriteButtonConstraints()
        restImageDisplayConstraints()
        restaAdressLabelConstraints()
        restDetailLabelConstraints()
        restNameLabelConstraints()

    }
    

    private func favoriteButtonConstraints(){
        favoriteRestButton.translatesAutoresizingMaskIntoConstraints = false
        favoriteRestButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        favoriteRestButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        }
    
    private func restImageDisplayConstraints(){
         defaultImageView.translatesAutoresizingMaskIntoConstraints = false
         defaultImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
         defaultImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
         defaultImageView.leadingAnchor.constraint(equalTo:  self.leadingAnchor, constant: 0).isActive = true
         defaultImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        }
    
    
    private lazy var defaultImageView: UIImageView = {
        var defaultImageView = UIImageView()
        var defaultImage = UIImage(named: "default-image")
        defaultImageView = UIImageView(image: defaultImage)
        defaultImageView.contentMode = .scaleToFill
        return defaultImageView
    }()
    
    private func restNameLabelConstraints(){
        restNameLabel.translatesAutoresizingMaskIntoConstraints = false
        restNameLabel.bottomAnchor.constraint(equalTo: restDetailLabel.topAnchor, constant: -3).isActive = true
        restNameLabel.trailingAnchor.constraint(equalTo: defaultImageView.trailingAnchor, constant: -10).isActive = true
        restNameLabel.leadingAnchor.constraint(equalTo:  defaultImageView.leadingAnchor, constant: 10).isActive = true
        }
   
    private func restDetailLabelConstraints(){
        restDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        restDetailLabel.bottomAnchor.constraint(equalTo: restaAdressLabel.topAnchor, constant: -3).isActive = true
        restDetailLabel.trailingAnchor.constraint(equalTo: defaultImageView.trailingAnchor, constant: -10).isActive = true
        restDetailLabel.leadingAnchor.constraint(equalTo:  defaultImageView.leadingAnchor, constant: 10).isActive = true
    }
    
    private func restaAdressLabelConstraints(){
        restaAdressLabel.translatesAutoresizingMaskIntoConstraints = false
        restaAdressLabel.bottomAnchor.constraint(equalTo: defaultImageView.bottomAnchor, constant: -3).isActive = true
        restaAdressLabel.trailingAnchor.constraint(equalTo: defaultImageView.trailingAnchor, constant: -10).isActive = true
        restaAdressLabel.leadingAnchor.constraint(equalTo:  defaultImageView.leadingAnchor, constant: 10).isActive = true
    }
    
   
    
    private lazy var favoriteRestButton: UIButton = {
        let favoriteButton = UIButton()
        let boldConfig = UIImage.SymbolConfiguration(weight: .bold)
        favoriteButton.setTitle("Fav", for: .normal)
        favoriteButton.setTitleColor(UIColor.black, for: .normal)
        return favoriteButton
    }()
    
    private lazy var restNameLabel: UILabel = {
        let restNameLabel = UILabel()
        restNameLabel.text = "1 Test Testy * testing test"
        restNameLabel.font = UIFont(name:"ArialRoundedMTBold", size: 10.0)
        return restNameLabel
    }()
    
    private lazy var restDetailLabel: UILabel = {
        let restDetailLabel = UILabel()
        restDetailLabel.text =  "2 Testy * testing * test"
        restDetailLabel.font = UIFont(name:"ArialRoundedMTBold", size: 9.0)
        return restDetailLabel
    }()
    
    private lazy var restaAdressLabel: UILabel = {
        let restaAdressLabel = UILabel()
        restaAdressLabel.text =  "321 * THS2492"
        restaAdressLabel.font = UIFont(name:"ArialRoundedMTBold", size: 9.0)
        return restaAdressLabel
    }()
    
}
