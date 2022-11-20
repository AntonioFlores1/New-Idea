//
//  ViewController.swift
//  Rest Application
//
//  Created by Antonio on 10/28/22.
//

import UIKit

class MainUserRestViewController: UIViewController {
    
    var mainUserView = MainUserView()
    
    @IBOutlet weak var textlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.navigationController?.navigationBar.preferredBehavioralStyle =
//        self.navigationItem.setTitle(<#T##title: String##String#>, subtitle: T##String)
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.largeTitleDisplayMode = .always
        
        view.addSubview(mainUserView)
//        self.navigationItem.titleView?.backgroundColor = .red
//        self.navigationItem.setTitle("Hello Antonio Good morning", subtitle: "Back up Test")
        self.navigationItem.title = "Hello Antonio Good morning"

//        self.navigationItem.prompt = "Back up Test"
        textlabel.text = "Hi"
        
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
