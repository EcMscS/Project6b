//
//  MainVC.swift
//  Autolayout_VisualFormat
//
//  Created by Jeffrey Lai on 10/23/19.
//  Copyright © 2019 Jeffrey Lai. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupViews()
        setupLabels()
        
        //Different forms of Autolayout
        //setupVisualFormatContraints()
        setupUsingStackview()
    }
    
    func setupNavBar() {
        title = "Autolayout"
        navigationController?.navigationBar.barTintColor = .systemYellow
        navigationController?.navigationBar.isTranslucent = true
    }
    
    func setupViews() {
        self.view.backgroundColor = .systemBackground
    }

    func setupVisualFormatContraints() {
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        
        //Horizontal Visual Layout Constraints
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        }
        
        //Vertical Visual Layout Constraints
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1]-[label2]-[label3]-[label4]-[label5]", options: [], metrics: nil, views: viewsDictionary))
        
    }
    
    func setupUsingStackview() {
        let labelViews = [label1, label2, label3, label4, label5]
        let labelStackview = UIStackView(arrangedSubviews: labelViews)

        view.addSubview(labelStackview)
        
        labelStackview.translatesAutoresizingMaskIntoConstraints = false
        labelStackview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        labelStackview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        labelStackview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        labelStackview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        labelStackview.axis = .vertical
        labelStackview.distribution = .fillProportionally
    }
    
    func setupLabels() {
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .systemRed
        label1.text = "THESE"
        label1.textAlignment = .center
        label1.sizeToFit()
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .systemBlue
        label2.text = "ARE"
        label2.textAlignment = .center
        label2.sizeToFit()
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .systemPink
        label3.text = "SOME"
        label3.textAlignment = .center
        label3.sizeToFit()
        
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .systemGreen
        label4.text = "COOL"
        label4.textAlignment = .center
        label4.sizeToFit()
    
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .systemYellow
        label5.text = "LABELS"
        label5.textAlignment = .center
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
    }
    
    
}
