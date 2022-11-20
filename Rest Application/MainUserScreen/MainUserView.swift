//
//  mainUserView.swift
//  Rest Application
//
//  Created by Antonio on 11/19/22.
//

import UIKit

class MainUserView: UIView {
   
    public lazy var mainUserSearchBar: UISearchBar = {
        let mainUserSearchBar = UISearchBar()
        mainUserSearchBar.backgroundColor = .blue
           return mainUserSearchBar
       }()
    
    
        
    override init(frame: CGRect) {
            super.init(frame: UIScreen.main.bounds)
            commonInit()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
    
    private func commonInit(){
        mainUserUIConstraints()
        }
    
    private func mainUserUIConstraints(){
        mainUserSearchBarConstraints()
       }
    
    
    private func mainUserSearchBarConstraints(){
            addSubview(mainUserSearchBar)
        mainUserSearchBar.translatesAutoresizingMaskIntoConstraints = false
        mainUserSearchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        mainUserSearchBar.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        mainUserSearchBar.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        }
    
    
}
