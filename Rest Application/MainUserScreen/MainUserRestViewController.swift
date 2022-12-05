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
        view.addSubview(mainUserView)

        self.navigationItem.setTitle("Hello Antonio Good morning", subtitle: "Find Your Place")
//        self.navigationItem.largeTitleDisplayMode = .never
//        self.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = false
        mainUserView.eatoftheWeekCollectionView.delegate = self
        mainUserView.eatoftheWeekCollectionView.dataSource = self
        mainUserView.eatoftheWeekCollectionView.register(MainUserCollectionViewCell.self, forCellWithReuseIdentifier: "mainCollectionCellIdentifier")
        mainUserView.eatoftheWeekCollectionView.alwaysBounceHorizontal = true


        textlabel.text = "Hi"
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mainUserView.eatoftheWeekCollectionView.dequeueReusableCell(withReuseIdentifier: "mainCollectionCellIdentifier", for: indexPath as IndexPath)
        
        cell.backgroundColor = UIColor.green

        return cell
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
        stackView.alignment = .leading
        stackView.axis = .vertical
        self.titleView = stackView
    }

}
