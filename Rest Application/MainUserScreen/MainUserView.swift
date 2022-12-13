//
//  mainUserView.swift
//  Rest Application
//
//  Created by Antonio on 11/19/22.
//

import UIKit

class MainUserView: UIView {
   
    
    lazy var contentViewSize = CGSize(width: self.frame.width, height: self.frame.height - 70)
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .white
        scrollView.frame = self.bounds
        scrollView.contentSize = contentViewSize
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var containerView: UIView = {
        let containerView = UIView()
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
    
     lazy var eatoftheweekSeeMoreButton: UIButton = {
        let eatoftheweekSeeMoreButton = UIButton()
        eatoftheweekSeeMoreButton.setTitle("See More", for: .normal)
        eatoftheweekSeeMoreButton.setTitleColor(UIColor.black, for: .normal)
        eatoftheweekSeeMoreButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return eatoftheweekSeeMoreButton
    }()
    

     lazy var eatoftheWeekCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let eatoftheWeekCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width/2 - 10, height: 190)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.minimumInteritemSpacing = 0.0
        layout.scrollDirection = .horizontal
        return eatoftheWeekCollectionView
    }()

    
    private lazy var nearYouLabel: UILabel = {
        let nearYouLabel = UILabel()
        nearYouLabel.text = "Near You"
        return nearYouLabel
    }()
    
     lazy var nearYouSeeMoreButton: UIButton = {
        let nearYouSeeMoreButton = UIButton()
         nearYouSeeMoreButton.setTitle("See More", for: .normal)
         nearYouSeeMoreButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)

        nearYouSeeMoreButton.setTitleColor(UIColor.black, for: .normal)
        return nearYouSeeMoreButton
    }()
    
    
    lazy var nearYouCollectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
       let nearYouCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
       layout.itemSize = CGSize(width: UIScreen.main.bounds.width/2 - 10, height: 190)
       layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
       layout.minimumInteritemSpacing = 0.0
       layout.scrollDirection = .horizontal
      
       return nearYouCollectionView
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
        eatoftheweekSeeMoreButtonConstraints()
        eatoftheWeekCollectionViewConstraints()
        nearYouLabelConstraints()
        nearYouSeeMoreButtonConstraints()
        nearYouCollectionViewConstraints()
       }
    
    private func addingSubViews(){
        scrollView.addSubview(containerView)
        containerView.addSubview(mainUserSearchBar)
        containerView.addSubview(filterRestButton)
        containerView.addSubview(eatofWeekLabel)
        containerView.addSubview(eatoftheweekSeeMoreButton)
        containerView.addSubview(eatoftheWeekCollectionView)
        containerView.addSubview(nearYouLabel)
        containerView.addSubview(nearYouSeeMoreButton)
        containerView.addSubview(nearYouCollectionView)
    }
    
    private func mainUserSearchBarConstraints(){
        mainUserSearchBar.translatesAutoresizingMaskIntoConstraints = false
        mainUserSearchBar.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        mainUserSearchBar.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        mainUserSearchBar.trailingAnchor.constraint(equalTo: filterRestButton.leadingAnchor, constant: -10).isActive = true
        }
    
    private func filterRestButtonConstraints(){
        filterRestButton.translatesAutoresizingMaskIntoConstraints = false
        filterRestButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20).isActive = true
        filterRestButton.leadingAnchor.constraint(equalTo: mainUserSearchBar.trailingAnchor, constant: 10).isActive = true
        filterRestButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        filterRestButton.bottomAnchor.constraint(equalTo: mainUserSearchBar.bottomAnchor, constant: 0).isActive = true
        }
    
    private func eatofWeekLabelConstraints(){
        eatofWeekLabel.translatesAutoresizingMaskIntoConstraints = false
        eatofWeekLabel.topAnchor.constraint(equalTo: mainUserSearchBar.bottomAnchor, constant: 24).isActive = true
        eatofWeekLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        }
    
    private func eatoftheweekSeeMoreButtonConstraints(){
        eatoftheweekSeeMoreButton.translatesAutoresizingMaskIntoConstraints = false
        eatoftheweekSeeMoreButton.topAnchor.constraint(equalTo: filterRestButton.bottomAnchor, constant: 24).isActive = true
        eatoftheweekSeeMoreButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        eatoftheweekSeeMoreButton.bottomAnchor.constraint(equalTo: eatofWeekLabel.bottomAnchor, constant: 0).isActive = true
    }
    
    private func eatoftheWeekCollectionViewConstraints(){
        eatoftheWeekCollectionView.translatesAutoresizingMaskIntoConstraints = false
        eatoftheWeekCollectionView.topAnchor.constraint(equalTo: eatofWeekLabel.bottomAnchor, constant: 10).isActive = true
        eatoftheWeekCollectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        eatoftheWeekCollectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        eatoftheWeekCollectionView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.3).isActive = true

        }
    
    private func nearYouLabelConstraints(){
        nearYouLabel.translatesAutoresizingMaskIntoConstraints = false
        nearYouLabel.topAnchor.constraint(equalTo: eatoftheWeekCollectionView.bottomAnchor, constant: 24).isActive = true
        nearYouLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true

        }
    
    private func nearYouSeeMoreButtonConstraints(){
        nearYouSeeMoreButton.translatesAutoresizingMaskIntoConstraints = false
        nearYouSeeMoreButton.topAnchor.constraint(equalTo: eatoftheWeekCollectionView.bottomAnchor, constant: 24).isActive = true
        nearYouSeeMoreButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        nearYouSeeMoreButton.bottomAnchor.constraint(equalTo: nearYouLabel.bottomAnchor, constant: 0).isActive = true

        }

    private func nearYouCollectionViewConstraints(){
        nearYouCollectionView.translatesAutoresizingMaskIntoConstraints = false
        nearYouCollectionView.topAnchor.constraint(equalTo: nearYouLabel.bottomAnchor, constant: 15).isActive = true
        nearYouCollectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        nearYouCollectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        nearYouCollectionView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.3).isActive = true
        }

}
