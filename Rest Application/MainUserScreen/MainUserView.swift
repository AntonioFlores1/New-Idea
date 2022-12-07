//
//  mainUserView.swift
//  Rest Application
//
//  Created by Antonio on 11/19/22.
//

import UIKit

class MainUserView: UIView {
    
    lazy var contentViewSize = CGSize(width: self.frame.width, height: self.frame.height + 100)
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .red
        scrollView.frame = self.bounds
        scrollView.contentSize = contentViewSize
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var containerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .blue
        containerView.frame.size = contentViewSize
        return containerView
    }()

    
    public lazy var mainUserSearchBar: UISearchBar = {
        let mainUserSearchBar = UISearchBar()
        mainUserSearchBar.barTintColor = .white
//        mainUserSearchBar.
           return mainUserSearchBar
       }()
    
    private lazy var filterRestButton: UIButton = {
        let filterRestButton = UIButton()
        let boldConfig = UIImage.SymbolConfiguration(weight: .bold)
        let boldSearch = UIImage(systemName: "search", withConfiguration: boldConfig)
        filterRestButton.setTitle("Filter", for: .normal)
        filterRestButton.setTitleColor(UIColor.black, for: .normal)
        return filterRestButton
    }()
    
    private lazy var eatofWeekLabel: UILabel = {
        let eatofWeekLabel = UILabel()
        eatofWeekLabel.text = "Eat of the Week"
        return eatofWeekLabel
    }()
    
    private lazy var eatofweekSeeMoreLabel: UILabel = {
        let eatOfWeekSeeMoreLabel = UILabel()
        eatOfWeekSeeMoreLabel.text = "See More"
        return eatOfWeekSeeMoreLabel
    }()
    
     lazy var eatoftheWeekCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let eatoftheWeekCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        let viewLayout = UICollectionViewFlowLayout()
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
//        collectionView.backgroundColor = .white
        eatoftheWeekCollectionView.backgroundColor = .blue
        layout.scrollDirection = .horizontal
        return eatoftheWeekCollectionView
    }()
    

    
    private lazy var nearYouLabel: UILabel = {
        let nearYouLabel = UILabel()
        nearYouLabel.text = "Near You"
        return nearYouLabel
    }()
    
    private lazy var nearYouSeeMoreLabel: UILabel = {
        let nearYouSeeMoreLabel = UILabel()
        nearYouSeeMoreLabel.text = "See More"
        return nearYouSeeMoreLabel
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
        mainUserScreenUIConstraints()
        }
    
    private func mainUserScreenUIConstraints(){
        addingSubViews()
        mainUserSearchBarConstraints()
        filterRestButtonConstraints()
        eatofWeekLabelConstraints()
        eatofweekSeeMoreLabelConstraints()
        eatoftheWeekCollectionViewConstraints()
       }
    
    private func addingSubViews(){
        scrollView.addSubview(containerView)
        containerView.addSubview(mainUserSearchBar)
        containerView.addSubview(filterRestButton)
        containerView.addSubview(eatofWeekLabel)
        containerView.addSubview(eatofweekSeeMoreLabel)
        containerView.addSubview(eatoftheWeekCollectionView)
    }
    
    private func mainUserSearchBarConstraints(){
        mainUserSearchBar.translatesAutoresizingMaskIntoConstraints = false
        mainUserSearchBar.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        mainUserSearchBar.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        mainUserSearchBar.trailingAnchor.constraint(equalTo: filterRestButton.leadingAnchor, constant: -10).isActive = true
        }
    
    private func filterRestButtonConstraints(){
        filterRestButton.translatesAutoresizingMaskIntoConstraints = false
        filterRestButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        filterRestButton.leadingAnchor.constraint(equalTo: mainUserSearchBar.trailingAnchor, constant: 10).isActive = true
        filterRestButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        filterRestButton.bottomAnchor.constraint(equalTo: mainUserSearchBar.bottomAnchor, constant: 0).isActive = true
        }
    
    private func eatofWeekLabelConstraints(){
        eatofWeekLabel.translatesAutoresizingMaskIntoConstraints = false
        eatofWeekLabel.topAnchor.constraint(equalTo: mainUserSearchBar.bottomAnchor, constant: 10).isActive = true
        eatofWeekLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        }
    
    private func eatofweekSeeMoreLabelConstraints(){
        eatofweekSeeMoreLabel.translatesAutoresizingMaskIntoConstraints = false
        eatofweekSeeMoreLabel.topAnchor.constraint(equalTo: filterRestButton.bottomAnchor, constant: 10).isActive = true
        eatofweekSeeMoreLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        }
    
    private func eatoftheWeekCollectionViewConstraints(){
        eatoftheWeekCollectionView.translatesAutoresizingMaskIntoConstraints = false
        eatoftheWeekCollectionView.topAnchor.constraint(equalTo: eatofWeekLabel.bottomAnchor, constant: 10).isActive = true
        eatoftheWeekCollectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        eatoftheWeekCollectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        eatoftheWeekCollectionView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10).isActive = true
        }
    
    
}
