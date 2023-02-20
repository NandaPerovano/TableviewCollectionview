//
//  PathologyScreen.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 31/01/23.
//

import UIKit

class PathologyScreen: UIView {

    lazy var tableview: UITableView  = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.register(UserDetailPathologyTableViewCell.self, forCellReuseIdentifier: UserDetailPathologyTableViewCell.identifier)
        return tableview
    }()
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
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
        self.addSubview(self.searchBar)
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.searchBar.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.searchBar.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.searchBar.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            
            self.tableview.topAnchor.constraint(equalTo: self.searchBar.bottomAnchor),
            self.tableview.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableview.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableview.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}
