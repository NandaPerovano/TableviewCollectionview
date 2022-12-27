//
//  HomeScreen.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 04/12/22.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemYellow
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "Principais patologias das articulações na Fisioterapia"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var tableview: UITableView  = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.register(UserDetailTableViewCell.self, forCellReuseIdentifier: UserDetailTableViewCell.identifier)
        return tableview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.setUpConstraints()
        self.configBackGround()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTableviewProtocols(delegate:UITableViewDelegate, datasource:UITableViewDataSource) {
        self.tableview.delegate = delegate
        self.tableview.dataSource = datasource
    }
    
    func addSubview() {
        self.addSubview(self.tableview)
        self.addSubview(self.titleLabel)
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 24),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            self.titleLabel.heightAnchor.constraint(equalToConstant: 60),
            
            self.tableview.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20),
            self.tableview.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableview.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableview.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
