//
//  ViewController.swift
//  Rest Application
//
//  Created by Antonio on 10/28/22.
//

import UIKit

class MainUserRestViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let mainUserView = MainUserView()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setTitle("Hello Antonio Good morning", subtitle: "Find Your Place")
//        navigationItem.title = "Hello Antonio Good morning, Find Your Place to eat"
//        self.navigationItem.largeTitleDisplayMode = .never
//        self.navigationItem.largeTitleDisplayMode = .always
//           self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13)]
        
        mainUserView.eatoftheWeekCollectionView.delegate = self
        mainUserView.eatoftheWeekCollectionView.dataSource = self
        
        mainUserView.nearYouCollectionView.delegate = self
        mainUserView.nearYouCollectionView.dataSource = self
        
        mainUserView.eatoftheWeekCollectionView.register(MainUserCollectionViewCell.self, forCellWithReuseIdentifier: "mainUserCollectionCellIdentifier")
        
        mainUserView.nearYouCollectionView.register(MainUserCollectionViewCell.self, forCellWithReuseIdentifier: "nearYouCollectionCellIdentifier")
        
        
        mainUserView.nearYouCollectionView.alwaysBounceHorizontal = true
        mainUserView.eatoftheWeekCollectionView.alwaysBounceHorizontal = true
        
        mainUserView.nearYouSeeMoreButton.addTarget(self, action: #selector(nearYouSeeMoreButtonAction), for: .touchUpInside)
        
        mainUserView.eatoftheweekSeeMoreButton.addTarget(self, action: #selector(eatoftheweekSeeMoreButtonAction), for: .touchUpInside)

        view.addSubview(mainUserView.scrollView)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        mainUserView.scrollView.topAnchor.constraint(equalTo: navigationController?.navigationBar.bottomAnchor ?? view.topAnchor).isActive = true
        mainUserView.scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainUserView.scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainUserView.scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    @objc func eatoftheweekSeeMoreButtonAction(sender: UIButton!) {
        let seeMoreViewController = SeeMoreViewController()
        self.navigationController?.pushViewController(seeMoreViewController, animated: true)
      print("eat of the week Button tapped")
    }
    
    @objc func nearYouSeeMoreButtonAction(sender: UIButton!) {
        let seeMoreViewController = SeeMoreViewController()
        self.navigationController?.pushViewController(seeMoreViewController, animated: true)
      print("Near you Button tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == mainUserView.eatoftheWeekCollectionView {
            
            return 10

        } else {

            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let restMainInfoViewController = RestMainInfoViewController()
        self.navigationController?.pushViewController(restMainInfoViewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mainUserView.eatoftheWeekCollectionView {
            let mainUsercell = mainUserView.eatoftheWeekCollectionView.dequeueReusableCell(withReuseIdentifier: "mainUserCollectionCellIdentifier", for: indexPath as IndexPath)
            
//            mainUsercell.layer.cornerRadius = 15.0
//            mainUsercell.layer.borderWidth = 0.0
//            mainUsercell.layer.shadowColor = UIColor.black.cgColor
//            mainUsercell.layer.shadowOffset = CGSize(width: 0, height: 0)
//            mainUsercell.layer.shadowRadius = 5.0
//            mainUsercell.layer.shadowOpacity = 1
//            mainUsercell.layer.masksToBounds = false

            return mainUsercell
        } else {
            let nearUsercell = mainUserView.nearYouCollectionView.dequeueReusableCell(withReuseIdentifier: "nearYouCollectionCellIdentifier", for: indexPath as IndexPath)

            return nearUsercell
        }
    
    }
    
    
    

}

extension UINavigationItem {

    func setTitle(_ title: String, subtitle: String) {
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = .systemFont(ofSize: 20.0)
        titleLabel.textColor = .black

        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.font = .systemFont(ofSize: 17.0)
        subtitleLabel.textColor = .darkGray

        let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .leading
        stackView.axis = .vertical
        self.titleView = stackView
        
    }

}
