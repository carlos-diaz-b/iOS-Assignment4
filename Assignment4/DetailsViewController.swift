//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Carlos andres Diaz bravo  on 2020-04-24.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class Label1: UILabel {
    init() {
        
        super.init(frame: CGRect.zero)
NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 15),
            self.widthAnchor.constraint(equalToConstant: 100)])
            self.translatesAutoresizingMaskIntoConstraints = false
            self.textAlignment = .center
    }
    
                required init?(coder: NSCoder) {
                fatalError("initializer error")
    }
}

class DetailsViewController: UIViewController {
    
    var cities: City!

    let citystackview: UIStackView = {
        
    let stackView1 = UIStackView()
        
        stackView1.distribution = .equalSpacing
        stackView1.axis = .vertical
        stackView1.translatesAutoresizingMaskIntoConstraints = true
      
        return stackView1
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

NSLayoutConstraint.activate([
            citystackview.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            citystackview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90),
            citystackview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            citystackview.trailingAnchor.constraint(equalTo: view.trailingAnchor),])
        view.addSubview(citystackview)
        
        let topLabel = Label1()
        let tagLabel = Label1()
        
        let CityInfo: [(String, String)] = [
            ("city", cities.name),
            ("temperature", String(cities.temp)),
            ("precipitation", String(cities.precipitation)),
            ("country", cities.icon),
            ("summary", cities.summary)]

        for (key, value) in CityInfo {
            
            citystackview.addArrangedSubview(topLabel)
                topLabel.text = key
            
            citystackview.addArrangedSubview(tagLabel)
                tagLabel.text = value
            
        }

    }
}
