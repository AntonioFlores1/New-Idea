//
//  ViewController.swift
//  Rest Application
//
//  Created by Antonio on 10/28/22.
//

import UIKit

class MainUserRestViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let mainUserView = MainUserView()
    
    @IBOutlet weak var textlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow

        self.navigationItem.setTitle("Hello Antonio Good morning", subtitle: "Find Your Place")
//        navigationItem.title = "Hello Antonio Good morning, Find Your Place to eat"
        navigationItem.titleView?.backgroundColor = .cyan
        navigationController?.navigationBar.backgroundColor = .orange
//        self.navigationItem.largeTitleDisplayMode = .never
//        self.navigationItem.largeTitleDisplayMode = .always
//           self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13)]
        
        mainUserView.eatoftheWeekCollectionView.delegate = self
        mainUserView.eatoftheWeekCollectionView.dataSource = self
        
        mainUserView.nearYouCollectionView.delegate = self
        mainUserView.nearYouCollectionView.dataSource = self
        
        mainUserView.eatoftheWeekCollectionView.register(MainUserCollectionViewCell.self, forCellWithReuseIdentifier: "mainUserCollectionCellIdentifier")
        mainUserView.nearYouCollectionView.register(MainUserCollectionViewCell.self, forCellWithReuseIdentifier: "nearUserCollectionCellIdentifier")
        
        
        mainUserView.nearYouCollectionView.alwaysBounceHorizontal = true
        mainUserView.eatoftheWeekCollectionView.alwaysBounceHorizontal = true


        textlabel.text = "Hi"
        
        
//        mainUserView.scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        view.addSubview(mainUserView.scrollView)

    }
    override func viewDidAppear(_ animated: Bool) {
        mainUserView.scrollView.topAnchor.constraint(equalTo: navigationController?.navigationBar.bottomAnchor ?? view.topAnchor).isActive = true
        mainUserView.scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainUserView.scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainUserView.scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == mainUserView.eatoftheWeekCollectionView {
            
            return 10

        } else {

            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mainUserView.eatoftheWeekCollectionView {
            let mainUsercell = mainUserView.eatoftheWeekCollectionView.dequeueReusableCell(withReuseIdentifier: "mainUserCollectionCellIdentifier", for: indexPath as IndexPath)
            mainUsercell.backgroundColor = UIColor.green

            return mainUsercell
        } else {
            let nearUsercell = mainUserView.nearYouCollectionView.dequeueReusableCell(withReuseIdentifier: "nearUserCollectionCellIdentifier", for: indexPath as IndexPath)
            nearUsercell.backgroundColor = UIColor.green

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
        stackView.backgroundColor = .green
        stackView.axis = .vertical
        self.titleView = stackView
        
    }

}
