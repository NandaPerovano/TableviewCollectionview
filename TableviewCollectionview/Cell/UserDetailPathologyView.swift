//
//  UserDetailPathologyView.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 20/02/23.
//

import UIKit

class UserDetailPathologyView: UIView {
    
    lazy var diseaseLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.addSubview(self.diseaseLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            self.diseaseLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.diseaseLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.diseaseLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
            
            //self.diseaseLabel.heightAnchor.constraint(equalToConstant: 140),
            //self.diseaseLabel.widthAnchor.constraint(equalToConstant: 140),
        ])
    }
}

