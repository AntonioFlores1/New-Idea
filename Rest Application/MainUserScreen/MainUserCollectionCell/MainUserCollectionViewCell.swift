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
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       func setupCell(colour: UIColor) {
           self.backgroundColor = colour
           self.layer.borderWidth = 1.0
           self.layer.borderColor = UIColor.lightGray.cgColor
       }
    
}
