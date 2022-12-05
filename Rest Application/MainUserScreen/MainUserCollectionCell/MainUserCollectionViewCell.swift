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
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       func setupCell(colour: UIColor) {
           self.backgroundColor = colour
       }
    
}
