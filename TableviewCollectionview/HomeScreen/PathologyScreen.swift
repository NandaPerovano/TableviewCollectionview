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
        //tableview.register(UserDetailTableViewCell.self, forCellReuseIdentifier: UserDetailTableViewCell.identifier)
        return tableview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.setUpConstraints()
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
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.tableview.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.tableview.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableview.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableview.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}
