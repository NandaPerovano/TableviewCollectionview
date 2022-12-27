//
//  UserDetailView.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 04/12/22.
//

import UIKit

class UserDetailView: UIView {

    lazy var articulationImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
       // image.layer.cornerRadius = 100
        return image
    }()
    
    lazy var articulationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
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
        self.addSubview(self.articulationImageView)
        self.addSubview(self.articulationLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            self.articulationImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.articulationImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.articulationImageView.heightAnchor.constraint(equalToConstant: 140),
            self.articulationImageView.widthAnchor.constraint(equalToConstant: 140),
            
            self.articulationLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
           // self.articulationLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            self.articulationLabel.leadingAnchor.constraint(equalTo: self.articulationImageView.trailingAnchor, constant: 20),
            self.articulationLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
